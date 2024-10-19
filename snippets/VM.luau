--// LuauCeption - VM variant
--// Luau 0.648 (e491128f95ceea762171525fccbb557b84811e1b)

local STUB_WARN = true

local cfns = {
    ["luaL_newstate"] = FUNC_LIST[314],
    ["lua_close"] = FUNC_LIST[382],
    ["set_flag"] = FUNC_LIST[657],
    ["set_all_flags"] = FUNC_LIST[665],
    ["reset_flags"] = FUNC_LIST[667],
    ["strlen"] = FUNC_LIST[622],
    ["lua_checkstack"] = FUNC_LIST[85],
    ["lua_rawcheckstack"] = FUNC_LIST[86],
    ["lua_xmove"] = FUNC_LIST[87],
    ["lua_xpush"] = FUNC_LIST[88],
    ["lua_newthread"] = FUNC_LIST[89],
    ["lua_mainthread"] = FUNC_LIST[90],
    ["lua_absindex"] = FUNC_LIST[91],
    ["lua_gettop"] = FUNC_LIST[92],
    ["lua_settop"] = FUNC_LIST[93],
    ["lua_remove"] = FUNC_LIST[94],
    ["lua_insert"] = FUNC_LIST[95],
    ["lua_replace"] = FUNC_LIST[96],
    ["lua_pushvalue"] = FUNC_LIST[97],
    ["lua_type"] = FUNC_LIST[98],
    ["lua_typename"] = FUNC_LIST[99],
    ["lua_iscfunction"] = FUNC_LIST[100],
    ["lua_isLfunction"] = FUNC_LIST[101],
    ["lua_isnumber"] = FUNC_LIST[102],
    ["lua_isstring"] = FUNC_LIST[103],
    ["lua_isuserdata"] = FUNC_LIST[104],
    ["lua_rawequal"] = FUNC_LIST[105],
    ["lua_equal"] = FUNC_LIST[106],
    ["lua_lessthan"] = FUNC_LIST[107],
    ["lua_tonumberx"] = FUNC_LIST[108],
    ["lua_tointegerx"] = FUNC_LIST[109],
    ["lua_toboolean"] = FUNC_LIST[111],
    ["lua_tolstring"] = FUNC_LIST[112],
    ["lua_tostringatom"] = FUNC_LIST[113],
    ["lua_namecallatom"] = FUNC_LIST[114],
    ["lua_tovector"] = FUNC_LIST[115],
    ["lua_objlen"] = FUNC_LIST[116],
    ["lua_tocfunction"] = FUNC_LIST[117],
    ["lua_tolightuserdata"] = FUNC_LIST[118],
    ["lua_tolightuserdatatagged"] = FUNC_LIST[119],
    ["lua_touserdata"] = FUNC_LIST[120],
    ["lua_touserdatatagged"] = FUNC_LIST[121],
    ["lua_userdatatag"] = FUNC_LIST[122],
    ["lua_lightuserdatatag"] = FUNC_LIST[123],
    ["lua_tothread"] = FUNC_LIST[124],
    ["lua_tobuffer"] = FUNC_LIST[125],
    ["lua_topointer"] = FUNC_LIST[126],
    ["lua_pushnil"] = FUNC_LIST[127],
    ["lua_pushnumber"] = FUNC_LIST[128],
    ["lua_pushinteger"] = FUNC_LIST[129],
    ["lua_pushunsigned"] = FUNC_LIST[130],
    ["lua_pushvector"] = FUNC_LIST[131],
    ["lua_pushlstring"] = FUNC_LIST[132],
    ["lua_pushstring"] = FUNC_LIST[133],
    ["lua_pushvfstring"] = FUNC_LIST[134],
    ["lua_pushfstringL"] = FUNC_LIST[135],
    ["lua_pushcclosurek"] = FUNC_LIST[136],
    ["lua_pushboolean"] = FUNC_LIST[137],
    ["lua_pushlightuserdatatagged"] = FUNC_LIST[138],
    ["lua_pushthread"] = FUNC_LIST[139],
    ["lua_gettable"] = FUNC_LIST[140],
    ["lua_getfield"] = FUNC_LIST[141],
    ["lua_rawgetfield"] = FUNC_LIST[142],
    ["lua_rawget"] = FUNC_LIST[143],
    ["lua_rawgeti"] = FUNC_LIST[144],
    ["lua_createtable"] = FUNC_LIST[145],
    ["lua_setreadonly"] = FUNC_LIST[146],
    ["lua_getreadonly"] = FUNC_LIST[147],
    ["lua_setsafeenv"] = FUNC_LIST[148],
    ["lua_getmetatable"] = FUNC_LIST[149],
    ["lua_settable"] = FUNC_LIST[151],
    ["lua_setfield"] = FUNC_LIST[152],
    ["lua_rawsetfield"] = FUNC_LIST[153],
    ["lua_rawset"] = FUNC_LIST[154],
    ["lua_rawseti"] = FUNC_LIST[155],
    ["lua_setmetatable"] = FUNC_LIST[156],
    ["lua_setfenv"] = FUNC_LIST[157],
    ["lua_call"] = FUNC_LIST[158],
    ["lua_pcall"] = FUNC_LIST[159],
    ["lua_status"] = FUNC_LIST[161],
    ["lua_costatus"] = FUNC_LIST[162],
    ["lua_getthreaddata"] = FUNC_LIST[163],
    ["lua_setthreaddata"] = FUNC_LIST[164],
    ["lua_gc"] = FUNC_LIST[165],
    ["lua_error"] = FUNC_LIST[166],
    ["lua_next"] = FUNC_LIST[167],
    ["lua_rawiter"] = FUNC_LIST[168],
    ["lua_concat"] = FUNC_LIST[169],
    ["lua_newuserdatatagged"] = FUNC_LIST[170],
    ["lua_newuserdatadtor"] = FUNC_LIST[171],
    ["lua_newbuffer"] = FUNC_LIST[172],
    ["lua_getupvalue"] = FUNC_LIST[173],
    ["lua_setupvalue"] = FUNC_LIST[174],
    ["lua_encodepointer"] = FUNC_LIST[175],
    ["lua_ref"] = FUNC_LIST[176],
    ["lua_unref"] = FUNC_LIST[177],
    ["lua_setuserdatatag"] = FUNC_LIST[178],
    ["lua_setuserdatadtor"] = FUNC_LIST[179],
    ["lua_getuserdatadtor"] = FUNC_LIST[180],
    ["lua_setlightuserdataname"] = FUNC_LIST[181],
    ["lua_getlightuserdataname"] = FUNC_LIST[182],
    ["lua_clonefunction"] = FUNC_LIST[183],
    ["lua_cleartable"] = FUNC_LIST[184],
    ["lua_setmemcat"] = FUNC_LIST[185],
    ["lua_totalbytes"] = FUNC_LIST[186],
    ["lua_getallocf"] = FUNC_LIST[187],
    ["luaL_argerrorL"] = FUNC_LIST[188],
    ["luaL_errorL"] = FUNC_LIST[189],
    ["luaL_where"] = FUNC_LIST[190],
    ["luaL_typeerrorL"] = FUNC_LIST[191],
    ["luaL_checkoption"] = FUNC_LIST[192],
    ["luaL_optlstring"] = FUNC_LIST[194],
    ["luaL_checklstring"] = FUNC_LIST[195],
    ["luaL_newmetatable"] = FUNC_LIST[196],
    ["luaL_checkudata"] = FUNC_LIST[197],
    ["luaL_checkbuffer"] = FUNC_LIST[198],
    ["luaL_checkstack"] = FUNC_LIST[199],
    ["luaL_checktype"] = FUNC_LIST[200],
    ["luaL_checkany"] = FUNC_LIST[201],
    ["luaL_checknumber"] = FUNC_LIST[202],
    ["luaL_optnumber"] = FUNC_LIST[203],
    ["luaL_checkboolean"] = FUNC_LIST[204],
    ["luaL_optboolean"] = FUNC_LIST[205],
    ["luaL_checkinteger"] = FUNC_LIST[206],
    ["luaL_optinteger"] = FUNC_LIST[207],
    ["luaL_checkunsigned"] = FUNC_LIST[208],
    ["luaL_optunsigned"] = FUNC_LIST[209],
    ["luaL_checkvector"] = FUNC_LIST[210],
    ["luaL_optvector"] = FUNC_LIST[211],
    ["luaL_getmetafield"] = FUNC_LIST[212],
    ["luaL_callmeta"] = FUNC_LIST[213],
    ["luaL_register"] = FUNC_LIST[214],
    ["luaL_findtable"] = FUNC_LIST[215],
    ["luaL_typename"] = FUNC_LIST[216],
    ["luaL_buffinitsize"] = FUNC_LIST[218],
    ["luaL_prepbuffsize"] = FUNC_LIST[220],
    ["luaL_addlstring"] = FUNC_LIST[221],
    ["luaL_addvalue"] = FUNC_LIST[222],
    ["luaL_addvalueany"] = FUNC_LIST[223],
    ["luaL_tolstring"] = FUNC_LIST[224],
    ["luaL_pushresult"] = FUNC_LIST[225],
    ["luaL_pushresultsize"] = FUNC_LIST[226],
    ["luaopen_base"] = FUNC_LIST[229],
    ["luaopen_bit32"] = FUNC_LIST[273],
    ["luaopen_buffer"] = FUNC_LIST[289],
    ["luaopen_coroutine"] = FUNC_LIST[257],
    ["luaopen_debug"] = FUNC_LIST[270],
    ["lua_getargument"] = FUNC_LIST[41],
    ["lua_getlocal"] = FUNC_LIST[42],
    ["lua_setlocal"] = FUNC_LIST[43],
    ["lua_stackdepth"] = FUNC_LIST[44],
    ["lua_getinfo"] = FUNC_LIST[45],
    ["lua_singlestep"] = FUNC_LIST[58],
    ["lua_breakpoint"] = FUNC_LIST[59],
    ["lua_getcoverage"] = FUNC_LIST[61],
    ["lua_debugtrace"] = FUNC_LIST[64],
    ["lua_resume"] = FUNC_LIST[73],
    ["lua_resumeerror"] = FUNC_LIST[76],
    ["lua_yield"] = FUNC_LIST[77],
    ["lua_break"] = FUNC_LIST[78],
    ["lua_isyieldable"] = FUNC_LIST[79],
    ["luaL_openlibs"] = FUNC_LIST[311],
    ["luaL_sandbox"] = FUNC_LIST[312],
    ["luaL_sandboxthread"] = FUNC_LIST[313],
    ["lua_clock"] = FUNC_LIST[373],
    ["lua_newstate"] = FUNC_LIST[379],
    ["free"] = FUNC_LIST[629],
    ["lua_resetthread"] = FUNC_LIST[377],
    ["luaopen_table"] = FUNC_LIST[435],
    ["luaopen_os"] = FUNC_LIST[368],
    ["luaopen_string"] = FUNC_LIST[388],
    ["luaopen_math"] = FUNC_LIST[316],
    ["luaopen_utf8"] = FUNC_LIST[465],
    ["lua_isthreadreset"] = FUNC_LIST[378],
    ["luau_load"] = FUNC_LIST[557],
    ["_emscripten_timeout"] = FUNC_LIST[813],
    ["malloc"] = FUNC_LIST[627],
    ["setThrew"] = FUNC_LIST[637],
    ["_emscripten_stack_restore"] = FUNC_LIST[646],
    ["emscripten_stack_get_current"] = FUNC_LIST[648],
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
    rt_store_copy(memory_at_0, destination, memory_at_0, source, size)
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