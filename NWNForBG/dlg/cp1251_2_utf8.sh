#!/bin/bash
mkdir utf8
for a in $(find . -iname "*.d"); do iconv -f cp1251 -t utf-8 <"$a" >utf8/"$a" ; done
