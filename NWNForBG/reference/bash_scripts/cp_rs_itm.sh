#!/bin/bash
grep -o -e '=[^=]*\.ITM' missing_res_diff.txt >itm_files
sed -i 's/=//g' itm_files
while read p; do
    cp /home/paladin/Games/exported_itm/${p} ../NWNForBG/itm
done < itm_files


