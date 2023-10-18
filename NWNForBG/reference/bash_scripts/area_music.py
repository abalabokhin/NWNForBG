#!/usr/bin/env python3

import os

music_names = [
    "NWNThm", "NWNRurday", "NWNRurnit", "NWNRurald2", "NWNMines1", "NWNMines2", "NWNCastle", "NWNDockday", "NWNDocknit", "NWNMarket", "NWNCitynit", "NWNSlumday", "NWNSlumnit", "NWNCrypt1", "NWNWealth", "NWNForstd1", "NWNForstd2", "NWNForestn", "NWNDung1", "NWNRich", "NWNSewer", "NWNStore", "NWNTavern1", "NWNTavern2", "NWNTavern3", "NWNTavern4", "NWNTemplg1", "NWNTemplg2", "NWNTemplev", "NWNMain", "NWNAargend", "NWNAribev", "NWNAribgd", "NWNMaugrim", "NWNMorag", "NWNChapt1", "NWNChapt2", "NWNChapt3", "NWNChapt4", "NWNThem", "NWNB5", "NWNB6", "NWN84"
]

def find_music(filename):
    fh = open(filename, 'rb')
    ba = bytearray(fh.read())
    # READ_LONG 0xbc ofsSongs
    music_offset_bytes = ba[0xbc:0xbc+4]
    music_offset = int.from_bytes(music_offset_bytes, "little")
    offset_to_v = {}
    for i in range(10):
        music_bytes = ba[music_offset + i * 4 : music_offset + i * 4 + 4]
        music_int = int.from_bytes(music_bytes, "little")
        if 114 <= music_int <= 156:
            offset_to_v[i] = music_names[music_int - 114]
    if offset_to_v:
        print(filename)
        print("READ_LONG 0xbc ofsSongs")
        for offset in offset_to_v:
            print("WRITE_LONG (ofsSongs + {:#x}) {}".format(offset * 4, offset_to_v[offset]))




search_in = "../NWNForBG/are"
file_list = os.listdir(search_in)
file_list.sort()
for file in file_list:
    if file.endswith(".ARE"):
        filename = os.path.join(search_in, file)
        find_music(filename)


