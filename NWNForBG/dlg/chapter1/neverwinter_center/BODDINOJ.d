// Центр Невервинтера Ярмарка Мечей   Боддинок Глинкл Гном  Этот карлик-чародей все время морщит лоб, как будто с предельным вниманием изучает окружающий мир осторожным глубокомысленным взором.

BEGIN ~BODDINOJ~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)!Global("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @1 GOTO 52
  IF ~  Global("NWNChapter","GLOBAL",3)~ THEN REPLY @1 GOTO 99
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Global("BoddinokQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("BoddinokQuest","GLOBAL",1)GlobalTimerExpired("BoddinokTimer","LOCALS")~ THEN REPLY @5 GOTO 19
  IF ~  Global("BoddinokQuest","GLOBAL",2)GlobalTimerExpired("BoddinokTimer","LOCALS")~ THEN REPLY @5 GOTO 32
  IF ~  Global("BoddinokQuest","GLOBAL",3)~ THEN REPLY @5 GOTO 42
  IF ~  OR(2)GlobalGT("BoddinokQuest","GLOBAL",3)GlobalTimerNotExpired("BoddinokTimer","LOCALS")!Global("BoddinokQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 43
  IF ~  Global("BoddinokQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 44
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 45
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 46
  IF ~~ THEN REPLY @2 GOTO 2
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
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @19
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.2
  SAY @23
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2
  SAY @28
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.3
  SAY @29
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1 14.2
  SAY @33
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 17
  IF ~~ THEN REPLY @36 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",1)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @38
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",1)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.2
  SAY @39
  IF ~  Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN GOTO 20
  IF ~  !Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @40
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.1
  SAY @41
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @45
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @46
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 26
END

IF ~~ THEN BEGIN 26// from: 25.1 25.2
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 28
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @55 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 30
  IF ~~ THEN REPLY @60 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @61
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",2)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @62
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.3
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 33
  IF ~~ THEN REPLY @65 GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @66
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @67
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @68
  IF ~  PartyHasItem("Nwmisc38")~ THEN REPLY @69 GOTO 36
  IF ~~ THEN REPLY @70 GOTO 37
  IF ~~ THEN REPLY @71 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @72
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @73
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY @74
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 40
  IF ~~ THEN REPLY @77 GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @78
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("Boddinok",100000)TakePartyItem("Nwmisc38")GiveItemCreate("RingBod1",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY @79
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 1.4
  SAY @80
  IF ~  PartyHasItem("Nwmisc38")~ THEN REPLY @69 GOTO 36
  IF ~~ THEN REPLY @70 GOTO 37
  IF ~~ THEN REPLY @71 GOTO 38
END

IF ~~ THEN BEGIN 43 // from: 1.5
  SAY @61
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.7
  SAY @82
  IF ~~ THEN REPLY @83 GOTO 47
  IF ~~ THEN REPLY @84 GOTO 2
END

IF ~~ THEN BEGIN 46 // from: 1.8
  SAY @85
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY @86
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 49
  IF ~~ THEN REPLY @89 GOTO 2
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 50
  IF ~~ THEN REPLY @89 GOTO 2
END

IF ~~ THEN BEGIN 50 // from: 49.1
  SAY @92
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY @93
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from: 0.2
  SAY @3
  IF ~  Global("BoddinokQuest2","GLOBAL",0)~ THEN REPLY @94 GOTO 53
  IF ~  Global("BoddinokQuest2","GLOBAL",1)GlobalTimerExpired("BoddinokTimer","LOCALS")~ THEN REPLY @95 GOTO 62
  IF ~  Global("BoddinokQuest2","GLOBAL",2)GlobalTimerExpired("BoddinokTimer","LOCALS")~ THEN REPLY @95 GOTO 79
  IF ~  Global("BoddinokQuest2","GLOBAL",3)~ THEN REPLY @95 GOTO 91
  IF ~  OR(2)GlobalGT("BoddinokQuest2","GLOBAL",3)GlobalTimerNotExpired("BoddinokTimer","LOCALS")!Global("BoddinokQuest2","GLOBAL",66)~ THEN REPLY @95 GOTO 92
  IF ~Global("BoddinokQuest2","GLOBAL",66)~ THEN REPLY @95 GOTO 44
  IF ~~ THEN REPLY @7 GOTO 93
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 54
  IF ~~ THEN REPLY @98 GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @99
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY @100
  IF ~~ THEN REPLY @101 GOTO 56
  IF ~~ THEN REPLY @102 GOTO 57
  IF ~~ THEN REPLY @103 GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY @104
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 55.2
  SAY @105
  IF ~~ THEN REPLY @106 GOTO 56
  IF ~~ THEN REPLY @103 GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.2
  SAY @107
  IF ~~ THEN REPLY @108 GOTO 59
  IF ~~ THEN REPLY @109 GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY @110
  IF ~~ THEN REPLY @111 GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY @112
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1
  SAY @113
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",1)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 52.2
  SAY @114
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY @115
  IF ~~ THEN REPLY @116 GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.1 63.2
  SAY @117
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY @118
  IF ~~ THEN REPLY @119 GOTO 66
  IF ~~ THEN REPLY @120 GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 65.1
  SAY @121
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 65.2
  SAY @122
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 66.1
  SAY @123
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY @124
  IF ~~ THEN REPLY @125 GOTO 70
  IF ~~ THEN REPLY @126 GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.1 69.2
  SAY @127
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY @128
  IF ~~ THEN REPLY @129 GOTO 72
  IF ~~ THEN REPLY @130 GOTO 73
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY @131
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.2
  SAY @132
  IF ~~ THEN REPLY @133 GOTO 74
  IF ~~ THEN REPLY @134 GOTO 75
  IF ~~ THEN REPLY @135 GOTO 76
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY @136
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 75 // from: 73.2
  SAY @137
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 73.3
  SAY @138
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 74.1 75.1
  SAY @139
  IF ~~ THEN REPLY @140 GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY @141
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",2)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 52.3
  SAY @142
  IF ~~ THEN REPLY @143 GOTO 80
  IF ~~ THEN REPLY @144 GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 79.1
  SAY @145
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @146
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY @147
  IF ~~ THEN REPLY @148 GOTO 83
  IF ~~ THEN REPLY @149 GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.1
  SAY @150
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.1
  SAY @151
  IF ~  PartyHasItem("Nwmisc39")~ THEN REPLY @152 GOTO 85
  IF ~~ THEN REPLY @153 GOTO 86
  IF ~~ THEN REPLY @154 GOTO 87
END

IF ~~ THEN BEGIN 85 // from: 84.1
  SAY @155
  IF ~  PartyHasItem("RingBod1")~ THEN REPLY @156 GOTO 88
  IF ~  !PartyHasItem("RingBod1")~ THEN REPLY @156 GOTO 90
  IF ~  PartyHasItem("RingBod1")~ THEN REPLY @157 GOTO 88
  IF ~  !PartyHasItem("RingBod1")~ THEN REPLY @157 GOTO 90
END

IF ~~ THEN BEGIN 86 // from: 84.2
  SAY @158
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 84.3
  SAY @159
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.1
  SAY @160
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.1
  SAY @161
  IF ~~THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",4)AddexperienceParty(60000)AddXPObject("Boddinok",100000)TakePartyItem("Nwmisc39")TakePartyItem("RingBod1")DestroyItem("RingBod1")GiveItemCreate("RingBod2",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2
  SAY @162
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest2","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("Boddinok",100000)TakePartyItem("Nwmisc39")GiveItemCreate("RingBod2",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 52.4
  SAY @151
  IF ~  PartyHasItem("Nwmisc39")~ THEN REPLY @152 GOTO 85
  IF ~~ THEN REPLY @153 GOTO 86
  IF ~~ THEN REPLY @154 GOTO 87
END

IF ~~ THEN BEGIN 92 // from: 52.5
  SAY @163
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 52.6
  SAY @164
  IF ~~ THEN REPLY @165 GOTO 94
  IF ~~ THEN REPLY @166 GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.1
  SAY @167
  IF ~~ THEN REPLY @168 GOTO 96
  IF ~~ THEN REPLY @166 GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 93.1
  SAY @169
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1
  SAY @170
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.1
  SAY @171
  IF ~~ THEN REPLY @172 GOTO 98
  IF ~~ THEN REPLY @166 GOTO 95
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY @173
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from: 0.3
  SAY @3
  IF ~  Global("BoddinokQuest3","GLOBAL",0)~ THEN REPLY @174 GOTO 100
  IF ~  Global("BoddinokQuest3","GLOBAL",1)GlobalTimerExpired("BoddinokTimer","LOCALS")~ THEN REPLY @175 GOTO 110
  IF ~  Global("BoddinokQuest3","GLOBAL",2)GlobalTimerExpired("BoddinokTimer","LOCALS")~ THEN REPLY @175 GOTO 122
  IF ~  Global("BoddinokQuest3","GLOBAL",3)~ THEN REPLY @175 GOTO 139
  IF ~  OR(2)GlobalGT("BoddinokQuest3","GLOBAL",3)GlobalTimerNotExpired("BoddinokTimer","LOCALS")!Global("BoddinokQuest3","GLOBAL",66)~ THEN REPLY @175 GOTO 140
  IF ~  Global("BoddinokQuest3","GLOBAL",66)~ THEN REPLY @175 GOTO 44
  IF ~~ THEN REPLY @7 GOTO 141
END

IF ~~ THEN BEGIN 100 // from: 99.1
  SAY @176
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.1
  SAY @177
  IF ~~ THEN REPLY @178 GOTO 102
  IF ~~ THEN REPLY @179 GOTO 102
  IF ~~ THEN REPLY @180 GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101
  SAY @181
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.1
  SAY @182
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.1
  SAY @183
  IF ~~ THEN REPLY @184 GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.1
  SAY @185
  IF ~~ THEN REPLY @186 GOTO 106
  IF ~~ THEN REPLY @187 GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.1
  SAY @188
  IF ~~ THEN REPLY @189 GOTO 107
  IF ~~ THEN REPLY @190 GOTO 108
END

IF ~~ THEN BEGIN 107 // from: 106.1
  SAY @191
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 108 // from: 106.2
  SAY @192
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 107.1 108.1
  SAY @193
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest3","GLOBAL",1)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 110 // from: 99.2
  SAY @194
  IF ~~ THEN REPLY @195 GOTO 111
  IF ~~ THEN REPLY @196 GOTO 2
END

IF ~~ THEN BEGIN 111 // from: 110.1
  SAY @197
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.1
  SAY @198
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.1
  SAY @199
  IF ~~ THEN REPLY @200 GOTO 114
  IF ~~ THEN REPLY @186 GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113
  SAY @201
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY @202
  IF ~~ THEN REPLY @203 GOTO 116
  IF ~~ THEN REPLY @204 GOTO 116
END

IF ~~ THEN BEGIN 116 // from: 115
  SAY @205
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.1
  SAY @206
  IF ~~ THEN REPLY @207 GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.1
  SAY @208
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY @209
  IF ~~ THEN REPLY @210 GOTO 120
  IF ~~ THEN REPLY @211 GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119
  SAY @212
  IF ~~ THEN REPLY @213 GOTO 121
  IF ~~ THEN REPLY @214 GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120
  SAY @215
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest3","GLOBAL",2)SetGlobalTimer("BoddinokTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 122 // from: 99.3
  SAY @216
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.1
  SAY @217
  IF ~~ THEN REPLY @218 GOTO 125
  IF ~~ THEN REPLY @219 GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.2
  SAY @220
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY @221
  IF ~~ THEN REPLY @222 GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY @223
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY @217
  IF ~~ THEN REPLY @224 GOTO 128
  IF ~~ THEN REPLY @225 GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 127
  SAY @226
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.1
  SAY @227
  IF ~~ THEN REPLY @228 GOTO 130
  IF ~~ THEN REPLY @229 GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129
  SAY @230
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130
  SAY @231
  IF ~  PartyHasItem("Nwmisc40")~ THEN REPLY @232 GOTO 132
  IF ~~ THEN REPLY @233 GOTO 133
  IF ~~ THEN REPLY @234 GOTO 134
END

IF ~~ THEN BEGIN 132 // from: 131.1
  SAY @235
  IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 133 // from: 131.2
  SAY @236
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 131.3
  SAY @237
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 135 // from: 132.1
  SAY @238
  IF ~~ THEN REPLY @239 GOTO 136
  IF ~~ THEN REPLY @240 GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.1
  SAY @241
  IF ~~ THEN REPLY @242 GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136.1
  SAY @243
  IF ~~ THEN REPLY @244 GOTO 138
  IF ~~ THEN REPLY @245 GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137
  SAY @246
  IF ~~ THEN DO ~SetGlobal("BoddinokQuest3","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("Boddinok",150000)TakePartyItem("Nwmisc40")TakePartyItem("RingBod2")DestroyItem("RingBod2")GiveItemCreate("RingBod3",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 139 // from: 99.4
  SAY @247
  IF ~  PartyHasItem("Nwmisc40")~ THEN REPLY @232 GOTO 132
  IF ~~ THEN REPLY @233 GOTO 133
  IF ~~ THEN REPLY @234 GOTO 134
END

IF ~~ THEN BEGIN 140 // from: 99.5
  SAY @248
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from: 99.6
  SAY @249
  IF ~~ THEN REPLY @250 GOTO 142
  IF ~~ THEN REPLY @84 GOTO 143
END

IF ~~ THEN BEGIN 142 // from: 141.1
  SAY @251
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 143 // from: 141.2
  SAY @252
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from: 142.1
  SAY @253
  IF ~~ THEN REPLY @254 GOTO 145
  IF ~~ THEN REPLY @84 GOTO 143
END

IF ~~ THEN BEGIN 145 // from: 144.1
  SAY @255
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.1
  SAY @256
  IF ~~ THEN REPLY @257 GOTO 147
  IF ~~ THEN REPLY @84 GOTO 143
END

IF ~~ THEN BEGIN 147 // from: 146.1
  SAY @258
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("Chapter4Talk","LOCALS",0)~ THEN BEGIN 148 // from:
  SAY @259
  IF ~~ THEN REPLY @260 GOTO 149
  IF ~~ THEN REPLY @261 GOTO 150
END

IF ~~ THEN BEGIN 149 // from: 148.1
  SAY @262
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 150 // from: 148.2
  SAY @263
  IF ~~ THEN REPLY @264 GOTO 151
  IF ~~ THEN REPLY @265 GOTO 152
END

IF ~~ THEN BEGIN 151 // from: 150.1
  SAY @266
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 152 // 150.2
  SAY @267
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 153 // 149.1 151.1
  SAY @268
  IF ~~ THEN REPLY @269 GOTO 154
  IF ~~ THEN REPLY @270 GOTO 155
  IF ~~ THEN REPLY @271 GOTO 155
END

IF ~~ THEN BEGIN 154 // 153.1
  SAY @272
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // 153.2 153.2 154.1
  SAY @273
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156 // 155.1
  SAY @274
  IF ~~ THEN REPLY @275 GOTO 157
  IF ~~ THEN REPLY @276 GOTO 158
END

IF ~~ THEN BEGIN 157 // from: 155.1
  SAY @277
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 158 // from: 155.2
  SAY @278
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

