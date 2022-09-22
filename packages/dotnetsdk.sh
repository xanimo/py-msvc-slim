#!/usr/bin/bash

curl -L -O https://download.visualstudio.microsoft.com/download/pr/9a1d2e89-d785-4493-aaf3-73864627a1ea/245bdfaa9c46b87acfb2afbd10ecb0d0/dotnet-sdk-6.0.400-win-x64.exe
echo "ef52c6740eabf3fb917a038f7c7d33cfcb1a2f25145cdb58ec4b025c04ad29ed  dotnet-sdk-6.0.400-win-x64.exe" | sha256sum -c
wine64 dotnet-sdk-6.0.400-win-x64.exe /install /quiet /norestart
