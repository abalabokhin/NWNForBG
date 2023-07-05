#!/bin/bash
grep -o -e '=[^=]*\.BAM' missing_res_diff.txt >files
sed -i 's/=//g' files
while read p; do
    cp /home/paladin/Games/exported_bam/${p} ../NWNForBG/bam
done < files


