#!/usr/bin/bash

if [ ! -d "/opt/msvc" ]; then
    mkdir -p /opt/msvc
fi

tar -xzvf `pwd`/packages/scripts.tar.gz -C /opt/msvc

pushd /opt/msvc
    PYTHONUNBUFFERED=1 python ./scripts/vsdownload.py \
    --accept-license \
    --dest /opt/msvc
    ./scripts/install.sh /opt/msvc
popd

# rm -rf /opt/msvc/scripts

export PATH=/opt/msvc/bin/x64:$PATH
# python/tools/python.exe ./scripts/vsdownload.py --accept-license --dest "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\BuildTools" --cache "tmp" --keep-unpack
# SETUP = f"""@echo off
# set ROOT=%~dp0
# set MSVC_VERSION={msvcv}
# set MSVC_HOST=Host{HOST}
# set MSVC_ARCH={TARGET}
# set SDK_VERSION={sdkv}
# set SDK_ARCH={TARGET}
# set MSVC_ROOT=%ROOT%VC\\Tools\\MSVC\\%MSVC_VERSION%
# set SDK_INCLUDE=%ROOT%Windows Kits\\10\\Include\\%SDK_VERSION%
# set SDK_LIBS=%ROOT%Windows Kits\\10\\Lib\\%SDK_VERSION%
# set VCToolsInstallDir=%MSVC_ROOT%\\
# set PATH=%MSVC_ROOT%\\bin\\%MSVC_HOST%\\%MSVC_ARCH%;%ROOT%Windows Kits\\10\\bin\\%SDK_VERSION%\\%SDK_ARCH%;%MSVC_ROOT%\\Windows Kits\\10\\bin\\%SDK_VERSION%\\%SDK_ARCH%\\ucrt;%PATH%
# set INCLUDE=%MSVC_ROOT%\\include;%SDK_INCLUDE%\\ucrt;%SDK_INCLUDE%\\shared;%SDK_INCLUDE%\\um;%SDK_INCLUDE%\\winrt;%SDK_INCLUDE%\\cppwinrt
# set LIB=%MSVC_ROOT%\\lib\\%MSVC_ARCH%;%SDK_LIBS%\\ucrt\\%SDK_ARCH%;%SDK_LIBS%\\um\\%SDK_ARCH%
# """
