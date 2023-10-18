#!/usr/bin/env python3

import subprocess
from pathlib import Path
import os.path

for file_path in Path('/home/paladin/source/NWNForBG/NWNForBG/dlg').rglob('*.d'):
    basename = os.path.splitext(os.path.basename(file_path))[0]
    file_path_tra = '/home/paladin/source/NWNForBG/NWNForBG/tra/russian/' + basename + ".tra"
    args = ["wine", "./weidu.exe", "--traify", str(file_path), "--traify-old-tra", file_path_tra, "--out", str(file_path) + "1", "--traify-comment"]
    print(" ".join(args))
    subprocess.run(args)




#find /home/paladin/script/NWNForBG/NWNForBG/dlg -iname "*.d"  -exec wine ./weidu.exe --traify {}
#--traify-old-tra /home/paladin/script/NWNForBG/NWNForBG/tra/russian/ fwki.tra \;


#--traify fwki.d --traify-old-tra fwki.tra --out fwki-new --traify-comment



