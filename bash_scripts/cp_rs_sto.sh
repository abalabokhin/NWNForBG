#!/bin/bash
while read p; do
    cp /home/paladin/Games/exported_sto/${p}.STO ../NWNForBG/sto
done < stores_list.txt


