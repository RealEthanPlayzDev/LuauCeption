#!/bin/bash
wasm2luau Luau.LuauCeption.Compiler.wasm > Luau.LuauCeption.Compiler.luau
wasm2luau Luau.LuauCeption.VM.wasm > Luau.LuauCeption.VM.luau
wasm2luau Luau.LuauCeption.Full.wasm > Luau.LuauCeption.Full.luau
wasm2luau Luau.LuauCeption.Analysis.wasm > Luau.LuauCeption.Analysis.luau