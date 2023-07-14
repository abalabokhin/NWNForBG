#!/bin/bash
filename='cre_with_missing_anim.txt'
echo Start
while read p; do
    echo "COPY_EXISTING ~${p}~ ~override~"
    echo "  WRITE_LONG 0x28 IDS_OF_SYMBOL (animate ~ARUNDEL~)"
    echo "BUT_ONLY_IF_CHANGES"
    echo ""
done < "$filename"


