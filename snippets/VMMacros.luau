local macros do
    local LUAI_MAXCSTACK    = 8000
    local LUA_REGISTRYINDEX = -LUAI_MAXCSTACK - 2000
    local LUA_ENVIRONINDEX  = -LUAI_MAXCSTACK - 2001
    local LUA_GLOBALSINDEX  = -LUAI_MAXCSTACK - 2002
    local LUA_VECTOR_SIZE   = 3

    local LUA_TNIL           = 0
    local LUA_TBOOLEAN       = 1
    local LUA_TLIGHTUSERDATA = 2
    local LUA_TNUMBER        = 3
    local LUA_TVECTOR        = 4
    local LUA_TSTRING        = 5
    local LUA_TTABLE         = 6
    local LUA_TFUNCTION      = 7
    local LUA_TUSERDATA      = 8
    local LUA_TTHREAD        = 9
    local LUA_TBUFFER        = 10
    local LUA_TPROTO         = 11
    local LUA_TUPVAL         = 12
    local LUA_TDEADKEY       = 13
    local LUA_T_COUNT        = LUA_TPROTO

    macros = {
        LUA_TNIL           = LUA_TNIL,
        LUA_TBOOLEAN       = LUA_TBOOLEAN,
        LUA_TLIGHTUSERDATA = LUA_TLIGHTUSERDATA,
        LUA_TNUMBER        = LUA_TNUMBER,
        LUA_TVECTOR        = LUA_TVECTOR,
        LUA_TSTRING        = LUA_TSTRING,
        LUA_TTABLE         = LUA_TTABLE,
        LUA_TFUNCTION      = LUA_TFUNCTION,
        LUA_TUSERDATA      = LUA_TUSERDATA,
        LUA_TTHREAD        = LUA_TTHREAD,
        LUA_TBUFFER        = LUA_TBUFFER,
        LUA_TPROTO         = LUA_TPROTO,  
        LUA_TUPVAL         = LUA_TUPVAL,
        LUA_TDEADKEY       = LUA_TDEADKEY,
        LUA_T_COUNT        = LUA_T_COUNT,

        LUA_OK        = 0,
        LUA_YIELD     = 1,
        LUA_ERRRUN    = 2,
        LUA_ERRSYNTAX = 3,
        LUA_ERRMEM    = 4,
        LUA_ERRERR    = 5,
        LUA_BREAK     = 6,

        LUA_CORUN = 0,
        LUA_COSUS = 1,
        LUA_CONOR = 2,
        LUA_COFIN = 3,
        LUA_COERR = 4,

        LUA_GCSTOP        = 0,
        LUA_GCRESTART     = 1,
        LUA_GCCOLLECT     = 2,
        LUA_GCCOUNT       = 3,
        LUA_GCCOUNTB      = 4,
        LUA_GCISRUNNING   = 5,
        LUA_GCSTEP        = 6,
        LUA_GCSETGOAL     = 7,
        LUA_GCSETSTEPMUL  = 8,
        LUA_GCSETSTEPSIZE = 9,

        LUA_IDSIZE            = 256,
        LUA_MINSTACK          = 20,
        LUAI_MAXCSTACK        = LUAI_MAXCSTACK,
        LUAI_MAXCALLS         = 20000,
        LUAI_MAXCCALLS        = 200,
        LUA_BUFFERSIZE        = 512,
        LUA_UTAG_LIMIT        = 128,
        LUA_LUTAG_LIMIT       = 128,
        LUA_SIZECLASSES       = 40,
        LUA_MEMORY_CATEGORIES = 256,
        LUA_MINSTRTABSIZE     = 32,
        LUA_MAXCAPTURES       = 32,
        LUA_VECTOR_SIZE       = 3,
        LUA_EXTRA_SIZE        = LUA_VECTOR_SIZE - 2,
        LUA_MULTRET           = -1,
        LUA_REGISTRYINDEX     = LUA_REGISTRYINDEX,
        LUA_ENVIRONINDEX      = LUA_ENVIRONINDEX,
        LUA_GLOBALSINDEX      = LUA_GLOBALSINDEX,
        LUA_TNONE             = -1,
        LUA_NOREF             = -1,
        LUA_REFNIL            = 0,
        LUA_COLIBNAME         = "coroutine",
        LUA_TABLIBNAME        = "table",
        LUA_OSLIBNAME         = "os",
        LUA_STRLIBNAME        = "string",
        LUA_BITLIBNAME        = "bit32",
        LUA_BUFFERLIBNAME     = "buffer",
        LUA_UTF8LIBNAME       = "utf8",
        LUA_MATHLIBNAME       = "math",
        LUA_DBLIBNAME         = "debug",
        LUA_VECLIBNAME        = "vector",

        lua_upvalueindex      = function(i)                      return LUA_GLOBALSINDEX - i end,
        lua_ispseudo          = function(i)                      return if (i <= LUA_REGISTRYINDEX) then 1 else 0 end,
        lua_getref            = function(L, ref)                 return cfns.lua_rawgeti(L, LUA_REGISTRYINDEX, ref) end,
        lua_tonumberx         = function(L, i)                   return cfns.lua_tonumberx(L, i, 0) end,
        lua_tointegerx        = function(L, i)                   return cfns.lua_tointegerx(L, i, 0) end,
        lua_tounsigned        = function(L, i)                   return cfns.lua_tounsignedx(L, i, 0) end,
        lua_pop               = function(L, n)                   return cfns.lua_settop(L, -n - 1) end,
        lua_newtable          = function(L)                      return cfns.lua_createtable(L, 0, 0) end,
        lua_newuserdata       = function(L, s)                   return cfns.lua_newuserdatatagged(L, s, 0) end,
        lua_strlen            = function(L, i)                   return cfns.lua_objlen(L, i) end,
        lua_isfunction        = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TFUNCTION) then 1 else 0 end,
        lua_istable           = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TTABLE) then 1 else 0 end,
        lua_islightuserdata   = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TLIGHTUSERDATA) then 1 else 0 end,
        lua_isnil             = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TNIL) then 1 else 0 end,
        lua_isboolean         = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TBOOLEAN) then 1 else 0 end,
        lua_isvector          = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TVECTOR) then 1 else 0 end,
        lua_isthread          = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TTHREAD) then 1 else 0 end,
        lua_isbuffer          = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TBUFFER) then 1 else 0 end,
        lua_isnone            = function(L, n)                   return if (cfns.lua_type(L, (n)) == LUA_TNONE) then 1 else 0 end,
        lua_isnoneornil       = function(L, n)                   return if (cfns.lua_type(L, (n)) <= LUA_TNIL) then 1 else 0 end,
        --// lua_pushliteral  = function(L, s)                   return cfns.lua_pushlstring(L, cstr(""), (sizeof(s) / sizeof(char)) - 1) end, --// sizeof needed, not sure atm
        lua_pushcfunction     = function(L, fn, debugname)       return cfns.lua_pushcclosurek(L, fn, debugname, 0, 0) end,
        lua_pushcclosure      = function(L, fn, debugname, nup)  return cfns.lua_pushcclosurek(L, fn, debugname, nup, 0) end,
        lua_pushlightuserdata = function(L, p)                   return cfns.lua_pushlightuserdatatagged(L, p, 0) end,
        lua_setglobal         = function(L, s)                   return cfns.lua_setfield(L, LUA_GLOBALSINDEX, s) end,
        lua_getglobal         = function(L, s)                   return cfns.lua_getfield(L, LUA_GLOBALSINDEX, s) end,
        lua_tostring          = function(L, i)                   return cfns.lua_tolstring(L, i, 0) end,
        lua_pushfstring       = function(L, fmt, ...)            return cfns.lua_pushfstringL(L, fmt, ...) end,
        luaL_error            = function(L, fmt, ...)            return cfns.luaL_errorL(L, fmt, ...) end,
        luaL_typeerror        = function(L, narg, tname)         return cfns.luaL_typeerrorL(L, narg, tname) end,
        luaL_argerror         = function(L, narg, extramsg)      return cfns.luaL_argerrorL(L, narg, extramsg) end,
        luaL_argcheck         = function(L, cond, arg, extramsg) return if cond == 1 then 0 else cfns.luaL_argerror(L, arg, extramsg) end,
        luaL_argexpected      = function(L, cond, arg, tname)    return if cond == 1 then 0 else cfns.luaL_typeerror(L, arg, tname) end,
        luaL_checkstring      = function(L, n)                   return cfns.luaL_checklstring(L, n, NULL) end,
        luaL_optstring        = function(L, n, d)                return cfns.luaL_optlstring(L, n, d, NULL) end,
        luaL_getmetatable     = function(L, n)                   return cfns.lua_getfield(L, LUA_REGISTRYINDEX, n) end,
        --// luaL_opt         = function(L, f, n, d)             return if (lua_isnoneornil(L, n) == 1) then d else f(L, n) end,
        --// luaL_addchar     = function(B, c)                   return ((void)((B)->p < (B)->end || luaL_prepbuffsize(B, 1)), (*(B)->p++ = (char)(c))) end,
        luaL_addstring        = function(B, s)                   return cfns.luaL_addlstring(B, s, cfns.strlen(s)) end,
    }
end