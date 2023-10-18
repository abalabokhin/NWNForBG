#!/bin/bash
filename='cre_with_missing_anim.txt'
while read p; do
    sa=($p)
    echo "COPY_EXISTING ~${sa[0]}~ ~override~"
    echo "  WRITE_LONG 0x28 IDS_OF_SYMBOL (animate ~${sa[1]}~)"
    echo "BUT_ONLY_IF_CHANGES"
    echo ""
done < "$filename"


