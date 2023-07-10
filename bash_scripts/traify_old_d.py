#!/usr/bin/env python3

import subprocess
from pathlib import Path
import os.path

for file_path in Path('../NWNForBG/dlg').rglob('*.d'):
    basename = os.path.splitext(os.path.basename(file_path))[0]
    file_path_tra = '../NWNForBG/tra/russian/' + basename + ".tra"
    print(file_path, file_path_tra)
    subprocess.run(["wine", "./weidu.exe", file_path, "--traify-old-tra", file_path_tra, "--out", file_path, "--traify-comment"])




#find /home/paladin/script/NWNForBG/NWNForBG/dlg -iname "*.d"  -exec wine ./weidu.exe --traify {}
#--traify-old-tra /home/paladin/script/NWNForBG/NWNForBG/tra/russian/ fwki.tra \;


#--traify fwki.d --traify-old-tra fwki.tra --out fwki-new --traify-comment



