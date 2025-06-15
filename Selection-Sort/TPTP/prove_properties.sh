#!/bin/bash
#Runs Vampire on all *.p files and tries to prove them all, writes those to individual files
#And creates a little summary

#Resetting
d=$(git rev-parse --show-toplevel)/Selection-Sort/TPTP
mkdir -p "$d"/results/theorems
find "$d"/results/ -name "*.out" -type f -delete
for i in $(find "$d" -name "*.p"); do
    f="${i//$d}"
    f="${f:1:-2}"
    echo "Running on $f"
    #Run vampire on each of the files and save their output to a separate directory
    #See https://vprover.github.io/usage.html
    vampire --input_syntax tptp --mode casc -t 300 "$d/$f.p" > "$d/results/$f.out"
    a=$(grep "SZS status" "$d/results/$f.out") 
    echo $a 
    if [[ $a == *"Theorem"* ]] then
        echo $(grep "Success in time" "$d/results/$f.out")
    fi
    printf "\n"
done
echo "For more information on individual results, check the results directory"
