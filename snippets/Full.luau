--// LuauCeption - Full variant
--// Luau 0.631 (caee04d82d014ed104dd63edec1710fb6ab5794c)

local STUB_WARN = true

local cfns = {
    ["luaL_newstate"] = FUNC_LIST[584],
    ["luau_compile"] = FUNC_LIST[280],
    ["lua_close"] = FUNC_LIST[651],
    ["set_flag"] = FUNC_LIST[1161],
    ["set_all_flags"] = FUNC_LIST[1168],
    ["reset_flags"] = FUNC_LIST[1170],
    ["strlen"] = FUNC_LIST[1126],
    ["malloc"] = FUNC_LIST[1131],
    ["lua_checkstack"] = FUNC_LIST[355],
    ["lua_rawcheckstack"] = FUNC_LIST[356],
    ["lua_xmove"] = FUNC_LIST[357],
    ["lua_xpush"] = FUNC_LIST[358],
    ["lua_newthread"] = FUNC_LIST[359],
    ["lua_mainthread"] = FUNC_LIST[360],
    ["lua_absindex"] = FUNC_LIST[361],
    ["lua_gettop"] = FUNC_LIST[362],
    ["lua_settop"] = FUNC_LIST[363],
    ["lua_remove"] = FUNC_LIST[364],
    ["lua_insert"] = FUNC_LIST[365],
    ["lua_replace"] = FUNC_LIST[366],
    ["lua_pushvalue"] = FUNC_LIST[367],
    ["lua_type"] = FUNC_LIST[368],
    ["lua_typename"] = FUNC_LIST[369],
    ["lua_iscfunction"] = FUNC_LIST[370],
    ["lua_isLfunction"] = FUNC_LIST[371],
    ["lua_isnumber"] = FUNC_LIST[372],
    ["lua_isstring"] = FUNC_LIST[373],
    ["lua_isuserdata"] = FUNC_LIST[374],
    ["lua_rawequal"] = FUNC_LIST[375],
    ["lua_equal"] = FUNC_LIST[376],
    ["lua_lessthan"] = FUNC_LIST[377],
    ["lua_tonumberx"] = FUNC_LIST[378],
    ["lua_tointegerx"] = FUNC_LIST[379],
    ["lua_toboolean"] = FUNC_LIST[381],
    ["lua_tolstring"] = FUNC_LIST[382],
    ["lua_tostringatom"] = FUNC_LIST[383],
    ["lua_namecallatom"] = FUNC_LIST[384],
    ["lua_tovector"] = FUNC_LIST[385],
    ["lua_objlen"] = FUNC_LIST[386],
    ["lua_tocfunction"] = FUNC_LIST[387],
    ["lua_tolightuserdata"] = FUNC_LIST[388],
    ["lua_tolightuserdatatagged"] = FUNC_LIST[389],
    ["lua_touserdata"] = FUNC_LIST[390],
    ["lua_touserdatatagged"] = FUNC_LIST[391],
    ["lua_userdatatag"] = FUNC_LIST[392],
    ["lua_lightuserdatatag"] = FUNC_LIST[393],
    ["lua_tothread"] = FUNC_LIST[394],
    ["lua_tobuffer"] = FUNC_LIST[395],
    ["lua_topointer"] = FUNC_LIST[396],
    ["lua_pushnil"] = FUNC_LIST[397],
    ["lua_pushnumber"] = FUNC_LIST[398],
    ["lua_pushinteger"] = FUNC_LIST[399],
    ["lua_pushunsigned"] = FUNC_LIST[400],
    ["lua_pushvector"] = FUNC_LIST[401],
    ["lua_pushlstring"] = FUNC_LIST[402],
    ["lua_pushstring"] = FUNC_LIST[403],
    ["lua_pushvfstring"] = FUNC_LIST[404],
    ["lua_pushfstringL"] = FUNC_LIST[405],
    ["lua_pushcclosurek"] = FUNC_LIST[406],
    ["lua_pushboolean"] = FUNC_LIST[407],
    ["lua_pushlightuserdatatagged"] = FUNC_LIST[408],
    ["lua_pushthread"] = FUNC_LIST[409],
    ["lua_gettable"] = FUNC_LIST[410],
    ["lua_getfield"] = FUNC_LIST[411],
    ["lua_rawgetfield"] = FUNC_LIST[412],
    ["lua_rawget"] = FUNC_LIST[413],
    ["lua_rawgeti"] = FUNC_LIST[414],
    ["lua_createtable"] = FUNC_LIST[415],
    ["lua_setreadonly"] = FUNC_LIST[416],
    ["lua_getreadonly"] = FUNC_LIST[417],
    ["lua_setsafeenv"] = FUNC_LIST[418],
    ["lua_getmetatable"] = FUNC_LIST[419],
    ["lua_settable"] = FUNC_LIST[421],
    ["lua_setfield"] = FUNC_LIST[422],
    ["lua_rawsetfield"] = FUNC_LIST[423],
    ["lua_rawset"] = FUNC_LIST[424],
    ["lua_rawseti"] = FUNC_LIST[425],
    ["lua_setmetatable"] = FUNC_LIST[426],
    ["lua_setfenv"] = FUNC_LIST[427],
    ["lua_call"] = FUNC_LIST[428],
    ["lua_pcall"] = FUNC_LIST[429],
    ["lua_status"] = FUNC_LIST[431],
    ["lua_costatus"] = FUNC_LIST[432],
    ["lua_getthreaddata"] = FUNC_LIST[433],
    ["lua_setthreaddata"] = FUNC_LIST[434],
    ["lua_gc"] = FUNC_LIST[435],
    ["lua_error"] = FUNC_LIST[436],
    ["lua_next"] = FUNC_LIST[437],
    ["lua_rawiter"] = FUNC_LIST[438],
    ["lua_concat"] = FUNC_LIST[439],
    ["lua_newuserdatatagged"] = FUNC_LIST[440],
    ["lua_newuserdatadtor"] = FUNC_LIST[441],
    ["lua_newbuffer"] = FUNC_LIST[442],
    ["lua_getupvalue"] = FUNC_LIST[443],
    ["lua_setupvalue"] = FUNC_LIST[444],
    ["lua_encodepointer"] = FUNC_LIST[445],
    ["lua_ref"] = FUNC_LIST[446],
    ["lua_unref"] = FUNC_LIST[447],
    ["lua_setuserdatatag"] = FUNC_LIST[448],
    ["lua_setuserdatadtor"] = FUNC_LIST[449],
    ["lua_getuserdatadtor"] = FUNC_LIST[450],
    ["lua_setlightuserdataname"] = FUNC_LIST[451],
    ["lua_getlightuserdataname"] = FUNC_LIST[452],
    ["lua_clonefunction"] = FUNC_LIST[453],
    ["lua_cleartable"] = FUNC_LIST[454],
    ["lua_setmemcat"] = FUNC_LIST[455],
    ["lua_totalbytes"] = FUNC_LIST[456],
    ["lua_getallocf"] = FUNC_LIST[457],
    ["luaL_argerrorL"] = FUNC_LIST[458],
    ["luaL_errorL"] = FUNC_LIST[459],
    ["luaL_where"] = FUNC_LIST[460],
    ["luaL_typeerrorL"] = FUNC_LIST[461],
    ["luaL_checkoption"] = FUNC_LIST[462],
    ["luaL_optlstring"] = FUNC_LIST[464],
    ["luaL_checklstring"] = FUNC_LIST[465],
    ["luaL_newmetatable"] = FUNC_LIST[466],
    ["luaL_checkudata"] = FUNC_LIST[467],
    ["luaL_checkbuffer"] = FUNC_LIST[468],
    ["luaL_checkstack"] = FUNC_LIST[469],
    ["luaL_checktype"] = FUNC_LIST[470],
    ["luaL_checkany"] = FUNC_LIST[471],
    ["luaL_checknumber"] = FUNC_LIST[472],
    ["luaL_optnumber"] = FUNC_LIST[473],
    ["luaL_checkboolean"] = FUNC_LIST[474],
    ["luaL_optboolean"] = FUNC_LIST[475],
    ["luaL_checkinteger"] = FUNC_LIST[476],
    ["luaL_optinteger"] = FUNC_LIST[477],
    ["luaL_checkunsigned"] = FUNC_LIST[478],
    ["luaL_optunsigned"] = FUNC_LIST[479],
    ["luaL_checkvector"] = FUNC_LIST[480],
    ["luaL_optvector"] = FUNC_LIST[481],
    ["luaL_getmetafield"] = FUNC_LIST[482],
    ["luaL_callmeta"] = FUNC_LIST[483],
    ["luaL_register"] = FUNC_LIST[484],
    ["luaL_findtable"] = FUNC_LIST[485],
    ["luaL_typename"] = FUNC_LIST[486],
    ["luaL_buffinitsize"] = FUNC_LIST[488],
    ["luaL_prepbuffsize"] = FUNC_LIST[490],
    ["luaL_addlstring"] = FUNC_LIST[491],
    ["luaL_addvalue"] = FUNC_LIST[492],
    ["luaL_addvalueany"] = FUNC_LIST[493],
    ["luaL_tolstring"] = FUNC_LIST[494],
    ["luaL_pushresult"] = FUNC_LIST[495],
    ["luaL_pushresultsize"] = FUNC_LIST[496],
    ["luaopen_base"] = FUNC_LIST[499],
    ["luaopen_bit32"] = FUNC_LIST[543],
    ["luaopen_buffer"] = FUNC_LIST[559],
    ["luaopen_coroutine"] = FUNC_LIST[527],
    ["luaopen_debug"] = FUNC_LIST[540],
    ["lua_getargument"] = FUNC_LIST[311],
    ["lua_getlocal"] = FUNC_LIST[312],
    ["lua_setlocal"] = FUNC_LIST[313],
    ["lua_stackdepth"] = FUNC_LIST[314],
    ["lua_getinfo"] = FUNC_LIST[315],
    ["lua_singlestep"] = FUNC_LIST[328],
    ["lua_breakpoint"] = FUNC_LIST[329],
    ["lua_getcoverage"] = FUNC_LIST[331],
    ["lua_debugtrace"] = FUNC_LIST[334],
    ["lua_resume"] = FUNC_LIST[343],
    ["lua_resumeerror"] = FUNC_LIST[346],
    ["lua_yield"] = FUNC_LIST[347],
    ["lua_break"] = FUNC_LIST[348],
    ["lua_isyieldable"] = FUNC_LIST[349],
    ["luaL_openlibs"] = FUNC_LIST[581],
    ["luaL_sandbox"] = FUNC_LIST[582],
    ["luaL_sandboxthread"] = FUNC_LIST[583],
    ["lua_clock"] = FUNC_LIST[642],
    ["lua_newstate"] = FUNC_LIST[648],
    ["free"] = FUNC_LIST[1133],
    ["lua_resetthread"] = FUNC_LIST[646],
    ["luaopen_table"] = FUNC_LIST[704],
    ["luaopen_os"] = FUNC_LIST[637],
    ["luaopen_string"] = FUNC_LIST[657],
    ["luaopen_math"] = FUNC_LIST[586],
    ["luaopen_utf8"] = FUNC_LIST[734],
    ["lua_isthreadreset"] = FUNC_LIST[647],
    ["luau_load"] = FUNC_LIST[826],
    ["setThrew"] = FUNC_LIST[1141],
    ["_emscripten_stack_restore"] = FUNC_LIST[1150],
    ["emscripten_stack_get_current"] = FUNC_LIST[1152],
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

FUNC_LIST[2] = stub("strftime", 0)

--// _abort_js
FUNC_LIST[3] = function(reason)
    assert(false, `Aborted({reason})`)
end

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
    local ldRes = cfns.luau_load(L, cnPtr, bcPtr, #bc, 0)

    --// Cleanup unused stuff
    cfns.free(bcPtr)
    cfns.free(cnPtr)

    --// Check if load succeded
    if (ldRes ~= 0) then cfns.lua_close(L) end
    assert(ldRes == 0, "failed to load luau bytecode")

    --// Call function
    local clRes = cfns.lua_pcall(L, 0, 0, 0)

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