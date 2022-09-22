#!/usr/bin/bash

curl -L -O https://aka.ms/vs/17/release/VC_redist.x64.exe
echo "ce6593a1520591e7dea2b93fd03116e3fc3b3821a0525322b0a430faa6b3c0b4  VC_redist.x64.exe" | sha256sum -c
wine VC_redist.x64.exe /Q

curl -L -O https://aka.ms/vs/17/release/VC_redist.x86.exe
echo "cf92a10c62ffab83b4a2168f5f9a05e5588023890b5c0cc7ba89ed71da527b0f  VC_redist.x86.exe" | sha256sum -c
wine VC_redist.x86.exe /Q