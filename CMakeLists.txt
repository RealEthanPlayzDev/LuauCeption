cmake_minimum_required(VERSION 3.19)
project(Luau.LuauCeption LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 17)

# Import Luau
option(LUAU_BUILD_CLI "Build CLI" OFF)
option(LUAU_BUILD_TESTS "Build tests" OFF)
option(LUAU_BUILD_WEB "Build Web module" OFF)
option(LUAU_WERROR "Warnings as errors" OFF)
option(LUAU_STATIC_CRT "Link with the static CRT (/MT)" OFF)
option(LUAU_EXTERN_C "Use extern C for all APIs" ON)
add_subdirectory(luau)

# Compiler variant compile & link options
set(COMPILER_CC_OPTS)
list(APPEND COMPILER_CC_OPTS -O3 -flto)
set(COMPILER_LN_OPTS)
list(APPEND COMPILER_LN_OPTS -O3 -flto -sEVAL_CTORS -sEXPORTED_FUNCTIONS=['_luau_compile','_set_flag','_set_all_flags','_reset_flags','_strlen','_malloc','_free'] -sBINARYEN_EXTRA_PASSES='vacuum,simplify-locals,simplify-globals,optimize-instructions,optimize-stack-ir,fast-math,strip-dwarf,code-folding,duplicate-function-elimination,duplicate-import-elimination,rse,type-ssa')

# VM variant compile & link options
set(VM_CC_OPTS)
list(APPEND VM_CC_OPTS -O3 -flto)
set(VM_LN_OPTS)
list(APPEND VM_LN_OPTS -O3 -flto -sEVAL_CTORS -sEXPORTED_FUNCTIONS=['_lua_newstate','_lua_close','_lua_newthread','_lua_mainthread','_lua_resetthread','_lua_isthreadreset','_lua_absindex','_lua_gettop','_lua_settop','_lua_pushvalue','_lua_remove','_lua_insert','_lua_replace','_lua_checkstack','_lua_rawcheckstack','_lua_xmove','_lua_xpush','_lua_isnumber','_lua_isstring','_lua_iscfunction','_lua_isLfunction','_lua_isuserdata','_lua_type','_lua_typename','_lua_equal','_lua_rawequal','_lua_lessthan','_lua_tonumberx','_lua_tointegerx','_lua_tovector','_lua_toboolean','_lua_tolstring','_lua_tostringatom','_lua_namecallatom','_lua_objlen','_lua_tocfunction','_lua_tolightuserdata','_lua_tolightuserdatatagged','_lua_touserdata','_lua_touserdatatagged','_lua_userdatatag','_lua_lightuserdatatag','_lua_tothread','_lua_tobuffer','_lua_topointer','_lua_pushnil','_lua_pushnumber','_lua_pushinteger','_lua_pushunsigned','_lua_pushvector','_lua_pushlstring','_lua_pushstring','_lua_pushvfstring','_lua_pushfstringL','_lua_pushcclosurek','_lua_pushboolean','_lua_pushthread','_lua_pushlightuserdatatagged','_lua_newuserdatatagged','_lua_newuserdatadtor','_lua_newbuffer','_lua_gettable','_lua_getfield','_lua_rawgetfield','_lua_rawget','_lua_rawgeti','_lua_createtable','_lua_setreadonly','_lua_getreadonly','_lua_setsafeenv','_lua_getmetatable','_lua_settable','_lua_setfield','_lua_rawsetfield','_lua_rawset','_lua_rawseti','_lua_setmetatable','_lua_setfenv','_luau_load','_lua_call','_lua_pcall','_lua_yield','_lua_break','_lua_resume','_lua_resumeerror','_lua_status','_lua_isyieldable','_lua_getthreaddata','_lua_setthreaddata','_lua_costatus','_lua_gc','_lua_setmemcat','_lua_totalbytes','_lua_error','_lua_next','_lua_rawiter','_lua_concat','_lua_encodepointer','_lua_clock','_lua_setuserdatatag','_lua_setuserdatadtor','_lua_getuserdatadtor','_lua_setlightuserdataname','_lua_getlightuserdataname','_lua_clonefunction','_lua_cleartable','_lua_getallocf','_lua_ref','_lua_unref','_lua_stackdepth','_lua_getinfo','_lua_getargument','_lua_getlocal','_lua_setlocal','_lua_getupvalue','_lua_setupvalue','_lua_singlestep','_lua_breakpoint','_lua_getcoverage','_lua_debugtrace','_luaL_register','_luaL_getmetafield','_luaL_callmeta','_luaL_typeerrorL','_luaL_argerrorL','_luaL_checklstring','_luaL_optlstring','_luaL_checknumber','_luaL_optnumber','_luaL_checkboolean','_luaL_optboolean','_luaL_checkinteger','_luaL_optinteger','_luaL_checkunsigned','_luaL_optunsigned','_luaL_checkvector','_luaL_optvector','_luaL_checkstack','_luaL_checktype','_luaL_checkany','_luaL_newmetatable','_luaL_checkudata','_luaL_checkbuffer','_luaL_where','_luaL_errorL','_luaL_checkoption','_luaL_tolstring','_luaL_newstate','_luaL_findtable','_luaL_typename','_luaL_buffinitsize','_luaL_prepbuffsize','_luaL_addlstring','_luaL_addvalue','_luaL_addvalueany','_luaL_pushresult','_luaL_pushresultsize','_luaopen_base','_luaopen_coroutine','_luaopen_table','_luaopen_os','_luaopen_string','_luaopen_bit32','_luaopen_buffer','_luaopen_utf8','_luaopen_math','_luaopen_debug','_luaL_openlibs','_luaL_sandbox','_luaL_sandboxthread','_set_flag','_set_all_flags','_reset_flags','_strlen','_malloc','_free'] -sBINARYEN_EXTRA_PASSES='vacuum,simplify-locals,simplify-globals,optimize-instructions,optimize-stack-ir,fast-math,strip-dwarf,code-folding,duplicate-function-elimination,duplicate-import-elimination,rse,type-ssa')

