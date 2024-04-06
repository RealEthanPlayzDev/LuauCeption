#include <string>
#include "luacode.h"
#include "LuauCeptionFlags.h"

int main() {
    std::string src = "print'Hello World'";
    size_t bcs;
    luau_compile(src.c_str(), src.size(), nullptr, &bcs);
    return 0;
}