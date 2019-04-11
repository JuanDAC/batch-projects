@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions

rem Return value
set /a _0=1
call :func3 _1 0 _0
set ret=!_1!
echo Returned: !ret!
PAUSE

goto :EOF
:func3
set num_%~2=!%~3!
set /a _0_%~2=^(!num_%~2! + 41^)
set %~1=!_0_%~2!
goto :EOF
