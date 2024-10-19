local CException = {} do
    local CExcInternal = {}
    CExcInternal.__index = CExcInternal

    function CExcInternal:_UndecoratedName()
        local name_ptr = rt_load_i32(memory_at_0, self.ptr + 4);
        return rt_load_string(memory_at_0, name_ptr, cfns.strlen(name_ptr))
    end

    function CExcInternal:vfptr()
        local vfptr = rt_load_i32(memory_at_0, self.ptr);
        return vfptr
    end

    function CException.new(ptr)
        return setmetatable({ ptr = ptr }, CExcInternal)
    end
end

local function cstr(str)
    local strLen = #str
    local strPtr = cfns.malloc(strLen + 1)
    rt_store_string(memory_at_0, strPtr, str)
    rt_store_i32_n8(memory_at_0, strPtr + strLen, 0)
    return strPtr
end

local function stub(name, ret)
    return function(...)
        if (STUB_WARN) then print(`stub: {name} called`) end
        return ret
    end
end

local function invokeHandler(index)
    return function(...)
        local args = table.pack(...)
        local fnIndex = table.remove(args, 1)
        local sp = cfns.emscripten_stack_get_current()
        local e, stacktrace = "N/A", "N/A"
        local success = xpcall(function() return TABLE_LIST[0].data[fnIndex](table.unpack(args)) end, function(a) e = a; stacktrace = debug.traceback() end)
        if (not success) then
            cfns._emscripten_stack_restore(sp)
            assert(typeof(e) ~= "string", `{e}\n\ninvoke stacktrace:\n{stacktrace}`)
            cfns.setThrew(1, 0)
        end
    end
end

local function insertCFunction(f)
    local ptr = #TABLE_LIST[0].data + 1
    TABLE_LIST[0].data[ptr] = f
    return ptr
end