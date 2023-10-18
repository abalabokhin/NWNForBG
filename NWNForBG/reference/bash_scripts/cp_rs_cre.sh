#!/bin/bash
grep -o -e '=[^=]*\.CRE' missing_res_diff.txt >files
sed -i 's/=//g' files
while read p; do
    cp /home/paladin/Games/exported_cre/${p} ../NWNForBG/cre
done < files


