#!/usr/bin/bash

pushd ../src
cl /c /nologo /O2 /W3 /GL /DNDEBUG /MD -I../include/ -I../python/tools/include -I../python/tools/Include /Tclibdogecoin.c /Fobuild\\temp.win-amd64-cpython-310\\Release\\libdogecoin.obj
link /nologo /INCREMENTAL:NO /LTCG /DLL /MANIFEST:EMBED,ID=2 /MANIFESTUAC:NO /EXPORT:PyInit_libdogecoin build/temp.win-amd64-cpython-310/Release/libdogecoin.obj ../lib/libdogecoin.a ../python/tools/libs/python310.lib /OUT:libdogecoin.cp310-win_amd64.pyd
popd