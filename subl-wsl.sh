#!/bin/bash

if [ "$#" -ne 1 ]; then
    path=$PWD
else
    path=$(readlink -f $*);
fi

winpath=$(wslpath -w $path);

#echo "Editing ${path}"
#echo "Windows path is ${winpath}"

/c/Program\ Files/Sublime\ Text/sublime_text.exe $winpath

