#!/usr/bin/env python3
import re
import shutil
import os

def diff_and_save(orig_name):
    orig_end = "_orig.txt"
    if not orig_name.endswith(orig_end):
        return
    basename = orig_name[0:-len(orig_end)]
    filename = basename + ".txt"
    f1 = open(filename).readlines()
    f2 = open(orig_name).readlines()
    f1 = [i.replace('\n', '') for i in f1]
    f2 = set([i.replace('\n', '') for i in f2])
    uniq_lines = []
    for l in f1:
        if l not in f2:
            uniq_lines.append(l)
    print('\n'.join(uniq_lines), file=open(basename + "_diff.txt", 'w'))


extensions = {"itm": ["itm"],
              "spl": ["spl"],
              "vef": ["vvc", "bam"],
              "wav": ["wav"],
              "bcs": ["baf"],
              "cre": ["cre"],
              "eff": ["eff"],
              "bmp": ["bmp"],
              "bam": ["bam"]}


def add_orig_res(result, orig_res_name):
    split_tup = os.path.splitext(orig_res_name)
    orig_ext = split_tup[1][1:].lower()
    if orig_ext in extensions:
        for ext in extensions[orig_ext]:
            if ext not in result:
                result[ext] = set()
            result[ext].add(split_tup[0] + "." + ext.upper())


def parse1(filename, result):
    f1 = open(filename).readlines()
    for l in f1:
        for ext in extensions:
            m = re.search("=([^=]*.{})".format(ext.upper()), l)
            if m:
                add_orig_res(result, m.group(1))


def parse2(filename, result):
    f1 = open(filename).readlines()
    for l in f1:
        for ext in extensions:
            m = re.search("\\[{}\\] - (.*)".format(ext.upper()), l)
            if m:
                res_name = m.group(1).upper() + "." + ext.upper()
                add_orig_res(result, res_name)


def parse3(filename, result):
    f1 = open(filename).readlines()
    for l in f1:
        m = re.search("Item: (.*\\.ITM)", l)
        if m:
            res_name = m.group(1).upper()
            if 'itm' not in result:
                result['itm'] = set()
            result['itm'].add(res_name)


def parse4(filename, result):
    f1 = open(filename).readlines()
    for l in f1:
        m = re.search("Sound: ([^,]*),", l)
        if m:
            res_name = m.group(1).upper() + ".WAV"
            if 'wav' not in result:
                result['wav'] = set()
            result['wav'].add(res_name)


diff_and_save('missing_res_orig.txt')
diff_and_save('dialog_check_orig.txt')
diff_and_save('items_not_in_inventory_orig.txt')
diff_and_save('missing_sound_refs_orig.txt')
diff_and_save('script_check_orig.txt')
diff_and_save('unknown_ids1_orig.txt')
diff_and_save('unknown_ids2_orig.txt')

result = {}
parse1("missing_res_diff.txt", result)
parse2("dialog_check_diff.txt", result)
parse3("items_not_in_inventory_diff.txt", result)
parse4("missing_sound_refs_diff.txt", result)
parse2("script_check_diff.txt", result)

print(result)
sources = {"itm": ["itm", "itm"],
           "spl": ["spl", "spl"],
           "vvc": ["vvc", "vvc"],
           "wav": ["wav", "audio"],
           "baf": ["script", "scripts"],
           "cre": ["cre", "cre"],
           "eff": ["eff", "eff"],
           "bmp": ["bmp", "bmp"],
           "bam": ["bam", "bam"]}

copy_from = "/home/paladin/Games/exported_"
copy_to = "/home/paladin/source/NWNForBG/NWNForBG/"
for s in sources:
    if s in result:
        for res in result[s]:
            c_from = copy_from + sources[s][0] + "/" + res
            c_to = copy_to + sources[s][1] + "/" + res
            if os.path.isfile(c_from) and not os.path.isfile(c_to):
                shutil.copyfile(c_from, c_to)



