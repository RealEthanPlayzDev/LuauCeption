--// LuauCeption - Full variant
--// Luau 0.621 (9c2146288d78e8beacefe692ae1149fec066440e)

local STUB_WARN = true

local cfns = {
    ["luaL_newstate"] = FUNC_LIST[554],
    ["luau_compile"] = FUNC_LIST[249],
    ["lua_close"] = FUNC_LIST[621],
    ["set_flag"] = FUNC_LIST[1119],
    ["set_all_flags"] = FUNC_LIST[1126],
    ["reset_flags"] = FUNC_LIST[1128],
    ["strlen"] = FUNC_LIST[1084],
    ["malloc"] = FUNC_LIST[1089],
    ["lua_checkstack"] = FUNC_LIST[325],
    ["lua_rawcheckstack"] = FUNC_LIST[326],
    ["lua_xmove"] = FUNC_LIST[327],
    ["lua_xpush"] = FUNC_LIST[328],
    ["lua_newthread"] = FUNC_LIST[329],
    ["lua_mainthread"] = FUNC_LIST[330],
    ["lua_absindex"] = FUNC_LIST[331],
    ["lua_gettop"] = FUNC_LIST[332],
    ["lua_settop"] = FUNC_LIST[333],
    ["lua_remove"] = FUNC_LIST[334],
    ["lua_insert"] = FUNC_LIST[335],
    ["lua_replace"] = FUNC_LIST[336],
    ["lua_pushvalue"] = FUNC_LIST[337],
    ["lua_type"] = FUNC_LIST[338],
    ["lua_typename"] = FUNC_LIST[339],
    ["lua_iscfunction"] = FUNC_LIST[340],
    ["lua_isLfunction"] = FUNC_LIST[341],
    ["lua_isnumber"] = FUNC_LIST[342],
    ["lua_isstring"] = FUNC_LIST[343],
    ["lua_isuserdata"] = FUNC_LIST[344],
    ["lua_rawequal"] = FUNC_LIST[345],
    ["lua_equal"] = FUNC_LIST[346],
    ["lua_lessthan"] = FUNC_LIST[347],
    ["lua_tonumberx"] = FUNC_LIST[348],
    ["lua_tointegerx"] = FUNC_LIST[349],
    ["lua_toboolean"] = FUNC_LIST[351],
    ["lua_tolstring"] = FUNC_LIST[352],
    ["lua_tostringatom"] = FUNC_LIST[353],
    ["lua_namecallatom"] = FUNC_LIST[354],
    ["lua_tovector"] = FUNC_LIST[355],
    ["lua_objlen"] = FUNC_LIST[356],
    ["lua_tocfunction"] = FUNC_LIST[357],
    ["lua_tolightuserdata"] = FUNC_LIST[358],
    ["lua_tolightuserdatatagged"] = FUNC_LIST[359],
    ["lua_touserdata"] = FUNC_LIST[360],
    ["lua_touserdatatagged"] = FUNC_LIST[361],
    ["lua_userdatatag"] = FUNC_LIST[362],
    ["lua_lightuserdatatag"] = FUNC_LIST[363],
    ["lua_tothread"] = FUNC_LIST[364],
    ["lua_tobuffer"] = FUNC_LIST[365],
    ["lua_topointer"] = FUNC_LIST[366],
    ["lua_pushnil"] = FUNC_LIST[367],
    ["lua_pushnumber"] = FUNC_LIST[368],
    ["lua_pushinteger"] = FUNC_LIST[369],
    ["lua_pushunsigned"] = FUNC_LIST[370],
    ["lua_pushvector"] = FUNC_LIST[371],
    ["lua_pushlstring"] = FUNC_LIST[372],
    ["lua_pushstring"] = FUNC_LIST[373],
    ["lua_pushvfstring"] = FUNC_LIST[374],
    ["lua_pushfstringL"] = FUNC_LIST[375],
    ["lua_pushcclosurek"] = FUNC_LIST[376],
    ["lua_pushboolean"] = FUNC_LIST[377],
    ["lua_pushlightuserdatatagged"] = FUNC_LIST[378],
    ["lua_pushthread"] = FUNC_LIST[379],
    ["lua_gettable"] = FUNC_LIST[380],
    ["lua_getfield"] = FUNC_LIST[381],
    ["lua_rawgetfield"] = FUNC_LIST[382],
    ["lua_rawget"] = FUNC_LIST[383],
    ["lua_rawgeti"] = FUNC_LIST[384],
    ["lua_createtable"] = FUNC_LIST[385],
    ["lua_setreadonly"] = FUNC_LIST[386],
    ["lua_getreadonly"] = FUNC_LIST[387],
    ["lua_setsafeenv"] = FUNC_LIST[388],
    ["lua_getmetatable"] = FUNC_LIST[389],
    ["lua_settable"] = FUNC_LIST[391],
    ["lua_setfield"] = FUNC_LIST[392],
    ["lua_rawsetfield"] = FUNC_LIST[393],
    ["lua_rawset"] = FUNC_LIST[394],
    ["lua_rawseti"] = FUNC_LIST[395],
    ["lua_setmetatable"] = FUNC_LIST[396],
    ["lua_setfenv"] = FUNC_LIST[397],
    ["lua_call"] = FUNC_LIST[398],
    ["lua_pcall"] = FUNC_LIST[399],
    ["lua_status"] = FUNC_LIST[401],
    ["lua_costatus"] = FUNC_LIST[402],
    ["lua_getthreaddata"] = FUNC_LIST[403],
    ["lua_setthreaddata"] = FUNC_LIST[404],
    ["lua_gc"] = FUNC_LIST[405],
    ["lua_error"] = FUNC_LIST[406],
    ["lua_next"] = FUNC_LIST[407],
    ["lua_rawiter"] = FUNC_LIST[408],
    ["lua_concat"] = FUNC_LIST[409],
    ["lua_newuserdatatagged"] = FUNC_LIST[410],
    ["lua_newuserdatadtor"] = FUNC_LIST[411],
    ["lua_newbuffer"] = FUNC_LIST[412],
    ["lua_getupvalue"] = FUNC_LIST[413],
    ["lua_setupvalue"] = FUNC_LIST[414],
    ["lua_encodepointer"] = FUNC_LIST[415],
    ["lua_ref"] = FUNC_LIST[416],
    ["lua_unref"] = FUNC_LIST[417],
    ["lua_setuserdatatag"] = FUNC_LIST[418],
    ["lua_setuserdatadtor"] = FUNC_LIST[419],
    ["lua_getuserdatadtor"] = FUNC_LIST[420],
    ["lua_setlightuserdataname"] = FUNC_LIST[421],
    ["lua_getlightuserdataname"] = FUNC_LIST[422],
    ["lua_clonefunction"] = FUNC_LIST[423],
    ["lua_cleartable"] = FUNC_LIST[424],
    ["lua_setmemcat"] = FUNC_LIST[425],
    ["lua_totalbytes"] = FUNC_LIST[426],
    ["lua_getallocf"] = FUNC_LIST[427],
    ["luaL_argerrorL"] = FUNC_LIST[428],
    ["luaL_errorL"] = FUNC_LIST[429],
    ["luaL_where"] = FUNC_LIST[430],
    ["luaL_typeerrorL"] = FUNC_LIST[431],
    ["luaL_checkoption"] = FUNC_LIST[432],
    ["luaL_optlstring"] = FUNC_LIST[434],
    ["luaL_checklstring"] = FUNC_LIST[435],
    ["luaL_newmetatable"] = FUNC_LIST[436],
    ["luaL_checkudata"] = FUNC_LIST[437],
    ["luaL_checkbuffer"] = FUNC_LIST[438],
    ["luaL_checkstack"] = FUNC_LIST[439],
    ["luaL_checktype"] = FUNC_LIST[440],
    ["luaL_checkany"] = FUNC_LIST[441],
    ["luaL_checknumber"] = FUNC_LIST[442],
    ["luaL_optnumber"] = FUNC_LIST[443],
    ["luaL_checkboolean"] = FUNC_LIST[444],
    ["luaL_optboolean"] = FUNC_LIST[445],
    ["luaL_checkinteger"] = FUNC_LIST[446],
    ["luaL_optinteger"] = FUNC_LIST[447],
    ["luaL_checkunsigned"] = FUNC_LIST[448],
    ["luaL_optunsigned"] = FUNC_LIST[449],
    ["luaL_checkvector"] = FUNC_LIST[450],
    ["luaL_optvector"] = FUNC_LIST[451],
    ["luaL_getmetafield"] = FUNC_LIST[452],
    ["luaL_callmeta"] = FUNC_LIST[453],
    ["luaL_register"] = FUNC_LIST[454],
    ["luaL_findtable"] = FUNC_LIST[455],
    ["luaL_typename"] = FUNC_LIST[456],
    ["luaL_buffinitsize"] = FUNC_LIST[458],
    ["luaL_prepbuffsize"] = FUNC_LIST[460],
    ["luaL_addlstring"] = FUNC_LIST[461],
    ["luaL_addvalue"] = FUNC_LIST[462],
    ["luaL_addvalueany"] = FUNC_LIST[463],
    ["luaL_tolstring"] = FUNC_LIST[464],
    ["luaL_pushresult"] = FUNC_LIST[465],
    ["luaL_pushresultsize"] = FUNC_LIST[466],
    ["luaopen_base"] = FUNC_LIST[469],
    ["luaopen_bit32"] = FUNC_LIST[513],
    ["luaopen_buffer"] = FUNC_LIST[529],
    ["luaopen_coroutine"] = FUNC_LIST[497],
    ["luaopen_debug"] = FUNC_LIST[510],
    ["lua_getargument"] = FUNC_LIST[280],
    ["lua_getlocal"] = FUNC_LIST[281],
    ["lua_setlocal"] = FUNC_LIST[282],
    ["lua_stackdepth"] = FUNC_LIST[283],
    ["lua_getinfo"] = FUNC_LIST[284],
    ["lua_singlestep"] = FUNC_LIST[297],
    ["lua_breakpoint"] = FUNC_LIST[298],
    ["lua_getcoverage"] = FUNC_LIST[300],
    ["lua_debugtrace"] = FUNC_LIST[303],
    ["lua_resume"] = FUNC_LIST[312],
    ["lua_resumeerror"] = FUNC_LIST[316],
    ["lua_yield"] = FUNC_LIST[317],
    ["lua_break"] = FUNC_LIST[318],
    ["lua_isyieldable"] = FUNC_LIST[319],
    ["luaL_openlibs"] = FUNC_LIST[551],
    ["luaL_sandbox"] = FUNC_LIST[552],
    ["luaL_sandboxthread"] = FUNC_LIST[553],
    ["free"] = FUNC_LIST[1091],
    ["lua_clock"] = FUNC_LIST[612],
    ["lua_newstate"] = FUNC_LIST[618],
    ["lua_resetthread"] = FUNC_LIST[616],
    ["luaopen_table"] = FUNC_LIST[674],
    ["luaopen_os"] = FUNC_LIST[607],
    ["luaopen_string"] = FUNC_LIST[627],
    ["luaopen_math"] = FUNC_LIST[556],
    ["luaopen_utf8"] = FUNC_LIST[703],
    ["lua_isthreadreset"] = FUNC_LIST[617],
    ["luau_load"] = FUNC_LIST[795],
}

