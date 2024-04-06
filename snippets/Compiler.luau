--// LuauCeption - Compiler variant
--// Luau 0.620 (67e16cba1826351e28d0bd193cedea14d01cbbee)

local STUB_WARN = true

local cfns = {
    ["luau_compile"] = FUNC_LIST[241],
    ["set_flag"] = FUNC_LIST[534],
    ["set_all_flags"] = FUNC_LIST[541],
    ["reset_flags"] = FUNC_LIST[543],
    ["strlen"] = FUNC_LIST[504],
    ["malloc"] = FUNC_LIST[513],
    ["free"] = FUNC_LIST[515],
}

run_init_code()
memory_at_0 = MEMORY_LIST[0]

--// __cxa_throw
FUNC_LIST[0] = function(except, _info, _dtor)
    assert(false, "exception occured in c")
end

--// emscripten_memcpy_js (emscripten_memcpy_big)
FUNC_LIST[1] = function(destination, source, size)
    rt.store.copy(memory_at_0, destination, memory_at_0, source, size)
end

--// emscripten_resize_heap
FUNC_LIST[2] = function(_requestedSize)
    assert(false, "OOM")
end

--// abort
FUNC_LIST[3] = function(reason)
    assert(false, `Aborted({reason})`)
end

local function luau_compile(src: string, optLevel: number?, dbgLevel: number?, covLevel: number?)
    --// Source string
	local srcLen = #src
    local srcPtr = cfns.malloc(srcLen + 1)
    rt.store.string(memory_at_0, srcPtr, src)
    rt.store.i32_n8(memory_at_0, srcPtr + srcLen, 0)

    --// Struct lua_CompileOptions (see luau/Compiler/include/luacode.h)
    local compileOptsPtr = cfns.malloc(28)
    rt.store.i32(memory_at_0, compileOptsPtr + 0, optLevel or 1) --// int optimizationLevel
    rt.store.i32(memory_at_0, compileOptsPtr + 4, dbgLevel or 1) --// int debugLevel
    rt.store.i32(memory_at_0, compileOptsPtr + 8, covLevel or 0) --// int coverageLevel
    rt.store.i32(memory_at_0, compileOptsPtr + 12, 0) --// const char* vectorLib
    rt.store.i32(memory_at_0, compileOptsPtr + 16, 0) --// const char* vectorCtor
    rt.store.i32(memory_at_0, compileOptsPtr + 20, 0) --// const char* vectorType
    rt.store.i32(memory_at_0, compileOptsPtr + 24, 0) --// const char* const* mutableGlobals

    --// Bytecode size
    local bcSizePtr = cfns.malloc(8)

    --// Compile
    local bcPtr = cfns.luau_compile(srcPtr, srcLen, compileOptsPtr, bcSizePtr)
    local bcSize = rt.load.i32(memory_at_0, bcSizePtr)
    local bc = rt.load.string(memory_at_0, bcPtr, bcSize)

    --// Cleanup
    cfns.free(srcPtr)
	cfns.free(bcPtr)
    cfns.free(bcSizePtr)
    cfns.free(compileOptsPtr)

    return bc, bcSize
end

return {
	luau_compile = luau_compile,
    luau_setflag = luau_setflag,
    luau_setallflags = luau_setallflags,
    luau_resetflags = luau_resetflags,
	wasm = {
		rt = rt,
		cfns = cfns,
		indirect_function_table = TABLE_LIST[0],
		memory = MEMORY_LIST[0]
	}
}