#!/bin/bash
shopt -s nullglob
for i in $(find . -name "*.p" -o -name "*.ax"); do
    tptp4X "$i" > "$i".pretty
    mv "$i".pretty "$i"
done
