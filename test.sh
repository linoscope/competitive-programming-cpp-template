#!/bin/sh

# split inputs.txt with empty line
awk -v RS= '{print > ("input-" NR ".txt")}' inputs.txt

for file in input-*; do
    if [ -e $file ];
    then
        echo "input: "
        cat $file

        echo "output:"
        ./a.out < $file
        echo "\n"
    else
        echo "input.txt is empty"
    fi

done

rm -f input-*
