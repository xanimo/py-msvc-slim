#!/usr/bin/bash

curl -L -O https://dl.winehq.org/wine/wine-mono/7.3.0/wine-mono-7.3.0-x86.msi
echo "939e2f5669720d0d0fc7e305426622a11a33b7ae385c4d7e581e29ea264e22ff  wine-mono-7.3.0-x86.msi" | sha256sum -c
wine msiexec /i wine-mono-7.3.0-x86.msi
rm wine-mono-7.3.0-x86.msi
