if not exist "internal\python" (
    if not exist "internal\cache_downloads" mkdir "internal\cache_downloads"
    if not exist "internal\cache_downloads\python-3.10.6-embed-amd64.zip" powershell -Command "Invoke-WebRequest 'https://www.python.org/ftp/python/3.10.6/python-3.10.6-embed-amd64.zip' -OutFile 'internal\cache_downloads\python-3.10.6-embed-amd64.zip'"
    powershell -Command "Expand-Archive 'internal\cache_downloads\python-3.10.6-embed-amd64.zip' -DestinationPath 'internal\python'"
    move "internal\python\python310._pth" "internal\python\python310.pth" > NUL
    if not exist "internal\cache_downloads\get-pip.py" powershell -Command "Invoke-WebRequest 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'internal\cache_downloads\get-pip.py'"
    python "internal\cache_downloads\get-pip.py"
    python -m pip install virtualenv    
)
if not exist "webui\venv" python -m virtualenv "webui\venv"