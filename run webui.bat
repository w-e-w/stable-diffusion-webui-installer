@echo off
chcp 65001
cd /d "%~dp0"

call internal\environment.bat
call internal\mini_git.bat
call internal\clone_webui.bat
call internal\python_env.bat

cd webui
call webui-user.bat