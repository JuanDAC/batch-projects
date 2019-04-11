@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions

rem Fibonacci
set /a n=0
:WHILE_0
if !n! LSS 5247 (
  set /a n=^(!n! + 1^)
  wget -c -S "https://www.descargasnsn.com/index.php?do=download&id=%n%"
  pause > nul
  goto WHILE_0
)