# Analysis variant compile & link options
set(ANALYSIS_CC_OPTS)
list(APPEND ANALYSIS_CC_OPTS -O3 -flto)
set(ANALYSIS_LN_OPTS)
list(APPEND ANALYSIS_LN_OPTS -O3 -flto -sEVAL_CTORS -sEXPORTED_FUNCTIONS=['_read_file','_set_file','_create_analysis','_destroy_analysis','_set_all_flags','_reset_flags','_strlen','_malloc','_free'] -sBINARYEN_EXTRA_PASSES='vacuum,simplify-locals,simplify-globals,optimize-instructions,optimize-stack-ir,fast-math,strip-dwarf,code-folding,duplicate-function-elimination,duplicate-import-elimination,rse,type-ssa')

# Full variant compile & link options
set(FULL_CC_OPTS)
list(APPEND FULL_CC_OPTS -O3 -flto)
set(FULL_LN_OPTS)
list(APPEND FULL_LN_OPTS -O3 -flto -sEVAL_CTORS -sEXPORTED_FUNCTIONS=['_luau_compile','_lua_newstate','_lua_close','_lua_newthread','_lua_mainthread','_lua_resetthread','_lua_isthreadreset','_lua_absindex','_lua_gettop','_lua_settop','_lua_pushvalue','_lua_remove','_lua_insert','_lua_replace','_lua_checkstack','_lua_rawcheckstack','_lua_xmove','_lua_xpush','_lua_isnumber','_lua_isstring','_lua_iscfunction','_lua_isLfunction','_lua_isuserdata','_lua_type','_lua_typename','_lua_equal','_lua_rawequal','_lua_lessthan','_lua_tonumberx','_lua_tointegerx','_lua_tovector','_lua_toboolean','_lua_tolstring','_lua_tostringatom','_lua_namecallatom','_lua_objlen','_lua_tocfunction','_lua_tolightuserdata','_lua_tolightuserdatatagged','_lua_touserdata','_lua_touserdatatagged','_lua_userdatatag','_lua_lightuserdatatag','_lua_tothread','_lua_tobuffer','_lua_topointer','_lua_pushnil','_lua_pushnumber','_lua_pushinteger','_lua_pushunsigned','_lua_pushvector','_lua_pushlstring','_lua_pushstring','_lua_pushvfstring','_lua_pushfstringL','_lua_pushcclosurek','_lua_pushboolean','_lua_pushthread','_lua_pushlightuserdatatagged','_lua_newuserdatatagged','_lua_newuserdatadtor','_lua_newbuffer','_lua_gettable','_lua_getfield','_lua_rawgetfield','_lua_rawget','_lua_rawgeti','_lua_createtable','_lua_setreadonly','_lua_getreadonly','_lua_setsafeenv','_lua_getmetatable','_lua_settable','_lua_setfield','_lua_rawsetfield','_lua_rawset','_lua_rawseti','_lua_setmetatable','_lua_setfenv','_luau_load','_lua_call','_lua_pcall','_lua_yield','_lua_break','_lua_resume','_lua_resumeerror','_lua_status','_lua_isyieldable','_lua_getthreaddata','_lua_setthreaddata','_lua_costatus','_lua_gc','_lua_setmemcat','_lua_totalbytes','_lua_error','_lua_next','_lua_rawiter','_lua_concat','_lua_encodepointer','_lua_clock','_lua_setuserdatatag','_lua_setuserdatadtor','_lua_getuserdatadtor','_lua_setlightuserdataname','_lua_getlightuserdataname','_lua_clonefunction','_lua_cleartable','_lua_getallocf','_lua_ref','_lua_unref','_lua_stackdepth','_lua_getinfo','_lua_getargument','_lua_getlocal','_lua_setlocal','_lua_getupvalue','_lua_setupvalue','_lua_singlestep','_lua_breakpoint','_lua_getcoverage','_lua_debugtrace','_luaL_register','_luaL_getmetafield','_luaL_callmeta','_luaL_typeerrorL','_luaL_argerrorL','_luaL_checklstring','_luaL_optlstring','_luaL_checknumber','_luaL_optnumber','_luaL_checkboolean','_luaL_optboolean','_luaL_checkinteger','_luaL_optinteger','_luaL_checkunsigned','_luaL_optunsigned','_luaL_checkvector','_luaL_optvector','_luaL_checkstack','_luaL_checktype','_luaL_checkany','_luaL_newmetatable','_luaL_checkudata','_luaL_checkbuffer','_luaL_where','_luaL_errorL','_luaL_checkoption','_luaL_tolstring','_luaL_newstate','_luaL_findtable','_luaL_typename','_luaL_buffinitsize','_luaL_prepbuffsize','_luaL_addlstring','_luaL_addvalue','_luaL_addvalueany','_luaL_pushresult','_luaL_pushresultsize','_luaopen_base','_luaopen_coroutine','_luaopen_table','_luaopen_os','_luaopen_string','_luaopen_bit32','_luaopen_buffer','_luaopen_utf8','_luaopen_math','_luaopen_debug','_luaL_openlibs','_luaL_sandbox','_luaL_sandboxthread','_set_flag','_set_all_flags','_reset_flags','_strlen','_malloc','_free'] -sBINARYEN_EXTRA_PASSES='vacuum,simplify-locals,simplify-globals,optimize-instructions,optimize-stack-ir,fast-math,strip-dwarf,code-folding,duplicate-function-elimination,duplicate-import-elimination,rse,type-ssa')

