#include <string>
#include <vector>
#include "Luau/ModuleResolver.h"
#include "Luau/TypeInfer.h"
#include "Luau/BuiltinDefinitions.h"
#include "Luau/Frontend.h"
#include "Luau/TypeAttach.h"
#include "Luau/Transpiler.h"
#include "LuauCeptionFlags.h"

struct VirtualFile {
    const char* name;
    const char* source;
};

extern "C" const char* read_file(std::vector<VirtualFile> *files, const char *name) {
    for (auto file : *files) {
        if (strcmp(file.name, name)) {
            return file.source;
        }
    }
    return 0;
}

struct CeptionFileResolver : Luau::FileResolver {
    std::vector<VirtualFile> *files;
    CeptionFileResolver(std::vector<VirtualFile> *filesptr) {
        files = filesptr;
    }

    std::optional<Luau::SourceCode> readSource(const Luau::ModuleName &name) override {
        const char* contents = read_file(files, name.c_str());
        if (!contents) return std::nullopt;
        return Luau::SourceCode{ contents, Luau::SourceCode::Module };
    }

    std::optional<Luau::ModuleInfo> resolveModule(const Luau::ModuleInfo* context, Luau::AstExpr* node) override {
        if (Luau::AstExprConstantString* expr = node->as<Luau::AstExprConstantString>()) {
            Luau::ModuleName name = std::string(expr->value.data, expr->value.size) + ".luau";
            if (!read_file(files, name.c_str())) {
                name = std::string(expr->value.data, expr->value.size) + ".lua";
            }
            return {{name}};
        }
        return std::nullopt;
    }

    std::string getHumanReadableModuleName(const Luau::ModuleName& name) const override {
        return name;
    }
};

struct CeptionConfigResolver : Luau::ConfigResolver {
    Luau::Config defaultConfig;

    CeptionConfigResolver(Luau::Mode mode) {
        defaultConfig.mode = mode;
    }

    const Luau::Config& getConfig(const Luau::ModuleName& name) const override {
        return defaultConfig;
    }

    const Luau::Config& readConfigRec(const std::string& path) const {
        return defaultConfig;
    }
};

extern "C" {
void set_file(std::vector<VirtualFile> *files, const char* name, const char* source) {
    files->push_back(*(new VirtualFile{ name, source }));
    return;
}

void create_analysis(std::vector<VirtualFile> *files, CeptionFileResolver *fileResolver, CeptionConfigResolver *configResolver, Luau::FrontendOptions *frontendOptions, Luau::Frontend *frontend) {
    files = new std::vector<VirtualFile>();
    fileResolver = new CeptionFileResolver(files);
    configResolver = new CeptionConfigResolver(Luau::Mode::Nonstrict);

    frontendOptions = new Luau::FrontendOptions();
    frontendOptions->retainFullTypeGraphs = false;
    frontendOptions->runLintChecks = true;

    frontend = new Luau::Frontend(fileResolver, configResolver, *frontendOptions);
    Luau::registerBuiltinGlobals(*frontend, frontend->globals);
    Luau::freeze(frontend->globals.globalTypes);

    return;
}

void destroy_analysis(std::vector<VirtualFile> *files, CeptionFileResolver *fileResolver, CeptionConfigResolver *configResolver, Luau::FrontendOptions *frontendOptions, Luau::Frontend *frontend) {
    delete frontend;
    delete frontendOptions;
    delete configResolver;
    delete fileResolver;
    delete files;
    return;
}
}

int main() {
    std::vector<VirtualFile> *files;
    CeptionFileResolver *fileResolver;
    CeptionConfigResolver *configResolver;
    Luau::FrontendOptions *frontendOptions;
    Luau::Frontend *frontend;

    create_analysis(files, fileResolver, configResolver, frontendOptions, frontend);
    set_file(files, "a.luau", "x=5");

    std::vector<Luau::ModuleName> checkedModules;
    for (auto file : *files) {
        frontend->queueModuleCheck(file.name);
    }

    frontend->checkQueuedModules(std::nullopt, [&](std::function<void()> check) {
        check();
        return;
    });

    destroy_analysis(files, fileResolver, configResolver, frontendOptions, frontend);

    return 0; 
}