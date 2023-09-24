// Центр Невервинтера Ярмарка Мечей   Даэлан Красный Тигр  Полуорк   Варвар   Этот внушительный полуорк-варвар одет в цвета утгардтского племени Красного Тигра. В его взгляде есть что-то благородное, что выгодно отличает его от остальных представителей этой расы.

BEGIN ~NWDAELAJ~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)!Global("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @1 GOTO 50
  IF ~  Global("NWNChapter","GLOBAL",3)~ THEN REPLY @1 GOTO 86
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Global("DaelanQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("DaelanQuest","GLOBAL",1)GlobalTimerExpired("DaelanTimer","LOCALS")~ THEN REPLY @5 GOTO 14
  IF ~  Global("DaelanQuest","GLOBAL",2)GlobalTimerExpired("DaelanTimer","LOCALS")~ THEN REPLY @5 GOTO 25
  IF ~  Global("DaelanQuest","GLOBAL",3)~ THEN REPLY @5 GOTO 34
  IF ~  OR(2)GlobalGT("DaelanQuest","GLOBAL",3)GlobalTimerNotExpired("DaelanTimer","LOCALS")!Global("DaelanQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 41
  IF ~  Global("DaelanQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 42
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN REPLY @7 GOTO 43
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN REPLY @7 GOTO 44
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
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2
  SAY @19
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @26
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1
  SAY @27
  IF ~~ THEN DO ~SetGlobal("DaelanQuest","GLOBAL",1)SetGlobalTimer("DaelanTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.2
  SAY @28
  IF ~~ THEN DO ~SetGlobal("DaelanQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2
  SAY @29
  IF ~  Race(LastTalkedToBy(Myself),HALFORC)~ THEN GOTO 15
  IF ~  !Race(LastTalkedToBy(Myself),HALFORC)~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @30
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @36
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @37
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~~ THEN REPLY @40 GOTO 22
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.3
  SAY @43
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.2 20.4
  SAY @44
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 24
  IF ~~ THEN REPLY @48 GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 23.1 23.2
  SAY @49
  IF ~~ THEN DO ~SetGlobal("DaelanQuest","GLOBAL",2)SetGlobalTimer("DaelanTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.3
  SAY @50
  IF ~  Race(LastTalkedToBy(Myself),HALFORC)~ THEN GOTO 26
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)!Race(LastTalkedToBy(Myself),HALFORC)~ THEN GOTO 27
  IF ~  !Race(LastTalkedToBy(Myself),HALFORC)!Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @51
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @52
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @53
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.1 27.1 28.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 30
  IF ~~ THEN REPLY @56 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @57
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @58
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @59
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 34
  IF ~~ THEN REPLY @62 GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @63
  IF ~  PartyHasItem("Nwmisc34")~ THEN REPLY @64 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @66 GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY @67
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 39
  IF ~~ THEN REPLY @70 GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("DaelanQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY @72
  IF ~~ THEN DO ~SetGlobal("DaelanQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.1
  SAY @73
  IF ~~ THEN DO ~SetGlobal("DaelanQuest","GLOBAL",4)AddexperienceParty(60000)AddXPObject("NWDAELAN",100000)TakePartyItem("Nwmisc34")DestroyItem("Nwmisc34")GiveItemCreate("NWAMUDA1",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.2
  SAY @74
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 41 // from: 1.5
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 1.6
  SAY @75
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.7
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 45
  IF ~~ THEN REPLY @78 GOTO 2
END

IF ~~ THEN BEGIN 44 // from: 1.8
  SAY @79
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @80
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @81
  IF ~~ THEN REPLY @82 GOTO 47
  IF ~~ THEN REPLY @83 GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY @84
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 45.2
  SAY @85
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY @86
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from: 0.2
  SAY @3
  IF ~  Global("DaelanQuest2","GLOBAL",0)~ THEN REPLY @87 GOTO 51
  IF ~  Global("DaelanQuest2","GLOBAL",1)GlobalTimerExpired("DaelanTimer","LOCALS")~ THEN REPLY @88 GOTO 56
  IF ~  Global("DaelanQuest2","GLOBAL",2)GlobalTimerExpired("DaelanTimer","LOCALS")~ THEN REPLY @88 GOTO 69
  IF ~  Global("DaelanQuest2","GLOBAL",3)~ THEN REPLY @88 GOTO 79
  IF ~  OR(2)GlobalGT("DaelanQuest2","GLOBAL",3)GlobalTimerNotExpired("DaelanTimer","LOCALS")!Global("DaelanQuest2","GLOBAL",66)~ THEN REPLY @88 GOTO 80
  IF ~Global("DaelanQuest2","GLOBAL",66)~ THEN REPLY @88 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 81
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY @89
  IF ~~ THEN REPLY @90 GOTO 52
  IF ~~ THEN REPLY @78 GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY @91
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @92
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @93
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.1
  SAY @94
  IF ~~ THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",1)SetGlobalTimer("DaelanTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 50.2
  SAY @95
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 58
  IF ~~ THEN REPLY @98 GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1 57.2
  SAY @99
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY @100
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @101
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY @102
  IF ~~ THEN REPLY @103 GOTO 62
  IF ~~ THEN REPLY @104 GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.1 61.2
  SAY @105
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY @106
  IF ~~ THEN REPLY @107 GOTO 64
  IF ~~ THEN REPLY @108 GOTO 64
  IF ~~ THEN REPLY @109 GOTO 65
  IF ~~ THEN REPLY @110 GOTO 66
END

IF ~~ THEN BEGIN 64 // from: 63.1 63.2
  SAY @111
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 63.3
  SAY @112
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 63.4
  SAY @113
  IF ~~ THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.1 65.1
  SAY @114
  IF ~~ THEN REPLY @115 GOTO 68
  IF ~~ THEN REPLY @116 GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.1 67.2
  SAY @117
  IF ~~ THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",2)SetGlobalTimer("DaelanTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 50.3
  SAY @118
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY @119
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY @120
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY @121
  IF ~  PartyHasItem("Nwmisc36")~ THEN REPLY @122 GOTO 73
  IF ~~ THEN REPLY @123 GOTO 74
  IF ~~ THEN REPLY @124 GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.1
  SAY @125
  IF ~~ THEN REPLY @126 GOTO 76
END

IF ~~ THEN BEGIN 74 // from: 72.2
  SAY @127
  IF ~~ THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.3
  SAY @128
  IF ~~ THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 73.1
  SAY @129
  IF ~  PartyHasItem("NWAMUDA1")~ THEN GOTO 77
  IF ~  !PartyHasItem("NWAMUDA1")~ THEN GOTO 78
END

IF ~~ THEN BEGIN 77 // from: 76.1
  SAY @130
  IF ~~THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",4)AddexperienceParty(60000)AddXPObject("NWDAELAN",100000)TakePartyItem("Nwmisc36")DestroyItem("Nwmisc36")TakePartyItem("NWAMUDA1")DestroyItem("NWAMUDA1")GiveItemCreate("NWAMUDA2",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.2
  SAY @131
  IF ~~ THEN DO ~SetGlobal("DaelanQuest2","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("NWDAELAN",100000)TakePartyItem("Nwmisc36")DestroyItem("Nwmisc36")GiveItemCreate("NWAMUDA2",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 79 // from: 50.4
  SAY @132
  IF ~  PartyHasItem("Nwmisc36")~ THEN REPLY @122 GOTO 73
  IF ~~ THEN REPLY @123 GOTO 74
  IF ~~ THEN REPLY @124 GOTO 75
END

IF ~~ THEN BEGIN 80 // from: 50.5
  SAY @133
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from: 50.6
  SAY @134
  IF ~~ THEN REPLY @135 GOTO 82
  IF ~~ THEN REPLY @136 GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY @137
  IF ~~ THEN REPLY @138 GOTO 84
  IF ~~ THEN REPLY @136 GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 81.2
  SAY @139
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY @140
  IF ~~ THEN REPLY @82 GOTO 85
  IF ~~ THEN REPLY @136 GOTO 83
END

IF ~~ THEN BEGIN 85 // from: 84.1
  SAY @141
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from: 0.3
  SAY @3
  IF ~  Global("DaelanQuest3","GLOBAL",0)~ THEN REPLY @142 GOTO 87
  IF ~  Global("DaelanQuest3","GLOBAL",1)GlobalTimerExpired("DaelanTimer","LOCALS")~ THEN REPLY @5 GOTO 93
  IF ~  Global("DaelanQuest3","GLOBAL",2)GlobalTimerExpired("DaelanTimer","LOCALS")~ THEN REPLY @5 GOTO 104
  IF ~  Global("DaelanQuest3","GLOBAL",3)~ THEN REPLY @5 GOTO 114
  IF ~  OR(2)GlobalGT("DaelanQuest3","GLOBAL",3)GlobalTimerNotExpired("DaelanTimer","LOCALS")!Global("DaelanQuest3","GLOBAL",66)~ THEN REPLY @6 GOTO 115
  IF ~  Global("DaelanQuest3","GLOBAL",66)~ THEN REPLY @6 GOTO 42
  IF ~~ THEN REPLY @7 GOTO 116
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY @143
  IF ~~ THEN REPLY @144 GOTO 88
  IF ~~ THEN REPLY @145 GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.1
  SAY @146
  IF ~~ THEN REPLY @147 GOTO 89
  IF ~~ THEN REPLY @148 GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.1
  SAY @149
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.1
  SAY @150
  IF ~~ THEN REPLY @151 GOTO 91
  IF ~~ THEN REPLY @152 GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1
  SAY @153
  IF ~~ THEN REPLY @151 GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.1
  SAY @154
  IF ~~ THEN DO ~SetGlobal("DaelanQuest3","GLOBAL",1)SetGlobalTimer("DaelanTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 86.2
  SAY @155
  IF ~~ THEN REPLY @156 GOTO 94
  IF ~~ THEN REPLY @157 GOTO 95
END

IF ~~ THEN BEGIN 94 // from: 93.1
  SAY @158
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 93.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1
  SAY @159
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 96.1
  SAY @160
  IF ~~ THEN REPLY @148 GOTO 98
  IF ~~ THEN REPLY @161 GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY @162
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY @163
  IF ~~ THEN REPLY @148 GOTO 100
  IF ~~ THEN REPLY @164 GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.1
  SAY @165
  IF ~~ THEN REPLY @166 GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.1
  SAY @167
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.1
  SAY @168
  IF ~~ THEN REPLY @169 GOTO 103
  IF ~~ THEN REPLY @170 GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.1
  SAY @171
  IF ~~ THEN DO ~SetGlobal("DaelanQuest3","GLOBAL",2)SetGlobalTimer("DaelanTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 104 // from: 86.3
  SAY @172
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.1
  SAY @173
  IF ~  PartyHasItem("Nwmisc37")~ THEN REPLY @174 GOTO 106
  IF ~~ THEN REPLY @175 GOTO 107
  IF ~~ THEN REPLY @176 GOTO 108
END

IF ~~ THEN BEGIN 106 // from: 105.1
  SAY @177
  IF ~~ THEN REPLY @178 GOTO 109
  IF ~~ THEN REPLY @179 GOTO 109
END

IF ~~ THEN BEGIN 107 // from: 105.2
  SAY @180
  IF ~~ THEN DO ~SetGlobal("DaelanQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.3
  SAY @181
  IF ~~ THEN DO ~SetGlobal("DaelanQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY @182
  IF ~~ THEN REPLY @183 GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.1
  SAY @184
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.1
  SAY @185
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.1
  SAY @186
  IF ~~ THEN REPLY @187 GOTO 113
  IF ~~ THEN REPLY @188 GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 112.1
  SAY @189
  IF ~~ THEN DO ~SetGlobal("DaelanQuest3","GLOBAL",4)
AddexperienceParty(60000)AddXPObject("NWDAELAN",150000)TakePartyItem("Nwmisc37")DestroyItem("Nwmisc37")TakePartyItem("NWAMUDA2")DestroyItem("NWAMUDA2")GiveItemCreate("NWAMUDA3",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 86.4
  SAY @190
  IF ~  PartyHasItem("Nwmisc37")~ THEN REPLY @174 GOTO 106
  IF ~~ THEN REPLY @175 GOTO 107
  IF ~~ THEN REPLY @176 GOTO 108
END

IF ~~ THEN BEGIN 115 // from: 86.5
  SAY @154
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from: 86.7
  SAY @191
  IF ~~ THEN REPLY @192 GOTO 117
  IF ~~ THEN REPLY @78 GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.1
  SAY @193
  IF ~~ THEN REPLY @194 GOTO 119
  IF ~~ THEN REPLY @195 GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 116.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from: 117.1
  SAY @196
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.1
  SAY @197
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("Chapter4Talk","LOCALS",0)!Dead("NWMORAG4")~ THEN BEGIN 122 // from:
  SAY @198
  IF ~~ THEN REPLY @199 GOTO 123
  IF ~~ THEN REPLY @200 GOTO 124
END

IF ~~ THEN BEGIN 123 // from: 122.1
  SAY @201
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.2
  SAY @202
  IF ~~ THEN REPLY @203 GOTO 126
  IF ~~ THEN REPLY @204 GOTO 127
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY @205
  IF ~~ THEN REPLY @206 GOTO 128
  IF ~~ THEN REPLY @207 GOTO 129
  IF ~~ THEN REPLY @208 GOTO 130
END

IF ~~ THEN BEGIN 126 // from: 124.1
  SAY @209
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 127 // from: 124.2
  SAY @210
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 125.1
  SAY @211
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 125.2
  SAY @212
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 130 // from: 125.3
  SAY @213
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 131 // from: 129.1
  SAY @214
  IF ~~ THEN REPLY @215 GOTO 132
  IF ~~ THEN REPLY @216 GOTO 133
END

IF ~~ THEN BEGIN 132 // from: 131.1
  SAY @217
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 133 // from: 131.2
  SAY @218
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

