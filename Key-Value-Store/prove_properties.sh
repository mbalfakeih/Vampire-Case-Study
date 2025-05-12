#!/bin/bash
#Runs Vampire on all *.p files and tries to prove them all, writes those to individual files
#And creates a little summary

#Resetting
mkdir -p results/axioms
find results/ -name "*.out" -type f -delete

for i in $(find . -name "*.p"); do

    f="${i:2:-2}"

    #Run vampire on each of the files and save their output to a separate directory
    vampire --input_syntax tptp "$f.p" > results/"$f".out
    if grep -q "SZS status Theorem" "results/$f.out";
    then
       echo "$f : Theorem Proven" 
    else
       echo "$f : Theorem not Proven, see results/$f.out for more information"
    fi
done
