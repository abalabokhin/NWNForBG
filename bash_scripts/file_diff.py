f1 = open('missing_res.txt').readlines()
f2 = open('missing_res_orig.txt').readlines()
f1 = [i.replace('\n', '') for i in f1]
f2 = [i.replace('\n', '') for i in f2]
l = [a for a in f1 if all(b not in a for b in f2)]
print('\n'.join(l))
