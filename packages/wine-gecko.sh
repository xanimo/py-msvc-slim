#!/usr/bin/bash

curl -L -O https://dl.winehq.org/wine/wine-gecko/2.47/wine_gecko-2.47-x86_64.msi
echo "c565ea25e50ea953937d4ab01299e4306da4a556946327d253ea9b28357e4a7d  wine_gecko-2.47-x86_64.msi" | sha256sum -c
wine msiexec /i wine_gecko-2.47-x86_64.msi
