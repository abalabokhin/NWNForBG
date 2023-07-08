#!/usr/bin/env python3

import sys

def diff_and_save(orig_name):
    orig_end = "_orig.txt"
    if not orig_name.endswith(orig_end):
        return
    basename = orig_name[0:-len(orig_end)]
    filename = basename + ".txt"
    f1 = open(filename).readlines()
    f2 = open(orig_name).readlines()
    f1 = [i.replace('\n', '') for i in f1]
    f2 = [i.replace('\n', '') for i in f2]
    l = [a for a in f1 if all(b not in a for b in f2)]
    print('\n'.join(l), file=open(basename + "_diff.txt", 'w'))


diff_and_save('missing_res_orig.txt')

