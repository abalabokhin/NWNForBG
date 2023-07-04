#!/bin/bash
grep -o -e '[^=]*.BCS' missing_res_diff.txt >bcs_files
sed -i 's/.BCS/.BAF/g' bcs_files
while read p; do
    cp /home/paladin/Games/exported_script/${p} ../NWNForBG/scripts
done < bcs_files
rm bcs_files


