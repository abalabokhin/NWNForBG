#!/bin/bash
grep -o -e '=[^=]*\.SPL' missing_res_diff.txt >files
sed -i 's/=//g' files
while read p; do
    cp /home/paladin/Games/exported_spl/${p} ../NWNForBG/spl
done < files


