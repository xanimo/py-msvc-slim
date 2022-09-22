#!/usr/bin/bash

export ROOT=/opt/msvc
export MSVCVER=14.33.31629
export SDKVER=10.0.19041.0
export ARCH=x64
export MSVCDIR=$ROOT/vc/tools/msvc/$MSVCVER
export SDKINCLUDE=$ROOT/kits/10/include/$SDKVER
export SDKLIB=$ROOT/kits/10/lib/$SDKVER
export BINDIR=$ROOT/vc/tools/msvc/$MSVCVER/bin/Hostx64/$ARCH
export SDKBINDIR=$ROOT/kits/10/bin/$SDKVER/x64
export INCLUDE="$MSVCDIR/include/;$SDKINCLUDE/shared;$SDKINCLUDE/ucrt/;$SDKINCLUDE/um/;$SDKINCLUDE/winrt/"
export LIB="$MSVCDIR/lib/$ARCH;$SDKLIB/ucrt/$ARCH;$SDKLIB/um/$ARCH"
export LIBPATH=$LIB
export WINEPATH="$BINDIR;$SDKBINDIR;$MSVCDIR/bin/Hostx64/x64"
export WINEDLLOVERRIDES=vcruntime140_1=n