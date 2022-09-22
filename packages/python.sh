#!/usr/bin/bash
# dependent on wine, wine-mono and nuget executable

apt-get remove -y python-is-python3 python3*

wine nuget install python -ExcludeVersion -OutputDirectory ./python
echo "alias python='wine `pwd`/python/tools/python.exe'" >> ~/.bashrc
source ~/.bashrc
export PATH=/root/python:/root/python/tools/Scripts:/root/python/tools:$PATH

dirs=(
"`pwd`/python/tools/Lib/distutils/"
"`pwd`/python/tools/Lib/site-packages/setuptools/_distutils/"
)

files=(
"_msvccompiler.py"
"msvc9compiler.py"
"msvccompiler.py"
)

for d in "${dirs[@]}"; do
  if [ -d "$d" ]; then
    echo $d
    for f in "${files[@]}"; do
      if [ -f "$d$f" ]; then
        echo $f
        sed -i "s/cl.exe/cl/g" $d$f
        sed -i "s/link.exe/link/g" $d$f
      fi
    done
  fi
done
