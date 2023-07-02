if not exist "internal\git" (
    if not exist "internal\cache_downloads" mkdir "internal\cache_downloads"
    if not exist "internal\cache_downloads\MinGit.zip" powershell -Command "Invoke-WebRequest 'https://github.com/git-for-windows/git/releases/download/v2.41.0.windows.1/MinGit-2.41.0-64-bit.zip' -OutFile 'internal\cache_downloads\MinGit.zip'"
    powershell -Command "Expand-Archive 'internal\cache_downloads\MinGit.zip' -DestinationPath 'internal\git'"
)