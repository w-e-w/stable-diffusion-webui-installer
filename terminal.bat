@echo off
chcp 65001 >Nul
cd /d "%~dp0"

call internal\environment.bat
call internal\mini_git.bat
call internal\clone_webui.bat
call internal\python_env.bat

%~dp0webui\venv\Scripts\activate.bat
cd webui
cmd /k