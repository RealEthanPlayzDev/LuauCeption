#!/bin/bash
emcmake cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build . --target Luau.LuauCeption.Compiler Luau.LuauCeption.VM Luau.LuauCeption.Analysis Luau.LuauCeption.Full --config RelWithDebInfo -j 2
sh ../utils/Convert.sh