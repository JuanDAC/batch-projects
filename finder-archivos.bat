@echo off
title=Buscador por extencion mover o copiar
rem estilo del script
color a
mode 150
rem Volver a ejecutar en caso de seguir buscando
:retorno
cls
rem Declaración de las variables a usar
set ruta=0
set extencion=exit
set destino=destino
set action=copiar;
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
set /p ruta= Unidad de disco o Ruta de busqueda (C, D, etc.) Enter para la direcion actual:
rem Si no introduce ningún valor se ubicara en el directorio actual con el comando CHDIR
if %ruta%==0 (
  for /f "tokens=*" %%%% in ('CHDIR') do (set ruta=%%~%%)
)

rem Previamente se establece un punto de retorno si hay error
:error-extencion
cls
rem imprime la ruta
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "ruta de busqueda -> %ruta%"
echo.
rem Se pide al usuario que introduzca una extencion de texto como extencion a buscar
set /p extencion= Extencion (extencion a buscar):
rem Si no introduce nada dara error
if %extencion%==exit goto error-extencion
cls
rem imprime la ruta y extencion
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "ruta de busqueda -> %ruta%"
echo.
echo "extencion -> %extencion%"
echo.
set /p destino=Introduce el nombre de la carpeta de destino, Enter para definirla como "destino":
echo.
:denuevo
cls
rem imprime la ruta, extencion y nombre de carpeta
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "ruta de busqueda -> %ruta%"
echo.
echo "extencion -> %extencion%"
echo.
echo "Nombre de carpeta -> %destino%"
echo.
set /p action=¿Deceas Copiar o Mover los archivos? (c/m)
rem Si quiere el usuario quiere Copiar o Mover ha de escribir una 'm' o una 'M' tambien con una 'c' o una 'C'
if %action%==c (goto copy) else (goto next0)
:next0
if %action%==C (goto copy) else (goto next1)
:next1
if %action%==m (goto move) else (goto next2)
:next2
if %action%==M (goto move) else (goto denuevo)
:copy
rem Si todas las condiciones se cumplen se copiaran los Archivos encontrados
for /f "tokens=*" %%%% in ('where /r %ruta%\ *.%extencion%') do (
  xcopy /c /q /y "%%~%%" "%ruta%\%destino%-de-%extencion%\"
)
goto continue
:move
rem Si todas las condiciones se cumplen se Movera los Archivos encontrados
for /f "tokens=*" %%%% in ('where /r %ruta%\ *.%extencion%') do (
  xcopy /c /q /y "%%~%%" "%ruta%\%destino%-de-%extencion%\"
  del /q "%%~%%"
)
goto continue
:continue
cls
echo " _________________________________________________________________________________________"
echo "|                                                                                         |"
echo "|       |~)    _ _  _   _  _|_ _  _  _. _  _    _ _  _    _  _   _    _ _  _ . _  _       |"
echo "|       |_)|_|(_(_||   (/_><| (/_| |(_|(_)| |  | | |(_)\/(/_|   (_)  (_(_)|_)|(_||        |"
echo "|                                                                         |               |"
echo "|                                        JuanDAC                                          |"
echo "|_________________________________________________________________________________________|"
echo.
echo "ruta de busqueda -> %ruta%"
echo.
echo "extencion -> %extencion%"
echo.
echo "Nombre de carpeta -> %destino%"
echo.
dir %ruta%\%destino%-de-%extencion%\ /O:N /W
echo.
echo "          _____            _____                    _____                _____                   _______         "
echo "         /\    \          /\    \                  /\    \              /\    \                 /::\    \        "
echo "        /::\____\        /::\    \                /::\    \            /::\    \               /::::\    \       "
echo "       /:::/    /        \:::\    \              /::::\    \           \:::\    \             /::::::\    \      "
echo "      /:::/    /          \:::\    \            /::::::\    \           \:::\    \           /::::::::\    \     "
echo "     /:::/    /            \:::\    \          /:::/\:::\    \           \:::\    \         /:::/~~\:::\    \    "
echo "    /:::/    /              \:::\    \        /:::/__\:::\    \           \:::\    \       /:::/    \:::\    \   "
echo "   /:::/    /               /::::\    \       \:::\   \:::\    \          /::::\    \     /:::/    / \:::\    \  "
echo "  /:::/    /       ____    /::::::\    \    ___\:::\   \:::\    \        /::::::\    \   /:::/____/   \:::\____\ "
echo " /:::/    /       /\   \  /:::/\:::\    \  /\   \:::\   \:::\    \      /:::/\:::\    \ |:::|    |     |:::|    |"
echo "/:::/____/       /::\   \/:::/  \:::\____\/::\   \:::\   \:::\____\    /:::/  \:::\____\|:::|____|     |:::|    |"
echo "\:::\    \       \:::\  /:::/    \::/    /\:::\   \:::\   \::/    /   /:::/    \::/    / \:::\    \   /:::/    / "
echo " \:::\    \       \:::\/:::/    / \/____/  \:::\   \:::\   \/____/   /:::/    / \/____/   \:::\    \ /:::/    /  "
echo "  \:::\    \       \::::::/    /            \:::\   \:::\    \      /:::/    /             \:::\    /:::/    /   "
echo "   \:::\    \       \::::/____/              \:::\   \:::\____\    /:::/    /               \:::\__/:::/    /    "
echo "    \:::\    \       \:::\    \               \:::\  /:::/    /    \::/    /                 \::::::::/    /     "
echo "     \:::\    \       \:::\    \               \:::\/:::/    /      \/____/                   \::::::/    /      "
echo "      \:::\    \       \:::\    \               \::::::/    /                                  \::::/    /       "
echo "       \:::\____\       \:::\____\               \::::/    /                                    \::/____/        "
echo "        \::/    /        \::/    /                \::/    /                                      ~~              "
echo "         \/____/          \/____/                  \/____/                                                       "
echo "                                                                                                                 "
rem Se pregunta al usuario si quiere salir del programa o quiere buscar de nuevo
set /p seguir= ¿Volver a buscar? (s/n):
rem Si quiere el usuario quiere continuar ha de escribir una 's' ó una 'S'
if %seguir%==s (goto retorno) else (goto next0)
:next0
if %seguir%==S (goto retorno) else (goto exit)
echo.
echo.
rem Si se decidió no seguir buscando el programa finaliza
exit
