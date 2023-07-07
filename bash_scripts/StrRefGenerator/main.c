#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <windows.h>

UINT    SplitNumber;
UINT    Tuning = 0;
UCHAR   *buf;
BOOL    header = 0;
char    *infilename;
char    extension[4];

UINT
_LONG(UINT offset) {
    return * (UINT *)(&buf[offset]);
}

USHORT
_SHORT(UINT offset) {
    return * (USHORT *)(&buf[offset]);
}

#define PRINT_HEADER()                                                    \
            printf("\n");                                               \
            printf("COPY ~%s/%s~ ~override~", extension, infilename);   \
            printf("\n");


void
SAY(UINT offset) {
    UINT    value = _LONG(offset);

    if (value == 0xFFFFFFFF ||
        value == 0          ||
        value == 9999999)
        ;
    else
    if (value > SplitNumber) {
        if (!header) {
            PRINT_HEADER()
            header = 1;
        }

        printf("  SAY 0x%X\t@%u\n", offset, value);
    }
    else
        if (Tuning & 0x1) {
            if (!header) {
                PRINT_HEADER()
                header = 1;
            }
            printf("  SAY 0x%X\t#%u\n", offset, value);
        }
}

void
EFFECTS_108(UINT offset, UINT cnt, UINT size) {
    UINT i, opcode;

    for (i=0; i < cnt; i++) {
        opcode = _LONG(offset + i*size + 0x8);  // 8 - opcode offset

        if (opcode == 139)  // Display string
            SAY(offset + i*size + 0x14); // strref
        else
        if (opcode == 267)  // Disable display string
            SAY(offset + i*size + 0x14); // strref
    }
}

void
EFFECTS_30(UINT offset, USHORT cnt, UINT size) {
    UINT i, opcode;

    for (i=0; i < cnt; i++) {
        opcode = _SHORT(offset + i*size + 0x0);  // 0 - opcode offset

        if (opcode == 139)  // Display string
            SAY(offset + i*size + 0x4); // strref
        else
        if (opcode == 267)  // Disable display string
            SAY(offset + i*size + 0x4); // strref
    }
}

void
ABILITIES_38(UINT offset, UINT cnt, UINT size, UINT eff_offset) {
    UINT i, effects, firstindex;

    for (i=0; i < cnt; i++) {
        effects    = _SHORT(offset + i*size + 0x1e);
        firstindex = _SHORT(offset + i*size + 0x20);

        EFFECTS_30(eff_offset + firstindex*0x30, effects, 0x30);
    }
}

#define ITM 0
#define STO 1
#define CRE 2
#define SPL 3
#define ARE 4

int
main(int argc, char *argv[]) {
    WIN32_FIND_DATA FindFileData;
    char    *sFilename    = argv[1];
    char    *sSplitNumber = argv[2];
    char    *sTuning      = argv[3];
    FILE    *filein;
    HANDLE  hFind;
    char    *ptr;
    long    filein_size;
    UINT    mode;
    UINT    i;
    UINT    offset, cnt;


    if (sFilename    == NULL ||
        sSplitNumber == NULL) {
        printf("Usage: \n");
        printf("  StrRefGenerator.exe *.itm 74106 \n");
        printf("Enable SAY # < 74106: \n");
        printf("  StrRefGenerator.exe *.itm 74106 1 \n");
        printf("Enable copying even unchanged file: \n");
        printf("  StrRefGenerator.exe *.itm 74106 2 \n");
        printf("\n");
        printf("Supported: \n");
        printf("  *.itm *.cre *.are *.spl *.sto \n");
        exit(0);
    }

    sscanf(sSplitNumber, "%u", &SplitNumber);

    if (sTuning)
        sscanf(sTuning, "%u", &Tuning);

    hFind = FindFirstFileA(sFilename, &FindFileData);
    infilename = FindFileData.cFileName;

    // filename parse
    ptr = strstr(infilename, ".");
    if (ptr) {
        strcpy(extension, ptr + 1);
        _strlwr(extension);

        if (_stricmp(extension, "itm") == 0)
            mode = ITM;
        else
        if (_stricmp(extension, "sto") == 0)
            mode = STO;
        else
        if (_stricmp(extension, "cre") == 0)
            mode = CRE;
        else
        if (_stricmp(extension, "spl") == 0)
            mode = SPL;
        else
        if (_stricmp(extension, "are") == 0)
            mode = ARE;
        else {
            printf("Unsupported extension %s \n", extension);
            exit(0);
        }
    }

    do {
        _strlwr(FindFileData.cFileName);
        infilename = FindFileData.cFileName;
        filein = fopen(infilename, "rb");
        if (!filein) {
            printf("File %s can not be opened \n", infilename);
            exit(0);
        }
        fseek(filein, 0, SEEK_END);
        filein_size = ftell(filein);
        fseek(filein, 0, SEEK_SET);
        buf = (UCHAR *) malloc(filein_size);
        fread(buf, 1, filein_size, filein);

        header = 0;
        if (Tuning & 0x2) {
            PRINT_HEADER()
            header = 1;
        }

        if (mode == STO) {
            SAY(0xC);
        } else

        if (mode == ITM) {
            SAY(0x8);
            SAY(0xC);
            SAY(0x50);
            SAY(0x54);

            EFFECTS_30  (_LONG(0x6a), _SHORT(0x70), 0x30);              // off=6a, num=70 short, size=30
            ABILITIES_38(_LONG(0x64), _SHORT(0x68), 0x38, _LONG(0x6a)); // off=64, num=68 short, size=38, efftable=6a
        } else

        if (mode == CRE) {
            SAY(0x8);
            SAY(0xC);

            for (i = 0xA4; i <= 0x230; i = i + 4)
                SAY(i);

            EFFECTS_108(_LONG(0x2c4), _LONG(0x2c8), 0x108);     // off=2c4, num=2c8, size=108
        } else

        if (mode == SPL) {
            SAY(0x8);
            SAY(0xC);
            SAY(0x50);
            SAY(0x54);

            EFFECTS_30  (_LONG(0x6a), _SHORT(0x70), 0x30);              // off=6a, num=70 short, size=30
            ABILITIES_38(_LONG(0x64), _SHORT(0x68), 0x28, _LONG(0x6a)); // off=64, num=68 short, size=28, efftable=6a
        } else

        if (mode == ARE) {
            // Triggers, info point text
            offset = _LONG(0x5c);
            cnt    = _SHORT(0x5a);
            for (i = 0; i < cnt; i++)
                SAY(offset + i*0xC4 + 0x64);

            // Containers, lockpick msg
            offset = _LONG(0x70);
            cnt    = _SHORT(0x74);
            for (i = 0; i < cnt; i++) {
                SAY(offset + i*0xC0 + 0x84);
            }

            // Doors, unlock msg + speakername
            offset = _LONG(0xa8);
            cnt    = _LONG(0xa4);
            for (i = 0; i < cnt; i++) {
                SAY(offset + i*0xC8 + 0x98);
                SAY(offset + i*0xC8 + 0xb4);
            }

            // Rest encounters
            offset = _LONG(0xc0);
            for (i = 0; i < 10; i++)
                SAY(offset + 0x20 + i*4);

            // Automap notes
            offset = _LONG(0xc4);
            cnt    = _LONG(0xc8);
            for (i = 0; i < cnt; i++)
                SAY(offset + i*0x34 + 0x4);
        }

        free (buf);
        fclose(filein);
    } while (FindNextFile(hFind, &FindFileData));

    FindClose(hFind);
}
