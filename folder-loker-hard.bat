@ECHO OFF
rem estilo del script
color a
mode 150
cls
title Carpeta Privada
if EXIST "Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST mi-carpeta goto MDLOCKER
:CONFIRM
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo.
echo Confirmar si deseas bloquear la carpeta(S/N)
set /p "cho=>"
if %cho%==S goto EXISTE
if %cho%==s goto EXISTE
if %cho%==n goto END
if %cho%==N goto END
echo Elige la opcion correcta.
pause
goto CONFIRM
:EXISTE
if EXIST init.dll (goto LOCKORCHANGEPASSWORD) else (goto CREATEPASSWORD)
:UNLOCK
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo.
echo Introduce el password para desbloquear la carpeta
set /p "pass=>"
for /f %%i in (init.dll) do (
  if %pass%==%%i (goto CHANGEPASSWORD) else (goto FAIL)
)
:LOCKORCHANGEPASSWORD
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo.
echo Acceso confirmado
echo.
echo Deceas cambiar la clave(C) o deceas ocultar tu carpeta(O) (C/O)
set /p "change-password=>"
if %change-password%==C goto CREATEPASSWORD
if %change-password%==c goto CREATEPASSWORD
if %change-password%==O goto LOCK
if %change-password%==o goto LOCK
echo Elige la opcion correcta.
pause
goto CHANGEPASSWORD
:LOCKORCHANGEPASSWORD
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo.
echo Acceso confirmado
echo.
echo Deceas cambiar la clave(C) o mostar tu carpeta(M) (C/M)
set /p "change-password=>"
if %change-password%==C goto CREATEPASSWORD
if %change-password%==c goto CREATEPASSWORD
if %change-password%==M goto SHOWFILE
if %change-password%==m goto SHOWFILE
echo Elige la opcion correcta.
pause
goto CHANGEPASSWORD
:CREATEPASSWORD
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo.
echo.
echo.
echo Ingresa la password que le deseas colocar a tu carpeta
if EXIST init.dll (del /q init.dll)
set /p "pass=>" > init.dll
attrib +h +s init.dll
:LOCK
cls
echo "     _____________________________________________________________________________________________________      "
echo "    |       ___    __    ____  ____  ____  ____   __      ____  ____  ____  _  _  __    ____    __        |     "
echo "    |      / __)  /__\  (  _ \(  _ \( ___)(_  _) /__\    (  _ \(  _ \(_  _)( \/ )/__\  (  _ \  /__\       |     "
echo "    |     ( (__  /(__)\  )   / )___/ )__)   )(  /(__)\    )___/ )   / _)(_  \  //(__)\  )(_) )/(__)\      |     "
echo "    |      \___)(__)(__)(_)\_)(__)  (____) (__)(__)(__)  (__)  (_)\_)(____)  \/(__)(__)(____/(__)(__)     |     "
echo "    |                                               JuanDAC                                               |     "
echo "    |_____________________________________________________________________________________________________|     "
echo.
echo Confirmado bloqueo de carpeta
ren mi-carpeta "Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo.
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
pause
goto End
:SHOWFILE
attrib -h -s "Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" mi-carpeta
echo.
echo Carpeta desbloqueada correctamente
pause
goto End
:FAIL
echo El password no coincide… Repite otra vez
pause
goto UNLOCK
:MDLOCKER
md mi-carpeta
echo La carpeta mi-carpeta se ha creado correctamente
goto CONFIRM



















:End
