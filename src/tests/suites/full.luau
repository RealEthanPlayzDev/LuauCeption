local frktest = require("@frktest/frktest")
local test = frktest.test
local check = frktest.assert.check
local req = frktest.assert.require
local msg = frktest.assert.msg

test.suite("Compiler", function()
    local Full = require("../../../build/Luau.LuauCeption.Full")
    for opt = 1, 3 do
        for dbg = 1, 3 do
            for cov = 1, 3 do
                test.case(`should be able to compile valid Luau code without erroring with opt {opt} dbg {dbg} cov {cov}`, function()
                    check.should_not_error(function()
                        Full.luau_compile(`print("Hello world!")\nprint({opt},{dbg},{cov})`, opt, dbg, cov)
                        return
                    end)
                end)

                test.case(`shouldn't be able to compile invalid Luau code without erroring with opt {opt} dbg {dbg} cov {cov}`, function()
                    check.should_not_error(function()
                        Full.luau_compile(`whar`, opt, dbg, cov)
                        return
                    end)
                end)

                test.case("first byte for invalid code from compiler should be null (0) with opt {opt} dbg {dbg} cov {cov}", function()
                    local bc, bcs = Full.luau_compile(`whar`, opt, dbg, cov)
                    msg(`bc: "{bc}", bcs: {bcs}, first byte: {string.byte(string.sub(bc, 1, 1))}`)
                    check.equal(string.byte(string.sub(bc, 1, 1)), 0)
                end)

                test.case(`should be able to run valid Luau code without erroring with opt {opt} dbg {dbg} cov {cov}`, function()
                    local bc, bcs = Full.luau_compile(`print("Hello world!")\nprint({opt},{dbg},{cov})`, opt, dbg, cov)

                    msg(`no safe env, bcs: {bcs}`)
                    check.should_not_error(function()
                        Full.luau_run(bc, `LuauCeptionTest_VM_NSF_{opt},{dbg},{cov}`, false)
                        return
                    end)

                    msg(`safe env, bcs: {bcs}`)
                    check.should_not_error(function()
                        Full.luau_run(bc, `LuauCeptionTest_VM_WSF_{opt},{dbg},{cov}`, true)
                        return
                    end)
                end)
            end
        end
    end
end)

return true