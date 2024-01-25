#!/bin/bash
grep -o -e '=[^=]*\.EFF' missing_res_diff.txt >files
sed -i 's/=//g' files
while read p; do
    cp /home/paladin/Games/exported_eff/${p} ../NWNForBG/eff
done < files


