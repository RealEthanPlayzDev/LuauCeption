local luau = require("Luau.LuauCeption.Full.0.645")
local ift = luau.wasm.indirect_function_table.data
local cfns = luau.wasm.cfns
local rt = luau.wasm.rt
local memory_at_0 = luau.wasm.memory
local macros = luau.wasm.macros

local function cstr(str)
    local strLen = #str
    local strPtr = cfns.malloc(strLen + 1)
    rt.store.string(memory_at_0, strPtr, str)
    rt.store.i32_n8(memory_at_0, strPtr + strLen, 0)
    return strPtr
end

local function insertCFunction(f: () -> ())
    local ptr = #ift + 1
    ift[ptr] = f
    return ptr
end

local testCFn = insertCFunction(function(L)
    print("lua_State: ", L)
    cfns.lua_pushstring(L, cstr("real"))
    return 1
end)

local L = cfns.luaL_newstate()
cfns.luaL_openlibs(L)
cfns.lua_pushcclosurek(L, testCFn, cstr("luauception.test"), 0, 0)
macros.lua_setglobal(L, cstr("lctest"))

local bc, bcs = luau.luau_compile([[print(lctest(), vector)]])

local bcPtr = cstr(bc)
cfns.luau_load(L, cstr("luauception.chunk"), bcPtr, #bc, 0)
local clRes = cfns.lua_pcall(L, 0, 0, 0)

if (clRes == macros.LUA_OK) then
    print("lua ok")
elseif (clRes == macros.LUA_ERRRUN) then
    local e = macros.lua_tostring(L, -1)
    print(rt.load.string(memory_at_0, e, cfns.strlen(e)))
elseif (clRes == macros.LUA_ERRMEM) then
    print("lua out of memory")
elseif (clRes == macros.LUA_ERRERR) then
    local e = macros.lua_tostring(L, -1)
    print("error func errored ", rt.load.string(memory_at_0, e, cfns.strlen(e)))
end

cfns.lua_close(L)