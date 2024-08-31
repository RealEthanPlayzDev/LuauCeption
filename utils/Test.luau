local src = [[
for i = 1, 10, 1 do
    print(i)
end
]]

local Compiler = require("../build/Luau.LuauCeption.Compiler")
local VM = require("../build/Luau.LuauCeption.VM")
local Full = require("../build/Luau.LuauCeption.Full")

print("Compiler")
print(Compiler.luau_compile(src, 1, 1, 0))
print(Compiler.luau_compile(src, 1, 2, 0))
print(Compiler.luau_compile(src, 1, 1, 1))
print(Compiler.luau_compile(src, 1, 2, 1))

print("VM")
local bc = Compiler.luau_compile(src, 1, 2, 1)
print(VM.luau_run(bc, "test", true))
print(VM.luau_run(bc, "test", false))

print("Full")
local bc = Full.luau_compile(src, 1, 2, 1)
print(Full.luau_compile(src, 1, 1, 0))
print(Full.luau_compile(src, 1, 2, 0))
print(Full.luau_compile(src, 1, 1, 1))
print(Full.luau_compile(src, 1, 2, 1))
print(Full.luau_run(bc, "test", true))
print(Full.luau_run(bc, "test", false))

print("\nTest ok")