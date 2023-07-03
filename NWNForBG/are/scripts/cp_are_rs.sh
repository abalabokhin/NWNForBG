#!/bin/bash
filename='_'
echo Start
while read p; do
    sa=($p)
    cp /home/paladin/Games/exported_map_resources/${sa[1]}* .
    mmv "${sa[1]}*" "${sa[0]}#1"
#    rename ${sa[1]} ${sa[0]} *
#    echo ${sa[0]} ${sa[1]}
done < "$filename"


