local function cstr(str)
    local strLen = #str
    local strPtr = cfns.malloc(strLen + 1)
    rt.store.string(memory_at_0, strPtr, src)
    rt.store.i32_n8(memory_at_0, strPtr + strLen, 0)
    return strPtr
end

local function stub(name, ret)
    return function(...)
        if (STUB_WARN) then print(`stub: {name} called`) end
        return ret
    end
end

--// TODO: Properly handle exceptions
local function invokeHandler(index)
    return function(...)
        local args = table.pack(...)
        local result = table.pack(pcall(function() return TABLE_LIST[0].data[index](table.unpack(args)) end))
        local success = table.remove(result, 1)
        assert(success, "exception occured in c")
        return table.unpack(result)
    end
end