local NOW_TIME = os.time() * 1000
local FILE_MAP = { {}, {} }

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

--// abort
FUNC_LIST[2] = function(reason)
    assert(false, `Aborted({reason})`)
end

FUNC_LIST[3] = stub("strftime", 0)

--// emscripten_memcpy_js (emscripten_memcpy_big)
FUNC_LIST[4] = function(destination, source, size)
    rt.store.copy(memory_at_0, destination, memory_at_0, source, size)
end

--// emscripten_date_now
FUNC_LIST[5] = function()
    return NOW_TIME + os.clock() * 1000
end

--// fd_write
FUNC_LIST[6] = function(fd, list, count, ret_pointer)
    local file = FILE_MAP[fd]
    if not file then return 8 end
    local total = 0
    for pointer = list, list + (count - 1) * 8, 8 do
        local start = load_i32(memory_at_0, pointer)
        local len = load_i32(memory_at_0, pointer + 4)
        local read = rt.load.string(memory_at_0, start, len)
        table.insert(file, read)
        total = total + #read
    end
    store_i32(memory_at_0, ret_pointer, total)
    fd_flush(file)
    return 0
end

FUNC_LIST[7] = stub("_tzset_js", 0)

--// emscripten_resize_heap
FUNC_LIST[8] = function(_requestedSize)
    assert(false, "OOM")
