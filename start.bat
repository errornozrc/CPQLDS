@echo off
if "%~1"=="admin" goto main
echo Set objShell = CreateObject("Shell.Application")> "%temp%\shit.vbs"
echo objShell.ShellExecute "cmd.exe", "/c """"%~f0"""" admin", "", "runas", 1 >> "%temp%\shit.vbs"
wscript "%temp%\shit.vbs"
del "%temp%\shit.vbs"
:hold
timeout /t 9999 >nul
goto hold
:main
fltmc >nul 2>&1
if %errorlevel% neq 0 exit
cd /d "%~dp0"
call tiquan.bat