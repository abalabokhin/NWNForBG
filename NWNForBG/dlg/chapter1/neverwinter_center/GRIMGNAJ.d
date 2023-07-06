// Центр Невервинтера Ярмарка Мечей Гримгнау Дварф Священник  Есть что-то тревожное в этом дварфе-священнике. Его глаза холодны и пусты, а его мертвенная неподвижность почти неестественна.

BEGIN ~GRIMGNAJ~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)!Global("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @1 GOTO 58
  IF ~  Global("NWNChapter","GLOBAL",3)~ THEN REPLY @1 GOTO 98
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Global("GrimgnawQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("GrimgnawQuest","GLOBAL",1)GlobalTimerExpired("GrimgnawTimer","LOCALS")~ THEN REPLY @5 GOTO 20
  IF ~  Global("GrimgnawQuest","GLOBAL",2)GlobalTimerExpired("GrimgnawTimer","LOCALS")~ THEN REPLY @5 GOTO 32
  IF ~  Global("GrimgnawQuest","GLOBAL",3)~ THEN REPLY @5 GOTO 50
  IF ~  OR(2)GlobalGT("GrimgnawQuest","GLOBAL",3)GlobalTimerNotExpired("GrimgnawTimer","LOCALS")!Global("GrimgnawQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 51
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 52
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 53
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @13
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @14
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @15
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @22
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.1
  SAY @23
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.2
  SAY @24
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @36
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.2 15.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)LeaveParty()~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @38
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1
  SAY @39
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",1)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @40
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",1)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.2
  SAY @41
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN GOTO 21
  IF ~  !Race(LastTalkedToBy(Myself),DWARF)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @46
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21 22
  SAY @47
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 25
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24
  SAY @52
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 27
  IF ~~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @56
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.2 27.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 29
  IF ~~ THEN REPLY @59 GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 30
  IF ~~ THEN REPLY @62 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @39
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",2)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @63
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",2)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.3
  SAY @64
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN GOTO 33
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)!Race(LastTalkedToBy(Myself),DWARF)~ THEN GOTO 34
  IF ~!Class(LastTalkedToBy(Myself),CLERIC_ALL)!Race(LastTalkedToBy(Myself),DWARF)~ THEN GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @65
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY @66
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @67
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 37
  IF ~~ THEN REPLY @70 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36
  SAY @71
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 39
  IF ~~ THEN REPLY @74 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 41
  IF ~~ THEN REPLY @77 GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY @78
  IF ~~ THEN REPLY @79 GOTO 16
  IF ~~ THEN REPLY @80 GOTO 39
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY @81
  IF ~  PartyHasItem("Nwmisc41")~ THEN REPLY @82 GOTO 43
  IF ~~ THEN REPLY @83 GOTO 44
  IF ~~ THEN REPLY @84 GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 1.6
  SAY @85
  IF ~  PartyHasItem("Nwmisc41")~ THEN REPLY @82 GOTO 43
  IF ~~ THEN REPLY @83 GOTO 44
  IF ~~ THEN REPLY @84 GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 41.1 42.1
  SAY @86
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 1.8
  SAY @87
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @88
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY @89
  IF ~~ THEN REPLY @90 GOTO 47
  IF ~~ THEN REPLY @91 GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @92
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 45.2
  SAY @93
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 47.1 48.1
  SAY @94
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("Grimgnaw",100000)TakePartyItem("Nwmisc41")GiveItemCreate("AmuGrim1",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.4
  SAY @81
  IF ~  PartyHasItem("Nwmisc41")~ THEN REPLY @82 GOTO 43
  IF ~~ THEN REPLY @83 GOTO 44
  IF ~~ THEN REPLY @84 GOTO 45
END

IF ~~ THEN BEGIN 51 // from: 1.5
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from: 1.6
  SAY @95
  IF ~~ THEN REPLY @96 GOTO 54
  IF ~~ THEN REPLY @97 GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 1.7
  SAY @98
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY @99
  IF ~~ THEN REPLY @100 GOTO 56
  IF ~~ THEN REPLY @101 GOTO 57
END

IF ~~ THEN BEGIN 55 // from: 52.2
  SAY @102
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY @103
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.2
  SAY @104
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.2
  SAY @3
  IF ~  Global("GrimgnawQuest2","GLOBAL",0)~ THEN REPLY @105 GOTO 59
  IF ~  Global("GrimgnawQuest2","GLOBAL",1)GlobalTimerExpired("GrimgnawTimer","LOCALS")~ THEN REPLY @106 GOTO 68
  IF ~  Global("GrimgnawQuest2","GLOBAL",2)GlobalTimerExpired("GrimgnawTimer","LOCALS")~ THEN REPLY @106 GOTO 81
  IF ~  Global("GrimgnawQuest2","GLOBAL",3)~ THEN REPLY @107 GOTO 92
  IF ~  OR(2)GlobalGT("GrimgnawQuest2","GLOBAL",3)GlobalTimerNotExpired("GrimgnawTimer","LOCALS")!Global("GrimgnawQuest2","GLOBAL",66)~ THEN REPLY @107 GOTO 93
  IF ~  Global("GrimgnawQuest2","GLOBAL",66)~ THEN REPLY @107 GOTO 154
  IF ~~ THEN REPLY @7 GOTO 94
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY @108
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @109 GOTO 60
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @109 GOTO 61
  IF ~~ THEN REPLY @110 GOTO 62
  IF ~~ THEN REPLY @111 GOTO 55
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @112
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY @113
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 62 // from: 59.3
  SAY @114
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY @115
  IF ~~ THEN REPLY @116 GOTO 64
  IF ~~ THEN REPLY @117 GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63
  SAY @118
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY @119
  IF ~~ THEN REPLY @120 GOTO 66
  IF ~~ THEN REPLY @121 GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65
  SAY @122
  IF ~~ THEN REPLY @59 GOTO 67
  IF ~~ THEN REPLY @58 GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @123
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",1)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 68 // from: 58.2
  SAY @124
  IF ~~ THEN REPLY @125 GOTO 69
  IF ~~ THEN REPLY @126 GOTO 55
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY @127
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY @128
  IF ~~ THEN REPLY @129 GOTO 71
  IF ~~ THEN REPLY @130 GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70
  SAY @131
  IF ~~ THEN REPLY @132 GOTO 72
  IF ~~ THEN REPLY @133 GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71
  SAY @134
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.3
  SAY @135
  IF ~~ THEN REPLY @136 GOTO 74
  IF ~~ THEN REPLY @58 GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73
  SAY @137
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74
  SAY @138
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY @139
  IF ~~ THEN REPLY @140 GOTO 77
  IF ~~ THEN REPLY @141 GOTO 78
  IF ~~ THEN REPLY @142 GOTO 78
END

IF ~~ THEN BEGIN 77 // from: 76.1
  SAY @143
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 76.2
  SAY @144
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 77.1 78.1
  SAY @145
  IF ~~ THEN REPLY @146 GOTO 80
  IF ~~ THEN REPLY @147 GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79
  SAY @148
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",2)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 58.3
  SAY @149
  IF ~~ THEN REPLY @150 GOTO 82
  IF ~~ THEN REPLY @151 GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY @152
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 81.2
  SAY @153
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY @154
  IF ~~ THEN REPLY @155 GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.1
  SAY @156
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.1
  SAY @157
  IF ~  PartyHasItem("Nwmisc42")~ THEN REPLY @158 GOTO 87
  IF ~~ THEN REPLY @159 GOTO 90
  IF ~~ THEN REPLY @160 GOTO 91
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY @161
  IF ~  PartyHasItem("AmuGrim1")~ THEN REPLY @162 GOTO 88
  IF ~  !PartyHasItem("AmuGrim1")~ THEN REPLY @162 GOTO 89
  IF ~  PartyHasItem("AmuGrim1")~ THEN REPLY @163 GOTO 88
  IF ~  !PartyHasItem("AmuGrim1")~ THEN REPLY @163 GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 87.1 87.3
  SAY @164
  IF ~~THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",4)AddexperienceParty(60000)AddXPObject("Grimgnaw",100000)TakePartyItem("Nwmisc42")
TakePartyItem("AmuGrim1")DestroyItem("AmuGrim1")GiveItemCreate("AmuGrim2",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 87.2 87.4
  SAY @165
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("Grimgnaw",100000)TakePartyItem("Nwmisc42")GiveItemCreate("AmuGrim2",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 86.2
  SAY @166
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 86.3
  SAY @167
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 58.4
  SAY @157
  IF ~  PartyHasItem("Nwmisc42")~ THEN REPLY @158 GOTO 87
  IF ~~ THEN REPLY @159 GOTO 90
  IF ~~ THEN REPLY @160 GOTO 91
END

IF ~~ THEN BEGIN 93 // from: 58.5
  SAY @123
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 94 // from: 58.6
  SAY @168
  IF ~~ THEN REPLY @169 GOTO 95
  IF ~~ THEN REPLY @170 GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.1
  SAY @171
  IF ~~ THEN REPLY @172 GOTO 97
  IF ~~ THEN REPLY @170 GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.2
  SAY @102
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.1
  SAY @173
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 98 // from: 0.3
  SAY @3
  IF ~  Global("GrimgnawQuest3","GLOBAL",0)~ THEN REPLY @174 GOTO 99
  IF ~  Global("GrimgnawQuest3","GLOBAL",1)GlobalTimerExpired("GrimgnawTimer","LOCALS")~ THEN REPLY @175 GOTO 108
  IF ~  Global("GrimgnawQuest3","GLOBAL",2)GlobalTimerExpired("GrimgnawTimer","LOCALS")~ THEN REPLY @175 GOTO 122
  IF ~  Global("GrimgnawQuest3","GLOBAL",3)~ THEN REPLY @175 GOTO 148
  IF ~  OR(2)GlobalGT("GrimgnawQuest3","GLOBAL",3)GlobalTimerNotExpired("GrimgnawTimer","LOCALS")!Global("GrimgnawQuest3","GLOBAL",66)~ THEN REPLY @175 GOTO 149
  IF ~~ THEN REPLY @7 GOTO 150
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY @176
  IF ~~ THEN REPLY @177 GOTO 100
  IF ~~ THEN REPLY @178 GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.1
  SAY @179
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99.2 100.1
  SAY @180
  IF ~~ THEN REPLY @181 GOTO 102
  IF ~~ THEN REPLY @182 GOTO 103
  IF ~~ THEN REPLY @183 GOTO 15
END

IF ~~ THEN BEGIN 102 // from: 101.1
  SAY @184
  IF ~~ THEN REPLY @185 GOTO 104
  IF ~~ THEN REPLY @186 GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 101.2
  SAY @187
  IF ~~ THEN REPLY @185 GOTO 104
  IF ~~ THEN REPLY @186 GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 102 103
  SAY @188
  IF ~~ THEN REPLY @189 GOTO 105
  IF ~~ THEN REPLY @190 GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 104.1
  SAY @191
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 106 // from: 104.2
  SAY @192
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 105 106
  SAY @193
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest3","GLOBAL",1)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 98.2
  SAY @194
  IF ~~ THEN REPLY @195 GOTO 109
  IF ~~ THEN REPLY @196 GOTO 96
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY @197
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.1
  SAY @198
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.1
  SAY @199
  IF ~~ THEN REPLY @58 GOTO 112
  IF ~~ THEN REPLY @200 GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111
  SAY @201
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.1
  SAY @202
  IF ~~ THEN REPLY @203 GOTO 114
  IF ~~ THEN REPLY @204 GOTO 115
END

IF ~~ THEN BEGIN 114 // from: 113.1
  SAY @205
  IF ~~ THEN REPLY @206 GOTO 115
  IF ~~ THEN REPLY @183 GOTO 15
END

IF ~~ THEN BEGIN 115 // from: 113.2 114.2
  SAY @207
  IF ~~ THEN REPLY @208 GOTO 116
  IF ~~ THEN REPLY @58 GOTO 116
END

IF ~~ THEN BEGIN 116 // from: 115
  SAY @209
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.1
  SAY @210
  IF ~~ THEN REPLY @211 GOTO 118
  IF ~~ THEN REPLY @212 GOTO 119
END

IF ~~ THEN BEGIN 118 // from: 117.1
  SAY @213
  IF ~~ THEN REPLY @214 GOTO 120
  IF ~~ THEN REPLY @215 GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 117.2
  SAY @216
  IF ~~ THEN REPLY @211 GOTO 118
END

IF ~~ THEN BEGIN 120 // from: 118
  SAY @217
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.1
  SAY @218
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest3","GLOBAL",2)SetGlobalTimer("GrimgnawTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 122 // from: 98.3
  SAY @219
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.1
  SAY @220
  IF ~~ THEN REPLY @221 GOTO 124
  IF ~~ THEN REPLY @222 GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 123.1
  SAY @223
  IF ~~ THEN REPLY @224 GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 123.2
  SAY @225
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from: 124.1
  SAY @226
  IF ~~ THEN REPLY @227 GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY @228
  IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127.1
  SAY @229
  IF ~~ THEN REPLY @230 GOTO 129
  IF ~~ THEN REPLY @231 GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128
  SAY @232
  IF ~~ THEN REPLY @233 GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.1
  SAY @234
  IF ~  PartyHasItem("Nwmisc43")~ THEN REPLY @235 GOTO 131
  IF ~~ THEN REPLY @236 GOTO 132
  IF ~~ THEN REPLY @237 GOTO 133
END

IF ~~ THEN BEGIN 131 // from: 130.1
  SAY @238
  IF ~~ THEN REPLY @239 GOTO 134
  IF ~~ THEN REPLY @240 GOTO 134
END

IF ~~ THEN BEGIN 132 // from: 130.2
  SAY @241
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 133 // from: 130.3
  SAY @242
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 131
  SAY @243
  IF ~~ THEN REPLY @244 GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134
  SAY @245
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135
  SAY @246
  IF ~~ THEN REPLY @247 GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136
  SAY @248
  IF ~~ THEN DO ~SetGlobal("GrimgnawQuest3","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("Grimgnaw",150000)TakePartyItem("Nwmisc43")TakePartyItem("AmuGrim2")DestroyItem("AmuGrim2")GiveItemCreate("AmuGrim3",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 98.4
  SAY @249
  IF ~  PartyHasItem("Nwmisc43")~ THEN REPLY @235 GOTO 131
  IF ~~ THEN REPLY @236 GOTO 132
  IF ~~ THEN REPLY @237 GOTO 133
END

IF ~~ THEN BEGIN 149 // from: 98.5
  SAY @193
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from: 98.6
  SAY @250
  IF ~~ THEN REPLY @251 GOTO 151
  IF ~~ THEN REPLY @252 GOTO 55
END

IF ~~ THEN BEGIN 151 // from: 150.1
  SAY @253
  IF ~~ THEN REPLY @254 GOTO 152
  IF ~~ THEN REPLY @252 GOTO 55
END

IF ~~ THEN BEGIN 152 // from: 151.1
  SAY @255
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY @256
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 154 // from: 58.6
  SAY @257
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("Chapter4Talk","LOCALS",0)~ THEN BEGIN 138 // from:
  SAY @258
  IF ~~ THEN REPLY @259 GOTO 139
  IF ~~ THEN REPLY @260 GOTO 140
END

IF ~~ THEN BEGIN 139 // from: 138.1
  SAY @261
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 138.2
  SAY @262
  IF ~~ THEN REPLY @263 GOTO 139
  IF ~~ THEN REPLY @264 GOTO 142
END

IF ~~ THEN BEGIN 141 // from: 139.1
  SAY @265
  IF ~~ THEN REPLY @266 GOTO 143
  IF ~~ THEN REPLY @267 GOTO 143
  IF ~~ THEN REPLY @268 GOTO 144
END

IF ~~ THEN BEGIN 142 // from: 140.2
  SAY @269
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 141.1
  SAY @270
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 144 // from: 141.3
  SAY @271
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 145 // from: 143.1
  SAY @272
  IF ~~ THEN REPLY @273 GOTO 146
  IF ~~ THEN REPLY @274 GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.1
  SAY @275
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.2
  SAY @276
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

