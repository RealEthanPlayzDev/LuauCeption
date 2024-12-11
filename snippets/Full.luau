--// LuauCeption - Full variant
--// Luau 0.654 (8cc289fae430d9b0c22bde209fe5cf2d01751ff1)

local STUB_WARN = true

local cfns = {
    ["luaL_newstate"] = FUNC_LIST[588],
    ["luau_compile"] = FUNC_LIST[283],
    ["lua_close"] = FUNC_LIST[656],
    ["set_flag"] = FUNC_LIST[1194],
    ["set_all_flags"] = FUNC_LIST[1201],
    ["reset_flags"] = FUNC_LIST[1203],
    ["strlen"] = FUNC_LIST[1159],
    ["malloc"] = FUNC_LIST[1162],
    ["lua_checkstack"] = FUNC_LIST[371],
    ["lua_rawcheckstack"] = FUNC_LIST[372],
    ["lua_xmove"] = FUNC_LIST[373],
    ["lua_xpush"] = FUNC_LIST[374],
    ["lua_newthread"] = FUNC_LIST[375],
    ["lua_mainthread"] = FUNC_LIST[376],
    ["lua_absindex"] = FUNC_LIST[377],
    ["lua_gettop"] = FUNC_LIST[378],
    ["lua_settop"] = FUNC_LIST[379],
    ["lua_remove"] = FUNC_LIST[380],
    ["lua_insert"] = FUNC_LIST[381],
    ["lua_replace"] = FUNC_LIST[382],
    ["lua_pushvalue"] = FUNC_LIST[383],
    ["lua_type"] = FUNC_LIST[384],
    ["lua_typename"] = FUNC_LIST[385],
    ["lua_iscfunction"] = FUNC_LIST[386],
    ["lua_isLfunction"] = FUNC_LIST[387],
    ["lua_isnumber"] = FUNC_LIST[388],
    ["lua_isstring"] = FUNC_LIST[389],
    ["lua_isuserdata"] = FUNC_LIST[390],
    ["lua_rawequal"] = FUNC_LIST[391],
    ["lua_equal"] = FUNC_LIST[392],
    ["lua_lessthan"] = FUNC_LIST[393],
    ["lua_tonumberx"] = FUNC_LIST[394],
    ["lua_tointegerx"] = FUNC_LIST[395],
    ["lua_toboolean"] = FUNC_LIST[397],
    ["lua_tolstring"] = FUNC_LIST[398],
    ["lua_tostringatom"] = FUNC_LIST[399],
    ["lua_namecallatom"] = FUNC_LIST[400],
    ["lua_tovector"] = FUNC_LIST[401],
    ["lua_objlen"] = FUNC_LIST[402],
    ["lua_tocfunction"] = FUNC_LIST[403],
    ["lua_tolightuserdata"] = FUNC_LIST[404],
    ["lua_tolightuserdatatagged"] = FUNC_LIST[405],
    ["lua_touserdata"] = FUNC_LIST[406],
    ["lua_touserdatatagged"] = FUNC_LIST[407],
    ["lua_userdatatag"] = FUNC_LIST[408],
    ["lua_lightuserdatatag"] = FUNC_LIST[409],
    ["lua_tothread"] = FUNC_LIST[410],
    ["lua_tobuffer"] = FUNC_LIST[411],
    ["lua_topointer"] = FUNC_LIST[412],
    ["lua_pushnil"] = FUNC_LIST[413],
    ["lua_pushnumber"] = FUNC_LIST[414],
    ["lua_pushinteger"] = FUNC_LIST[415],
    ["lua_pushunsigned"] = FUNC_LIST[416],
    ["lua_pushvector"] = FUNC_LIST[417],
    ["lua_pushlstring"] = FUNC_LIST[418],
    ["lua_pushstring"] = FUNC_LIST[419],
    ["lua_pushvfstring"] = FUNC_LIST[420],
    ["lua_pushfstringL"] = FUNC_LIST[421],
    ["lua_pushcclosurek"] = FUNC_LIST[422],
    ["lua_pushboolean"] = FUNC_LIST[423],
    ["lua_pushlightuserdatatagged"] = FUNC_LIST[424],
    ["lua_pushthread"] = FUNC_LIST[425],
    ["lua_gettable"] = FUNC_LIST[426],
    ["lua_getfield"] = FUNC_LIST[427],
    ["lua_rawgetfield"] = FUNC_LIST[428],
    ["lua_rawget"] = FUNC_LIST[429],
    ["lua_rawgeti"] = FUNC_LIST[430],
    ["lua_createtable"] = FUNC_LIST[431],
    ["lua_setreadonly"] = FUNC_LIST[432],
    ["lua_getreadonly"] = FUNC_LIST[433],
    ["lua_setsafeenv"] = FUNC_LIST[434],
    ["lua_getmetatable"] = FUNC_LIST[435],
    ["lua_settable"] = FUNC_LIST[437],
    ["lua_setfield"] = FUNC_LIST[438],
    ["lua_rawsetfield"] = FUNC_LIST[439],
    ["lua_rawset"] = FUNC_LIST[440],
    ["lua_rawseti"] = FUNC_LIST[441],
    ["lua_setmetatable"] = FUNC_LIST[442],
    ["lua_setfenv"] = FUNC_LIST[443],
    ["lua_call"] = FUNC_LIST[444],
    ["lua_pcall"] = FUNC_LIST[445],
    ["lua_status"] = FUNC_LIST[447],
    ["lua_costatus"] = FUNC_LIST[448],
    ["lua_getthreaddata"] = FUNC_LIST[449],
    ["lua_setthreaddata"] = FUNC_LIST[450],
    ["lua_gc"] = FUNC_LIST[451],
    ["lua_error"] = FUNC_LIST[452],
    ["lua_next"] = FUNC_LIST[453],
    ["lua_rawiter"] = FUNC_LIST[454],
    ["lua_concat"] = FUNC_LIST[455],
    ["lua_newuserdatatagged"] = FUNC_LIST[456],
    ["lua_newuserdatataggedwithmetatable"] = FUNC_LIST[457],
    ["lua_newuserdatadtor"] = FUNC_LIST[458],
    ["lua_newbuffer"] = FUNC_LIST[459],
    ["lua_getupvalue"] = FUNC_LIST[460],
    ["lua_setupvalue"] = FUNC_LIST[461],
    ["lua_encodepointer"] = FUNC_LIST[462],
    ["lua_ref"] = FUNC_LIST[463],
    ["lua_unref"] = FUNC_LIST[464],
    ["lua_setuserdatatag"] = FUNC_LIST[465],
    ["lua_setuserdatadtor"] = FUNC_LIST[466],
    ["lua_getuserdatadtor"] = FUNC_LIST[467],
    ["lua_setlightuserdataname"] = FUNC_LIST[468],
    ["lua_getlightuserdataname"] = FUNC_LIST[469],
    ["lua_clonefunction"] = FUNC_LIST[470],
    ["lua_cleartable"] = FUNC_LIST[471],
    ["lua_setmemcat"] = FUNC_LIST[472],
    ["lua_totalbytes"] = FUNC_LIST[473],
    ["lua_getallocf"] = FUNC_LIST[474],
    ["luaL_argerrorL"] = FUNC_LIST[475],
    ["luaL_errorL"] = FUNC_LIST[476],
    ["luaL_where"] = FUNC_LIST[477],
    ["luaL_typeerrorL"] = FUNC_LIST[478],
    ["luaL_checkoption"] = FUNC_LIST[479],
    ["luaL_optlstring"] = FUNC_LIST[481],
    ["luaL_checklstring"] = FUNC_LIST[482],
    ["luaL_newmetatable"] = FUNC_LIST[483],
    ["luaL_checkudata"] = FUNC_LIST[484],
    ["luaL_checkbuffer"] = FUNC_LIST[485],
    ["luaL_checkstack"] = FUNC_LIST[486],
    ["luaL_checktype"] = FUNC_LIST[487],
    ["luaL_checkany"] = FUNC_LIST[488],
    ["luaL_checknumber"] = FUNC_LIST[489],
    ["luaL_optnumber"] = FUNC_LIST[490],
    ["luaL_checkboolean"] = FUNC_LIST[491],
    ["luaL_optboolean"] = FUNC_LIST[492],
    ["luaL_checkinteger"] = FUNC_LIST[493],
    ["luaL_optinteger"] = FUNC_LIST[494],
    ["luaL_checkunsigned"] = FUNC_LIST[495],
    ["luaL_optunsigned"] = FUNC_LIST[496],
    ["luaL_checkvector"] = FUNC_LIST[497],
    ["luaL_optvector"] = FUNC_LIST[498],
    ["luaL_getmetafield"] = FUNC_LIST[499],
    ["luaL_callmeta"] = FUNC_LIST[500],
    ["luaL_register"] = FUNC_LIST[501],
    ["luaL_findtable"] = FUNC_LIST[502],
    ["luaL_typename"] = FUNC_LIST[503],
    ["luaL_buffinitsize"] = FUNC_LIST[505],
    ["luaL_prepbuffsize"] = FUNC_LIST[507],
    ["luaL_addlstring"] = FUNC_LIST[508],
    ["luaL_addvalue"] = FUNC_LIST[509],
    ["luaL_addvalueany"] = FUNC_LIST[510],
    ["luaL_tolstring"] = FUNC_LIST[511],
    ["luaL_pushresult"] = FUNC_LIST[512],
    ["luaL_pushresultsize"] = FUNC_LIST[513],
    ["luaopen_base"] = FUNC_LIST[516],
    ["luaopen_bit32"] = FUNC_LIST[547],
    ["luaopen_buffer"] = FUNC_LIST[563],
    ["luaopen_coroutine"] = FUNC_LIST[299],
    ["luaopen_debug"] = FUNC_LIST[544],
    ["lua_getargument"] = FUNC_LIST[327],
    ["lua_getlocal"] = FUNC_LIST[328],
    ["lua_setlocal"] = FUNC_LIST[329],
    ["lua_stackdepth"] = FUNC_LIST[330],
    ["lua_getinfo"] = FUNC_LIST[331],
    ["lua_singlestep"] = FUNC_LIST[344],
    ["lua_breakpoint"] = FUNC_LIST[345],
    ["lua_getcoverage"] = FUNC_LIST[347],
    ["lua_debugtrace"] = FUNC_LIST[350],
    ["lua_resume"] = FUNC_LIST[359],
    ["lua_resumeerror"] = FUNC_LIST[362],
    ["lua_yield"] = FUNC_LIST[363],
    ["lua_break"] = FUNC_LIST[364],
    ["lua_isyieldable"] = FUNC_LIST[365],
    ["luaL_openlibs"] = FUNC_LIST[585],
    ["luaL_sandbox"] = FUNC_LIST[586],
    ["luaL_sandboxthread"] = FUNC_LIST[587],
    ["lua_clock"] = FUNC_LIST[647],
    ["lua_resetthread"] = FUNC_LIST[651],
    ["lua_newstate"] = FUNC_LIST[653],
    ["free"] = FUNC_LIST[1164],
    ["luaopen_table"] = FUNC_LIST[709],
    ["luaopen_os"] = FUNC_LIST[642],
    ["luaopen_string"] = FUNC_LIST[662],
    ["luaopen_math"] = FUNC_LIST[590],
    ["luaopen_utf8"] = FUNC_LIST[739],
    ["luaopen_vector"] = FUNC_LIST[746],
    ["lua_isthreadreset"] = FUNC_LIST[652],
    ["luau_load"] = FUNC_LIST[857],
    ["_emscripten_timeout"] = FUNC_LIST[1432],
    ["setThrew"] = FUNC_LIST[1174],
    ["_emscripten_tempret_set"] = FUNC_LIST[1178],
    ["_emscripten_stack_restore"] = FUNC_LIST[1183],
    ["emscripten_stack_get_current"] = FUNC_LIST[1185],
}

