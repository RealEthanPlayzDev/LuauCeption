local function luau_setflag(name: string, state: boolean)
    --// Flag name
    local flagNamePtr = cstr(name)

    --// Set the flag
    cfns.set_flag(flagNamePtr, if (state) then 1 else 0)

    --// Cleanup
    cfns.free(flagNamePtr)
    return
end

local function luau_setallflags(state: boolean)
    cfns.set_all_flags(if (state) then 1 else 0)
    return
end

local function luau_resetflags()
    cfns.reset_flags()
    return
end