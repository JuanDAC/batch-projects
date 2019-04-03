cls
@echo off
title Carpeta privada
if EXIST TWlock goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
set /p cho=Seguro que quieres proteger la carpeta? (S/N)

if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Comando no valido
goto CONFIRM
:LOCK
ren Private TWlock
attrib +h +s TWlock
echo Carpeta bloqueada
goto End
:UNLOCK
set /p pass=Introduce contrasena para desbloquear la carpeta:

if %pass%==1234 goto Decrypt
goto FAIL
:Decrypt
attrib -h -s TWlock
ren TWlock Private
echo Carpeta desbloqueada
goto End
:FAIL
echo Contrasena no valida
goto End
:MDLOCKER
md Private
echo Carpeta privada creada con exito
goto CONFIRM
:End