local NOW_TIME = os.time() * 1000
local FILE_MAP = { {}, {} }
local timers = {}
local noExitRuntime = true
local rtKeepAliveCounter = 0
local abortWasm = false
local exitStatus = nil

local function fd_flush(file)
    local final = table.concat(file)
    local last = 1
    for index, data in string.gmatch(final, '()([^\n]*)\n') do
        last = index + #data
        print(data)
    end
    table.clear(file)
    file[1] = string.sub(final, last + 1)
end

--// __cxa_throw
FUNC_LIST[0] = function(except, info, _dtor)
    local info = CException.new(info)
    assert(false, `exception occured in c: {info:_UndecoratedName()} ({info:vfptr()})`)
end

--// invoke_vii
FUNC_LIST[1] = invokeHandler(1)

--// _abort_js
FUNC_LIST[2] = function(reason)
    assert(false, `Aborted({reason})`)
end

--// emscripten_memcpy_js (emscripten_memcpy_big)
FUNC_LIST[3] = function(destination, source, size)
    rt.store.copy(memory_at_0, destination, memory_at_0, source, size)
end

--// emscripten_date_now
FUNC_LIST[4] = function()
    return NOW_TIME + os.clock() * 1000
end

FUNC_LIST[5] = stub("_tzset_js", 0)

