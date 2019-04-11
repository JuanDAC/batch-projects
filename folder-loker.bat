@ECHO off

set TRUE=1;
set FALSE=0;

setlocal EnableDelayedExpansion
setlocal EnableExtensions
TITLE Carpeta privada
REM MAIN
:MAIN
CALL :IMPRIMIR-CARTEL
IF EXIST carpeta_oculta (
  CALL :OPERACIONES-CON-LA-CARPETA
) ELSE (
  CALL :EXISTE-INFO-DE-CARPETA
)

GOTO :EOF
:OPERACIONES-CON-LA-CARPETA
IF EXIST mi_clave.dll (
  CALL :OPERACIONES-DE-LA-CLAVE
) ELSE (
  CALL :RECUPERAR-CLAVE
)


GOTO :EOF
:RECUPERAR-CLAVE
CALL :IMPRIMIR-CARTEL
PAUSE>NUL

GOTO :EOF
:OPERACIONES-DE-LA-CLAVE
CALL :OBTENER-CLAVE
CALL :OBTENER-NOMBRE-CARPETA
CALL :INGRESAR-CLAVE
CALL :VALIDAR-CLAVE


GOTO :EOF
:INGRESAR-CLAVE
CALL :IMPRIMIR-CARTEL
ECHO Ingresa la clave de tu carpeta
echo(
set /p "ClaveIngresada=>"

GOTO :EOF
:VALIDAR-CLAVE
IF %ClaveIngresada%==%ClaveDeLaCarpeta% (
  CALL :DESBLOQUEAR-CARPETA
) ELSE (
  CALL :INCORECTA-CLAVE
)

GOTO :EOF
:DESBLOQUEAR-CARPETA
attrib -h -s carpeta_oculta
ren carpeta_oculta "%NombreDeLaCarpeta%"

GOTO :EOF
:INCORECTA-CLAVE
ECHO CLAVE INCORECTA
CALL: OPERACIONES-DE-LA-CLAVE



GOTO :EOF
:OBTENER-CLAVE
SET _nombre_del_archivo=mi_clave.dll
CALL :OBTENER-DATOS _1 0 _nombre_del_archivo
SET ClaveDeLaCarpeta=!_1!


GOTO :EOF
:EXISTE-INFO-DE-CARPETA
CALL :EXISTE-NOMBRE-DE-LA-CARPETA
CALL :EXISTE-CARPETA

GOTO :EOF
:EXISTE-NOMBRE-DE-LA-CARPETA
IF EXIST mi_carpeta.dll (
  CALL :OBTENER-NOMBRE-CARPETA
) ELSE (
  CALL :CREAR-NOMBRE-DE-LA-CARPETA
)


GOTO :EOF
:OBTENER-NOMBRE-CARPETA
SET _nombre_del_archivo=mi_carpeta.dll
CALL :OBTENER-DATOS _1 0 _nombre_del_archivo
SET NombreDeLaCarpeta=!_1!


GOTO :EOF
:OBTENER-DATOS
SET nombre_del_archivo_1=!%~3!
for /f %%i IN (%nombre_del_archivo_1%) DO SET _return_=%%i
set %~1=!_return_!




GOTO :EOF
:CREAR-NOMBRE-DE-LA-CARPETA
CALL :IMPRIMIR-CARTEL
ECHO Ingresa el nombre que le deseas colocar a tu carpeta (SIN ESPACIOS)
echo(
set /p "NombreDeLaCarpeta=>"
ECHO %NombreDeLaCarpeta%> mi_carpeta.dll
attrib +h +s mi_carpeta.dll



GOTO :EOF
:EXISTE-CARPETA
IF EXIST "%NombreDeLaCarpeta%" (
  CALL :EXISTE-ARCHIVO-DE-LA-CLAVE
) ELSE (
  CALL :CREAR-CARPETA
)
GOTO :EOF

GOTO :EOF
:EXISTE-ARCHIVO-DE-LA-CLAVE
IF EXIST mi_clave.dll (
  CALL :DESEAS-BLOQUEAR-CARPETA
) ELSE (
  CALL :CREAR-ARCHIVO-DE-LA-CLAVE
)

GOTO :EOF
:CREAR-ARCHIVO-DE-LA-CLAVE
CALL :IMPRIMIR-CARTEL
ECHO Ingresa la clave que le deseas colocar a tu carpeta
echo(
set /p "ClaveDeLaCarpeta=>"
ECHO %ClaveDeLaCarpeta%> mi_clave.dll
attrib +h +s mi_clave.dll
GOTO :DESEAS-BLOQUEAR-CARPETA

:DESEAS-BLOQUEAR-CARPETA
CALL :IMPRIMIR-CARTEL
ECHO Deseas bloquear la carpeta? (S/N)
CALL :YES-OR-NOT _1 0
SET Option=!_1!
IF %Option%==%TRUE% (
  CALL :BLOQUEAR-CARPETA
) else (
  GOTO MAIN
)

GOTO :EOF
:BLOQUEAR-CARPETA
ren "%NombreDeLaCarpeta%" carpeta_oculta
attrib +h +s carpeta_oculta
CALL :RECUPERAR-CLAVE
PAUSE>NUL

GOTO :EXIT
:YES-OR-NOT
set /p "_selection_1=>"
if %_selection_1%==S SET %~1=%TRUE%
if %_selection_1%==s SET %~1=%TRUE%
if %_selection_1%==n goto %~1=%FALSE%
if %_selection_1%==N goto %~1=%FALSE%

GOTO :OEF
:CREAR-CARPETA
REM END-MAIN
MD "%NombreDeLaCarpeta%"
echo Carpeta "%NombreDeLaCarpeta%" creada con exito
START explorer.exe "%__CD__%%NombreDeLaCarpeta%"
PAUSE>NUL
GOTO :MAIN
echo %username%

:IMPRIMIR-CARTEL
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo(
echo(
echo(
echo Desarrollado por JuanDAC para %username%
echo(
echo Servicio al cliente escribe al numero +57 3005696000
echo(
echo(
echo(
:EXIT
