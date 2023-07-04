#!/bin/bash
filename='missing_bcs.txt'
echo Start
while read p; do
    cp /home/paladin/Games/exported_script/${p} ../NWNForBG/scripts
done < "$filename"


