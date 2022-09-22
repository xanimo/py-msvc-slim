#!/usr/bin/bash

curl -L -O https://dist.nuget.org/win-x86-commandline/latest/nuget.exe
echo "a79f342e739fdb3903a92218767e7813e04930dff463621b6d2be2d468b84e05  nuget.exe" | sha256sum -c
echo "alias nuget='wine `pwd`/nuget.exe'" >> ~/.bashrc
source ~/.bashrc
