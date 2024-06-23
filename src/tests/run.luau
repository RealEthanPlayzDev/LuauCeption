local frktest = require("@frktest/frktest")
local lune_console_reporter = require("@frktest/reporters/lune_console_reporter")
local fs = require("@lune/fs")
local process = require("@lune/process")

for _, name in fs.readDir("./suites") do
    local ok = require(`./suites/{name}`) :: any
    assert(ok, `could not load suite {name}`)
end

lune_console_reporter.init()
local testOk = frktest.run()
if (not testOk) then
    process.exit(1)
end
