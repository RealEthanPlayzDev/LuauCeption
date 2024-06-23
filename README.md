# LuauCeption
Running Luau inside Luau. Inspired by [@Rerumu's LuauInLuau](https://gist.github.com/Rerumu/ecaf1de2f2b31d0fa91b9bac8e1e15d8).

## Notes
- ``strftime`` isn't implemented, os.date will NOT work (doesn't error code, but it will return a empty string)
- There's existing work on getting analysis to work (at the ``analysis`` branch), however it doesn't work (code aborts)

## Testing
LuauCeption uses [lune](https://github.com/lune-org/lune) (runtime) and [frktest](https://github.com/itsfrank/frktest) (library). See ``src/tests`` to view the tests stuff.

To run tests, ensure you've initialized submodules (as the frktest library is imported using submodules) and simply run the ``run.luau`` script with lune.

The old testing script (``Test.luau``) at ``utils`` is still available, however it won't be used or updated for newer work.

## Special thanks
- [@Rerumu](https://github.com/Rerumu) - a LOT of troubleshooting
- Tryptamine (@Lemonchat) - C exception handling
- gamerer123 (@Lemonchat) - pointing out a oversight in the V3 implementation (that broke number precision)