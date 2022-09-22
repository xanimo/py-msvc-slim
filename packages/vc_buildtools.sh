#!/usr/bin/bash
LC_ALL=C

# Xvfb :0 -screen 0 1024x768x16 &
# mkdir -p ~/.wine/BuildTools
# export WINEPREFIX=~/.wine/BuildTools
# export WINEARCH=win32
# export WINEPATH=~/.wine/BuildTools
# wineboot --init
# winecfg -v win10

# curl -SL --output ndp48-x86-x64-allos-enu.exe https://download.visualstudio.microsoft.com/download/pr/7afca223-55d2-470a-8edc-6a1739ae3252/abd170b4b0ec15ad0222a809b761a036/ndp48-x86-x64-allos-enu.exe
# echo "95889d6de3f2070c07790ad6cf2000d33d9a1bdfc6a381725ab82ab1c314fd53  ndp48-x86-x64-allos-enu.exe" | sha256sum -c
# DISPLAY=:0.0 wine ndp48-x86-x64-allos-enu.exe /install /q /norestart
# DISPLAY=:0 wineserver -p \
# && wine64 wineboot \
# && WINEPREFIX=~/.wine32 WINEARCH=win32 winetricks --optout -q --force vstools2019
# apt-get update
# DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends \
#         apt-transport-https \
#         ca-certificates \
#         cabextract \
#         git \
#         gnupg \
#         gosu \
#         gpg-agent \
#         libgnutls30 \
#         locales \
#         p7zip \
#         pulseaudio \
#         pulseaudio-utils \
#         sudo \
#         tzdata \
#         unzip \
#         wget \
#         winbind \
#         xvfb \
#         zenity \
#     && rm -rf /var/lib/apt/lists/*
# apt-get update
# apt-get install -y --install-recommends \
# gcc-mingw-w64 \
# libdbus-1-dev \
# libfontconfig-dev \
# libfreetype-dev \
# libgnutls28-dev \
# libgl-dev \
# libunwind-dev \
# libxml2-dev \
# libxslt1-dev \
# libosmesa6-dev \
# libsdl2-dev \
# libudev-dev \
# libvkd3d-dev \
# libvulkan-dev \
# libkrb5-dev \
# libldap2-dev \
# samba-dev \
# ocl-icd-opencl-dev \
# libpcap-dev
# WINEPREFIX=~/.buildtools winetricks -q dotnet461
# curl -SL --output vs_buildtools.exe https://aka.ms/vs/17/release/vs_buildtools.exe
# echo "d66033b1817afc20c74f9483131472da5391417cc6603cae1635cfff213ab534  vs_buildtools.exe" | sha256sum -c
curl -SL --output vs_buildtools.exe https://aka.ms/vs/17/release/vs_BuildTools.exe
# WINEPREFIX=~/.wine32 wineboot
wineserver -p \
&& wine64 wineboot \
&& DISPLAY=:0.0 WINEPREFIX=~/.wine32 wine64 vs_buildtools.exe \
    --passive --norestart \
    --installPath "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\BuildTools" \
    --add Microsoft.VisualStudio.Workload.VCTools
