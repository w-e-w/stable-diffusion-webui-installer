@echo off
cd /d "%~dp0"

call internal\environment.bat
call internal\mini_git.bat
call internal\clone_webui.bat

git -C "%~dp0webui" pull 2>NUL
if %ERRORLEVEL% == 0 (
    git -C "%~dp0webui" reset --hard
    git -C "%~dp0webui" pull
)
pause