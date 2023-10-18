#!/bin/bash
grep -o -e '[^=]*.VEF' missing_res_diff.txt >files
sed -i 's/.VEF/.VVC/g' files
while read p; do
    cp /home/paladin/Games/exported_vvc/${p} ../NWNForBG/vvc
done < files


