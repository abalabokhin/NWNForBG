#!/bin/bash
grep -o -e '=[^=]*\.BMP' missing_res_diff.txt >files
sed -i 's/=//g' files
while read p; do
    cp /home/paladin/Games/exported_bmp/${p} ../NWNForBG/bmp
done < files


