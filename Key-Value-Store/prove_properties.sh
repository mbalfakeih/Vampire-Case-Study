#!/bin/bash
#Runs Vampire on all *.p files and tries to prove them all, writes those to individual files
#And creates a little summary

#Resetting
d=$(git rev-parse --show-toplevel)/Key-Value-Store
mkdir -p "$d"/results/theorems
mkdir -p "$d"/results/impossible
find "$d"/results/ -name "*.out" -type f -delete

run () {
for i in $(find "$d" -name "*$1"); do
    f="${i//$d}"
    f="${f:1:$2}"
    echo "Running on $f"
    #Run vampire on each of the files and save their output to a separate directory
    #See https://vprover.github.io/usage.html
    vampire --input_syntax tptp --mode casc -t 300 "$d/$f$1" > "$d/results/$f.out"
    a=$(grep "SZS status" "$d/results/$f.out") 
    echo $a 
    if [[ $a == *"Theorem"* ]] then
        echo $(grep "Success in time" "$d/results/$f.out")
    fi
    printf "\n"
done
}
run ".p" "-2"
# Uncomment the line below to also run it on impossible files
# run ".imp" "-4"
echo "For more information on individual results, check the results directory"
