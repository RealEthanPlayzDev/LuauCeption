local function cstr(str)
    local strLen = #str
    local strPtr = cfns.malloc(strLen + 1)
    rt.store.string(memory_at_0, strPtr, str)
    rt.store.i32_n8(memory_at_0, strPtr + strLen, 0)
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
        local sp = cfns.stackSave()
        local e, stacktrace = "N/A", "N/A"
        local success = xpcall(function() return TABLE_LIST[0].data[fnIndex](table.unpack(args)) end, function(a) e = a; stacktrace = debug.traceback() end)
        if (not success) then
            cfns.stackRestore(sp)
            assert(typeof(e) ~= "string", `{e}\n\ninvoke stacktrace:\n{stacktrace}`)
            cfns.setThrew(1, 0)
        end
    end
end