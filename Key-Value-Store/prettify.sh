#!/bin/bash
shopt -s nullglob
for i in *.p *.ax; do
    tptp4X "$i" > "$i".pretty
    mv "$i".pretty "$i"
done
