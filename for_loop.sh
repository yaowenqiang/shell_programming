#!/bin/bash

#for VARIABLE_NAME in ITEM_1 ITEM_N
#do
#    command 1
#    command 2
#    command 3
#    command 4
#done

for COLOR in red green blue
do
    echo "COLOR: $COLOR"
done

COLORS="red green blue"

for COLOR in $COLORS
do
    echo "COLOR2: $COLOR"
done