end

--// _emscripten_throw_longjmp
FUNC_LIST[9] = function()
    assert(false, "Infinity")
end

FUNC_LIST[10] = stub("_localtime_js", 0)
FUNC_LIST[11] = stub("_gmtime_js", 0)

run_init_code()
memory_at_0 = MEMORY_LIST[0]

local zeroIntPtr = cfns.malloc(4)
rt.store.i32(memory_at_0, zeroIntPtr, 0)

local function luau_compile(src: string, optLevel: number?, dbgLevel: number?, covLevel: number?)
    --// Source string
	local srcPtr = cstr(src)

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
    local bcPtr = cfns.luau_compile(srcPtr, #src, compileOptsPtr, bcSizePtr)
    local bcSize = rt.load.i32(memory_at_0, bcSizePtr)
    local bc = rt.load.string(memory_at_0, bcPtr, bcSize)

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
    local ldResPtr = cfns.luau_load(L, cnPtr, bcPtr, #bc, 0)
    local ldRes = rt.load.i32(memory_at_0, ldResPtr)

    --// Cleanup unused stuff
    cfns.free(bcPtr)
    cfns.free(cnPtr)
    cfns.free(ldResPtr)

    --// Check if load succeded
    if (ldRes ~= 0) then cfns.lua_close(L) end
    assert(ldRes == 0, "failed to load luau bytecode")

    --// Call function
    local clResPtr = cfns.lua_pcall(L, zeroIntPtr, zeroIntPtr, zeroIntPtr)
    local clRes = rt.load.i32(memory_at_0, clResPtr)

    --// Cleanup unused stuff
    cfns.free(clResPtr)

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
    wasm = {
        start_time = NOW_TIME,
        file_map = FILE_MAP,
        rt = rt,
        cfns = cfns,
        indirect_function_table = TABLE_LIST[0],
        memory = MEMORY_LIST[0]
    }
}