--// fd_write
FUNC_LIST[6] = function(fd, list, count, ret_pointer)
    local file = FILE_MAP[fd]
    if not file then return 8 end
    local total = 0
    for pointer = list, list + (count - 1) * 8, 8 do
        local start = rt_load_i32(memory_at_0, pointer)
        local len = rt_load_i32(memory_at_0, pointer + 4)
        local read = rt_load_string(memory_at_0, start, len)
        table.insert(file, read)
        total = total + #read
    end
    rt_store_i32(memory_at_0, ret_pointer, total)
    fd_flush(file)
    return 0
end

--// emscripten_resize_heap
FUNC_LIST[7] = function(_requestedSize)
    assert(false, "OOM")
end

--// _emscripten_throw_longjmp
FUNC_LIST[8] = function()
    assert(false, "Infinity")
end

--// _setitimer_js
FUNC_LIST[9] = function(which, timeoutMs)
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
        -- callUserCallback(() => __emscripten_timeout(which, _emscripten_get_now()));
        if (abortWasm) then return end
        local success, e = pcall(function()
            cfns.__emscripten_timeout(which, os.clock())
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
FUNC_LIST[10] = function()
    noExitRuntime = false
    rtKeepAliveCounter = 0
    return
end

--// proc_exit
FUNC_LIST[11] = function(code)
    exitStatus = code
    if (not (noExitRuntime or rtKeepAliveCounter > 0)) then
        abortWasm = true
    end
    assert(false, `ExitStatus: Program exited with code ${code}`)
end

--// _localtime_js
FUNC_LIST[12] = function(timer, buf)
    local tdata = os.date("*t", timer)

    --// https://en.cppreference.com/w/cpp/chrono/c/tm
    local tm = cfns.malloc(36)
    rt_store_i32(memory_at_0, tm + 0, tdata.sec) --// int tm_sec
    rt_store_i32(memory_at_0, tm + 4, tdata.min) --// int tm_min
    rt_store_i32(memory_at_0, tm + 8, tdata.hour) --// int tm_hour
    rt_store_i32(memory_at_0, tm + 12, tdata.day) --// int tm_mday
    rt_store_i32(memory_at_0, tm + 16, tdata.month) --// int tm_mon
    rt_store_i32(memory_at_0, tm + 20, tdata.year) --// int tm_year
    rt_store_i32(memory_at_0, tm + 24, tdata.wday) --// int tm_wday
    rt_store_i32(memory_at_0, tm + 28, tdata.yday) --// int tm_yday
    rt_store_i32(memory_at_0, tm + 32, if tdata.isdst then 1 else 0) --// int tm_isdst

    --// https://en.cppreference.com/w/cpp/chrono/c/tm
    if (buf ~= 0) then
        rt_store_i32(memory_at_0, buf + 0, tdata.sec) --// int tm_sec
        rt_store_i32(memory_at_0, buf + 4, tdata.min) --// int tm_min
        rt_store_i32(memory_at_0, buf + 8, tdata.hour) --// int tm_hour
        rt_store_i32(memory_at_0, buf + 12, tdata.day) --// int tm_mday
        rt_store_i32(memory_at_0, buf + 16, tdata.month) --// int tm_mon
        rt_store_i32(memory_at_0, buf + 20, tdata.year) --// int tm_year
        rt_store_i32(memory_at_0, buf + 24, tdata.wday) --// int tm_wday
        rt_store_i32(memory_at_0, buf + 28, tdata.yday) --// int tm_yday
        rt_store_i32(memory_at_0, buf + 32, if tdata.isdst then 1 else 0) --// int tm_isdst
    end

    return tm
end

--// _gmtime_js
FUNC_LIST[13] = function(timer, buf)
    local tdata = os.date("!*t", timer)

    --// https://en.cppreference.com/w/cpp/chrono/c/tm
    local tm = cfns.malloc(36)
    rt_store_i32(memory_at_0, tm + 0, tdata.sec) --// int tm_sec
    rt_store_i32(memory_at_0, tm + 4, tdata.min) --// int tm_min
    rt_store_i32(memory_at_0, tm + 8, tdata.hour) --// int tm_hour
    rt_store_i32(memory_at_0, tm + 12, tdata.day) --// int tm_mday
    rt_store_i32(memory_at_0, tm + 16, tdata.month) --// int tm_mon
    rt_store_i32(memory_at_0, tm + 20, tdata.year) --// int tm_year
    rt_store_i32(memory_at_0, tm + 24, tdata.wday) --// int tm_wday
    rt_store_i32(memory_at_0, tm + 28, tdata.yday) --// int tm_yday
    rt_store_i32(memory_at_0, tm + 32, if tdata.isdst then 1 else 0) --// int tm_isdst

    --// https://en.cppreference.com/w/cpp/chrono/c/tm
    if (buf ~= 0) then
        rt_store_i32(memory_at_0, buf + 0, tdata.sec) --// int tm_sec
        rt_store_i32(memory_at_0, buf + 4, tdata.min) --// int tm_min
        rt_store_i32(memory_at_0, buf + 8, tdata.hour) --// int tm_hour
        rt_store_i32(memory_at_0, buf + 12, tdata.day) --// int tm_mday
        rt_store_i32(memory_at_0, buf + 16, tdata.month) --// int tm_mon
        rt_store_i32(memory_at_0, buf + 20, tdata.year) --// int tm_year
        rt_store_i32(memory_at_0, buf + 24, tdata.wday) --// int tm_wday
        rt_store_i32(memory_at_0, buf + 28, tdata.yday) --// int tm_yday
        rt_store_i32(memory_at_0, buf + 32, if tdata.isdst then 1 else 0) --// int tm_isdst
    end

    return tm
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

local function luau_run(bc: string, chunkName: string?, safeEnv: boolean?)
    --// Bytecode
    local bcPtr = cstr(bc)

    --// Chunk name
    local cnPtr = cstr(chunkName or "LuauCeptionChunk")

    --// State setup
    local L = cfns.luaL_newstate()
    cfns.luaL_openlibs(L);
    if (safeEnv) then cfns.luaL_sandbox(L) end

    --// Load bytecode
    local ldRes = cfns.luau_load(L, cnPtr, bcPtr, #bc, 0)

    --// Cleanup unused stuff
    cfns.free(bcPtr)
    cfns.free(cnPtr)

    --// Check if load succeded
    if (ldRes ~= 0) then cfns.lua_close(L) end
    assert(ldRes == 0, "failed to load luau bytecode")

    --// Call function
    local clRes = cfns.lua_pcall(L, 0, 0, 0)

    --// Cleanup state
    cfns.lua_close(L)

    return clRes == 0
end

local function luau_load(bc: string, chunkName: string?, safeEnv: boolean?): () -> (boolean)
    return function()
        return luau_run(bc, chunkName, safeEnv)
    end
end

return {
    luau_compile = luau_compile,
    luau_run = luau_run,
    luau_load = luau_load,
    luau_setflag = luau_setflag,
    luau_setallflags = luau_setallflags,
    luau_resetflags = luau_resetflags,
    macros = macros,
    wasm = {
        start_time = NOW_TIME,
        file_map = FILE_MAP,
        rt = rt,
        cfns = cfns,
        indirect_function_table = TABLE_LIST[0],
        memory = MEMORY_LIST[0],
        insertCFunction = insertCFunction,
        cstr = cstr
    }
}