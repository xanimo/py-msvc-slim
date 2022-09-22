#!/usr/bin/bash
LC_ALL=C

Xvfb :0 -screen 0 1024x768x16 &
export DISPLAY=:0.0

# curl -SL --output ndp48-x86-x64-allos-enu.exe https://download.visualstudio.microsoft.com/download/pr/7afca223-55d2-470a-8edc-6a1739ae3252/abd170b4b0ec15ad0222a809b761a036/ndp48-x86-x64-allos-enu.exe
# echo "95889d6de3f2070c07790ad6cf2000d33d9a1bdfc6a381725ab82ab1c314fd53  ndp48-x86-x64-allos-enu.exe" | sha256sum -c
wineserver -p \
&& wine64 wineboot \
&& WINEPREFIX=~/.wine32 WINEARCH=win32 winetricks --optout -q --force dotnet48
# mkdir -p ~/.wine/dotnet
# WINEARCH=win32 WINEPREFIX=~/.wine/dotnet wine ndp48-x86-x64-allos-enu.exe /q /norestart
