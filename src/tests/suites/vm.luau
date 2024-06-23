local frktest = require("@frktest/frktest")
local test = frktest.test
local check = frktest.assert.check
local req = frktest.assert.require
local msg = frktest.assert.msg

test.suite("Compiler", function()
    local Compiler = require("../../../build/Luau.LuauCeption.Compiler")
    local VM = require("../../../build/Luau.LuauCeption.VM")
    for opt = 1, 3 do
        for dbg = 1, 3 do
            for cov = 1, 3 do
                test.case(`should be able to run valid Luau code without erroring with opt {opt} dbg {dbg} cov {cov}`, function()
                    local bc, bcs = Compiler.luau_compile(`print("Hello world!")\nprint({opt},{dbg},{cov})`, opt, dbg, cov)

                    msg(`no safe env, bcs: {bcs}`)
                    check.should_not_error(function()
                        VM.luau_run(bc, `LuauCeptionTest_VM_NSF_{opt},{dbg},{cov}`, false)
                        return
                    end)

                    msg(`safe env, bcs: {bcs}`)
                    check.should_not_error(function()
                        VM.luau_run(bc, `LuauCeptionTest_VM_WSF_{opt},{dbg},{cov}`, true)
                        return
                    end)
                end)
            end
        end
    end
end)

return true