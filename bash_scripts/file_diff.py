#!/usr/bin/env python3


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


diff_and_save('missing_res_orig.txt')
diff_and_save('dialog_check_orig.txt')
diff_and_save('items_not_in_inventory_orig.txt')
diff_and_save('missing_sound_refs_orig.txt')
diff_and_save('script_check_orig.txt')
diff_and_save('unknown_ids1_orig.txt')
diff_and_save('unknown_ids2_orig.txt')

