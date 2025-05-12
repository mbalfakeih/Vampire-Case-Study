#!/bin/bash
#Runs Vampire on all *.p files and tries to prove them all, writes those to individual files
#And creates a little summary
mkdir -p results
> results_summary.out
for i in *.p; do
    #Run vampire on each of the files and save their output to a separate directory
    vampire --input_syntax tptp "$i" > results/"$i".out
    if grep -q "SZS status Theorem" "results/$i.out";
    then
       echo "$i : Theorem Proven" >> results_summary.out
    else
       echo "$i : Theorem not Proven, see results/$i.out for more information" >> results_summary.out
    fi
done
cat results_summary.out
