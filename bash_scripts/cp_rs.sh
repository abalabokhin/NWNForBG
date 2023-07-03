#!/bin/bash
filename='missing_cre.txt'
echo Start
while read p; do
    cp /home/paladin/Games/exported_cre/${p} ../NWNForBG/cre
#    mmv "${sa[1]}*" "${sa[0]}#1"
#    rename ${sa[1]} ${sa[0]} *
#    echo ${sa[0]} ${sa[1]}
done < "$filename"


