#!/bin/bash
filename='missing_bcs.txt'
echo Start
while read p; do
    cp /home/paladin/Games/exported_script/${p} ../NWNForBG/scripts
#    mmv "${sa[1]}*" "${sa[0]}#1"
#    rename ${sa[1]} ${sa[0]} *
#    echo ${sa[0]} ${sa[1]}
done < "$filename"


