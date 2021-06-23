@echo off
setlocal enableextensions enabledelayedexpansion
SET /A count=1

FOR /R "%CD%\Ghosts" %%f IN (*) DO (
REN "%%f" "Ghost !count!.ghost.gbx"
set /a count += 1
echo ##########
echo File: "%%f"
echo Count: !count!
echo ##########

)

endlocal