# Compiler variant
add_executable(Luau.LuauCeption.Compiler)
target_sources(Luau.LuauCeption.Compiler PRIVATE src/Compiler.cpp src/LuauCeptionFlags.cpp src/LuauCeptionFlags.h)
target_link_libraries(Luau.LuauCeption.Compiler PUBLIC Luau.Compiler)

# VM variant
add_executable(Luau.LuauCeption.VM)
target_sources(Luau.LuauCeption.VM PRIVATE src/VM.cpp src/LuauCeptionFlags.cpp src/LuauCeptionFlags.h)
target_link_libraries(Luau.LuauCeption.VM PUBLIC Luau.VM)

# Analysis variant
add_executable(Luau.LuauCeption.Analysis)
target_sources(Luau.LuauCeption.Analysis PRIVATE src/Analysis.cpp src/LuauCeptionFlags.cpp src/LuauCeptionFlags.h)
target_link_libraries(Luau.LuauCeption.Analysis PUBLIC Luau.Analysis)

# Full variant
add_executable(Luau.LuauCeption.Full)
target_sources(Luau.LuauCeption.Full PRIVATE src/Full.cpp src/LuauCeptionFlags.cpp src/LuauCeptionFlags.h)
target_link_libraries(Luau.LuauCeption.Full PUBLIC Luau.Compiler Luau.VM)

# Compiler variant configuration
target_compile_features(Luau.LuauCeption.Compiler PUBLIC cxx_std_17)
target_compile_options(Luau.LuauCeption.Compiler PUBLIC ${COMPILER_CC_OPTS})
target_link_options(Luau.LuauCeption.Compiler PUBLIC ${COMPILER_LN_OPTS})

# VM variant configuration
target_compile_features(Luau.LuauCeption.VM PUBLIC cxx_std_17)
target_compile_options(Luau.LuauCeption.VM PUBLIC ${VM_CC_OPTS})
target_link_options(Luau.LuauCeption.VM PUBLIC ${VM_LN_OPTS})

# Analysis variant configuration
target_compile_features(Luau.LuauCeption.Analysis PUBLIC cxx_std_17)
target_compile_options(Luau.LuauCeption.Analysis PUBLIC ${ANALYSIS_CC_OPTS})
target_link_options(Luau.LuauCeption.Analysis PUBLIC ${ANALYSIS_LN_OPTS})

# Full variant configuration
target_compile_features(Luau.LuauCeption.Full PUBLIC cxx_std_17)
target_compile_options(Luau.LuauCeption.Full PUBLIC ${FULL_CC_OPTS})
target_link_options(Luau.LuauCeption.Full PUBLIC ${FULL_LN_OPTS})