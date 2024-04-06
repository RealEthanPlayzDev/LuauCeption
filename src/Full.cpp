#include <string>
#include "lua.h"
#include "lualib.h"
#include "luacode.h"
#include "LuauCeptionFlags.h"

int main() {
    lua_State* l = luaL_newstate();
    std::string src = "print'Hello World'";
    size_t bcs;
    luau_compile(src.c_str(), src.size(), nullptr, &bcs);
    lua_close(l);
    return 0;
}