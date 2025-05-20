#!/bin/bash
shopt -s nullglob
for i in $(find . -name "*.p" -o -name "*.ax" -o -name ".imp"); do
    tptp4X "$i" > "$i".pretty
    if grep -q "ERROR" "$i".pretty;
    then
        echo "Error when running tptp4X on $i, please check $i.pretty"
    else
        mv "$i".pretty "$i"
    fi
done
