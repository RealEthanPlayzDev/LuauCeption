--// LuauCeption - Analysis variant
--// Luau 0.630 (7d4033071abebe09971b410d362c00ffb3084afb)

local STUB_WARN = true

local cfns = {
    ["__wasm_call_ctors"] = FUNC_LIST[12],
    ["read_file"] = FUNC_LIST[2658],
    ["set_file"] = FUNC_LIST[2660],
    ["create_analysis"] = FUNC_LIST[2669],
    ["destroy_analysis"] = FUNC_LIST[2681],
    ["strlen"] = FUNC_LIST[2573],
    ["set_all_flags"] = FUNC_LIST[2703],
    ["reset_flags"] = FUNC_LIST[2705],
    ["malloc"] = FUNC_LIST[2579],
    ["free"] = FUNC_LIST[2581],
    ["_emscripten_stack_restore"] = FUNC_LIST[2594],
    ["emscripten_stack_get_current"] = FUNC_LIST[2596],
}

local NOW_TIME = os.time() * 1000
local FILE_MAP = { {}, {} }

--// __cxa_throw
FUNC_LIST[0] = function(except, info, _dtor)
    local info = CException.new(info)
    assert(false, `exception occured in c: {info:_UndecoratedName()} ({info:vfptr()})`)
end

--// emscripten_memcpy_js (emscripten_memcpy_big)
FUNC_LIST[1] = function(destination, source, size)
    rt.store.copy(memory_at_0, destination, memory_at_0, source, size)
end

--// emscripten_date_now
FUNC_LIST[2] = function()
    return NOW_TIME + os.clock() * 1000
end

--// fd_write
FUNC_LIST[3] = function(fd, list, count, ret_pointer)
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

FUNC_LIST[4] = stub("emscripten_get_heap_max", 0)

--// emscripten_resize_heap
FUNC_LIST[5] = function(_requestedSize)
    assert(false, "OOM")
end

--// _abort_js
FUNC_LIST[6] = function(reason)
    assert(false, `Aborted({reason})`)
end

FUNC_LIST[7] = stub("environ_sizes_get", 0)
FUNC_LIST[8] = stub("environ_get", 0)
FUNC_LIST[9] = stub("strftime_l", 0)
FUNC_LIST[10] = stub("_munmap_js", 0)
FUNC_LIST[11] = stub("_mmap_js", 0)

run_init_code()
memory_at_0 = MEMORY_LIST[0]
cfns.__wasm_call_ctors()

return {
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