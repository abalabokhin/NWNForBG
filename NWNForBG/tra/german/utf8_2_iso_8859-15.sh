#!/bin/bash
mkdir iso_8859-15
for a in $(find . -iname "*.tra"); do iconv -f utf-8 -t ISO_8859-15 <"$a" >iso_8859-15/"$a" ; done
