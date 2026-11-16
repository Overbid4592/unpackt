@echo off
rem ======================================================================
rem  Unpackt - Universal Archive & File Organizer
rem  Startet das Fenster. Ein Archiv auf diese Datei ziehen = gleich entpacken.
rem  Starts the window. Drop an archive onto this file = unpack it right away.
rem  Beim ersten Start wird alles eingerichtet (venv + Ziehen & Ablegen).
rem ======================================================================
setlocal
chcp 65001 >nul
title Unpackt
cd /d "%~dp0"

set "VENV=%~dp0venv"
set "PYW=%VENV%\Scripts\pythonw.exe"

if exist "%PYW%" goto run

echo.
echo   ╔════════════════════════════════════════════════╗
echo   ║  Unpackt - Universal Archive ^& File Organizer  ║
echo   ╚════════════════════════════════════════════════╝
echo.
echo   Erster Start: richte alles ein ...
echo   First start: setting things up ...
echo.

rem --- Python suchen (Python-Launcher "py" bevorzugt)
set "PY="
where py >nul 2>nul && set "PY=py -3"
if not defined PY where python >nul 2>nul && set "PY=python"
if not defined PY goto nopython

%PY% -c "import sys; sys.exit(0 if sys.version_info >= (3, 12) else 1)" >nul 2>nul || goto oldpython

echo   [1/2] Python-Umgebung anlegen / creating environment ...
%PY% -m venv "%VENV%" || goto fail

echo   [2/2] Ziehen ^& Ablegen einrichten / installing drag ^& drop ...
"%VENV%\Scripts\python.exe" -m pip install --disable-pip-version-check -q -r "%~dp0requirements.txt"
if errorlevel 1 (
    echo.
    echo   Hinweis: Ziehen ^& Ablegen konnte nicht installiert werden ^(kein Internet?^).
    echo   Unpackt geht trotzdem: einfach auf die Flaeche klicken.
    echo   Note: drag ^& drop could not be installed. Click the area instead.
    timeout /t 6 >nul
)
echo.
echo   Fertig! / Done!

:run
if "%~1"=="" (
    start "" "%PYW%" "%~dp0unpackt.py"
) else (
    start "" "%PYW%" "%~dp0unpackt.py" --gui "%~1"
)
exit /b 0

:nopython
echo   Python wurde nicht gefunden. / Python was not found.
echo   Bitte Python 3.12 oder neuer installieren: https://www.python.org/downloads/
echo   (Beim Installieren "Add python.exe to PATH" anhaken.)
goto wait

:oldpython
echo   Python ist zu alt oder nicht richtig installiert. Unpackt braucht 3.12 oder neuer.
echo   Python is too old or not installed properly. Unpackt needs 3.12 or newer.
echo   https://www.python.org/downloads/
goto wait

:fail
echo   Die Python-Umgebung konnte nicht angelegt werden. / Could not create the environment.

:wait
echo.
pause
exit /b 1
