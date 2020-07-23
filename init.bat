@echo off
set cwd=%~dp0
echo Tell me the absolute or relative path to where you want to place your files in.
:input
set /p a=^> 
cd %a% 1>nul 2>nul
if not %errorlevel% == 0 (
    echo This is not a proper path or the path is not exist.
    goto input
)
echo Valid path detected: %cd%
pause
call %cwd%start.bat nopause
copy %cwd%boot.bat %cd% 1>nul 2>nul
explorer "%cd%" 1>nul 2>nul
exit