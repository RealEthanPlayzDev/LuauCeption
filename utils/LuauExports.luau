--// lua.h lualib.h luaconf.h
local symbolsstr = [[lua_newstate
lua_close
lua_newthread
lua_mainthread
lua_resetthread
lua_isthreadreset
lua_absindex
lua_gettop
lua_settop
lua_pushvalue
lua_remove
lua_insert
lua_replace
lua_checkstack
lua_rawcheckstack
lua_xmove
lua_xpush
lua_isnumber
lua_isstring
lua_iscfunction
lua_isLfunction
lua_isuserdata
lua_type
lua_typename
lua_equal
lua_rawequal
lua_lessthan
lua_tonumberx
lua_tointegerx
lua_tovector
lua_toboolean
lua_tolstring
lua_tostringatom
lua_namecallatom
lua_objlen
lua_tocfunction
lua_tolightuserdata
lua_tolightuserdatatagged
lua_touserdata
lua_touserdatatagged
lua_userdatatag
lua_lightuserdatatag
lua_tothread
lua_tobuffer
lua_topointer
lua_pushnil
lua_pushnumber
lua_pushinteger
lua_pushunsigned
lua_pushvector
lua_pushlstring
lua_pushstring
lua_pushvfstring
lua_pushfstringL
lua_pushcclosurek
lua_pushboolean
lua_pushthread
lua_pushlightuserdatatagged
lua_newuserdatatagged
lua_newuserdatadtor
lua_newbuffer
lua_gettable
lua_getfield
lua_rawgetfield
lua_rawget
lua_rawgeti
lua_createtable
lua_setreadonly
lua_getreadonly
lua_setsafeenv
lua_getmetatable
lua_settable
lua_setfield
lua_rawsetfield
lua_rawset
lua_rawseti
lua_setmetatable
lua_setfenv
luau_load
lua_call
lua_pcall
lua_yield
lua_break
lua_resume
lua_resumeerror
lua_status
lua_isyieldable
lua_getthreaddata
lua_setthreaddata
lua_costatus
lua_gc
lua_setmemcat
lua_totalbytes
lua_error
lua_next
lua_rawiter
lua_concat
lua_encodepointer
lua_clock
lua_setuserdatatag
lua_setuserdatadtor
lua_getuserdatadtor
lua_setlightuserdataname
lua_getlightuserdataname
lua_clonefunction
lua_cleartable
lua_getallocf
lua_ref
lua_unref
lua_stackdepth
lua_getinfo
lua_getargument
lua_getlocal
lua_setlocal
lua_getupvalue
lua_setupvalue
lua_singlestep
lua_breakpoint
lua_getcoverage
lua_debugtrace
luaL_register
luaL_getmetafield
luaL_callmeta
luaL_typeerrorL
luaL_argerrorL
luaL_checklstring
luaL_optlstring
luaL_checknumber
luaL_optnumber
luaL_checkboolean
luaL_optboolean
luaL_checkinteger
luaL_optinteger
luaL_checkunsigned
luaL_optunsigned
luaL_checkvector
luaL_optvector
luaL_checkstack
luaL_checktype
luaL_checkany
luaL_newmetatable
luaL_checkudata
luaL_checkbuffer
luaL_where
luaL_errorL
luaL_checkoption
luaL_tolstring
luaL_newstate
luaL_findtable
luaL_typename
luaL_buffinitsize
luaL_prepbuffsize
luaL_addlstring
luaL_addvalue
luaL_addvalueany
luaL_pushresult
luaL_pushresultsize
luaopen_base
luaopen_coroutine
luaopen_table
luaopen_os
luaopen_string
luaopen_bit32
luaopen_buffer
luaopen_utf8
luaopen_math
luaopen_debug
luaL_openlibs
luaL_sandbox
luaL_sandboxthread]]

local symbols = string.split(symbolsstr, "\n")
local exports = ""
for _, symbol in symbols do
    exports ..= `,_{symbol}`
end
print(exports)