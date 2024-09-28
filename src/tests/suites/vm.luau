local frktest = require("@frktest/frktest")
local test = frktest.test
local check = frktest.assert.check
local req = frktest.assert.require
local msg = frktest.assert.msg

test.suite("VM", function()
    local Compiler = require("../../../build/Luau.LuauCeption.Compiler")
    local VM = require("../../../build/Luau.LuauCeption.VM")
    for opt = 0, 2 do
        for dbg = 0, 2 do
            for typInf = 0, 2 do
                for cov = 0, 2 do
                    test.case(`should be able to run valid Luau code without erroring with opt {opt} dbg {dbg} typInf {typInf} cov {cov}`, function()
                        local bc, bcs = Compiler.luau_compile(`print("Hello world!")\nprint({opt},{dbg},{typInf},{cov})`, opt, dbg, typInf, cov)

                        msg(`no safe env, bcs: {bcs}`)
                        check.should_not_error(function()
                            VM.luau_run(bc, `LuauCeptionTest_VM_NSF_{opt},{dbg},{typInf},{cov}`, false)
                            return
                        end)

                        msg(`safe env, bcs: {bcs}`)
                        check.should_not_error(function()
                            VM.luau_run(bc, `LuauCeptionTest_VM_WSF_{opt},{dbg},{typInf},{cov}`, true)
                            return
                        end)
                    end)
                end
            end
        end
    end
end)

return true