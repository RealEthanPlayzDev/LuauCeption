--// LuauCeption - Compiler variant
--// Luau 0.654 (8cc289fae430d9b0c22bde209fe5cf2d01751ff1)

local STUB_WARN = true

local cfns = {
    ["luau_compile"] = FUNC_LIST[276],
    ["set_flag"] = FUNC_LIST[575],
    ["set_all_flags"] = FUNC_LIST[582],
    ["reset_flags"] = FUNC_LIST[584],
    ["strlen"] = FUNC_LIST[545],
    ["malloc"] = FUNC_LIST[552],
    ["_emscripten_timeout"] = FUNC_LIST[770],
    ["free"] = FUNC_LIST[554],
    ["_emscripten_stack_restore"] = FUNC_LIST[564],
    ["emscripten_stack_get_current"] = FUNC_LIST[566],
}

local timers = {}
local noExitRuntime = true
local rtKeepAliveCounter = 0
local abortWasm = false
local exitStatus = nil

--// __cxa_throw
FUNC_LIST[0] = function(except, info, _dtor)
    local info = CException.new(info)
    assert(false, `exception occured in c: {info:_UndecoratedName()} ({info:vfptr()})`)
end

--// emscripten_memcpy_js (emscripten_memcpy_big)
FUNC_LIST[1] = function(destination, source, size)
    rt_store_copy(memory_at_0, destination, memory_at_0, source, size)
end

--// emscripten_resize_heap
FUNC_LIST[2] = function(_requestedSize)
    assert(false, "OOM")
end

--// _abort_js
FUNC_LIST[3] = function(reason)
    assert(false, `Aborted({reason})`)
end

--// _setitimer_js
FUNC_LIST[4] = function(which, timeoutMs)
    if (not task) then
        print("program is using _setitimer_js but task library not found, timers will NOT work.")
        return 0
    end

    if (timers[which]) then
        task.cancel(timers[which].thread)
        timers[which] = nil
    end
    if (not timeoutMs or timeoutMs == 0) then return 0 end

    local t = task.delay(function()
        timers[which] = nil
        if (abortWasm) then return end
        local success, e = pcall(function()
            cfns._emscripten_timeout(which, os.clock())
            if (not (noExitRuntime or rtKeepAliveCounter > 0)) then
                local success, e = pcall(FUNC_LIST[6], exitStatus)
                if (not success) then
                    if (string.match(e, "ExitStatus:" ~= nil or e == "unwind")) then
                        return exitStatus
                    end
                    assert(false, e)
                end
            end
        end)

        if (not success) then
            if (string.match(e, "ExitStatus:" ~= nil or e == "unwind")) then
                return
            end
            assert(false, e)
        end
    end, timeoutMs / 1000)

    timers[which] = { thread = t, timeoutMs = timeoutMs }
    return 0
end

--// _emscripten_runtime_keepalive_clear
FUNC_LIST[5] = function()
    noExitRuntime = false
    rtKeepAliveCounter = 0
    return
end

--// proc_exit
FUNC_LIST[6] = function(code)
    exitStatus = code
    if (not (noExitRuntime or rtKeepAliveCounter > 0)) then
        abortWasm = true
    end
    assert(false, `ExitStatus: Program exited with code ${code}`)
end

run_init_code()
memory_at_0 = MEMORY_LIST[0]

local function luau_compile(src: string, optLevel: number?, dbgLevel: number?, typInfLevel: number?, covLevel: number?)
    --// Source string
    local srcPtr = cstr(src)

    --// Struct lua_CompileOptions (see luau/Compiler/include/luacode.h)
    local compileOptsPtr = cfns.malloc(36)
    rt_store_i32(memory_at_0, compileOptsPtr + 0, optLevel or 1) --// int optimizationLevel
    rt_store_i32(memory_at_0, compileOptsPtr + 4, dbgLevel or 1) --// int debugLevel
    rt_store_i32(memory_at_0, compileOptsPtr + 8, typInfLevel or 0) --// int typeInfoLevel
    rt_store_i32(memory_at_0, compileOptsPtr + 12, covLevel or 0) --// int coverageLevel
    rt_store_i32(memory_at_0, compileOptsPtr + 16, 0) --// const char* vectorLib
    rt_store_i32(memory_at_0, compileOptsPtr + 20, 0) --// const char* vectorCtor
    rt_store_i32(memory_at_0, compileOptsPtr + 24, 0) --// const char* vectorType
    rt_store_i32(memory_at_0, compileOptsPtr + 28, 0) --// const char* const* mutableGlobals
    rt_store_i32(memory_at_0, compileOptsPtr + 32, 0) --// const char* const* userdataTypes

    --// Bytecode size
    local bcSizePtr = cfns.malloc(8)

    --// Compile
    local bcPtr = cfns.luau_compile(srcPtr, #src, compileOptsPtr, bcSizePtr)
    local bcSize = rt_load_i32(memory_at_0, bcSizePtr)
    local bc = rt_load_string(memory_at_0, bcPtr, bcSize)

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
    macros = macros,
	wasm = {
		rt = rt,
		cfns = cfns,
		indirect_function_table = TABLE_LIST[0],
		memory = MEMORY_LIST[0],
        insertCFunction = insertCFunction,
        cstr = cstr
	}
}