local CException = {} do
    local CExcInternal = {}
    CExcInternal.__index = type_info

    function CExcInternal:_UndecoratedName()
        local name_ptr = load_i32(memory_at_0, self.ptr + 4);
        return rt.load.string(memory_at_0, name_ptr, cfns.strlen(name_ptr))
    end

    function CExcInternal:vfptr()
        local vfptr = load_i32(memory_at_0, self.ptr);
        return vfptr
    end

    function CException.new(ptr)
        return setmetatable({ ptr = ptr }, CExcInternal)
    end
end