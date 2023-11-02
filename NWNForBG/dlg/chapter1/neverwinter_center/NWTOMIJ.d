// Центр Невервинтера Ярмарка Мечей   Томи (Висельник) Оскал Полурослик  Этот полурослик осматривается с таким озорным видом, что совершенно ясно: будь у него время и возможность, он бы точно наделал дел.

BEGIN ~NWTOMIJ~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)!Global("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @1 GOTO 64
  IF ~  Global("NWNChapter","GLOBAL",3)~ THEN REPLY @1 GOTO 122
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Global("NWTomiQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("NWTomiQuest","GLOBAL",1)GlobalTimerExpired("TomiTimer","LOCALS")~ THEN REPLY @5 GOTO 16
  IF ~  Global("NWTomiQuest","GLOBAL",2)GlobalTimerExpired("TomiTimer","LOCALS")~ THEN REPLY @5 GOTO 34
  IF ~  Global("NWTomiQuest","GLOBAL",3)~ THEN REPLY @5 GOTO 56
  IF ~  OR(2)GlobalGT("NWTomiQuest","GLOBAL",3)GlobalTimerNotExpired("TomiTimer","LOCALS")!Global("NWTomiQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 57
  IF ~  Global("NWTomiQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 58
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @7 GOTO 59
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @7 GOTO 184
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
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @29
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",1)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",1)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY @32
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2
  SAY @33
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @38
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @39
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 17.3
  SAY @40
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 18 19 20
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @45
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @46
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY @47
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 22 23 24
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 26
  IF ~~ THEN REPLY @50 GOTO 27
  IF ~~ THEN REPLY @51 GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @54 GOTO 30
  IF ~~ THEN REPLY @55 GOTO 31
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @56
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @54 GOTO 30
  IF ~~ THEN REPLY @55 GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @57
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @54 GOTO 30
  IF ~~ THEN REPLY @55 GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 26.1 27.1 28.1
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 32
  IF ~~ THEN REPLY @60 GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.2 27.2 28.2
  SAY @61
  IF ~~ THEN REPLY @59 GOTO 32
  IF ~~ THEN REPLY @60 GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 26.3 27.3 28.3
  SAY @62
  IF ~~ THEN REPLY @59 GOTO 32
  IF ~~ THEN REPLY @60 GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 31.1
  SAY @63
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.2 30.2 31.2
  SAY @64
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 1.3
  SAY @65
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 36
  IF ~~ THEN REPLY @68 GOTO 37
  IF ~~ THEN REPLY @69 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 39
  IF ~~ THEN REPLY @72 GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @73
  IF ~~ THEN REPLY @71 GOTO 39
  IF ~~ THEN REPLY @72 GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY @74
  IF ~~ THEN REPLY @71 GOTO 39
  IF ~~ THEN REPLY @72 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.1 37.1 38.1
  SAY @75
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 36.2 37.2 38.2
  SAY @76
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39 40
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 42
  IF ~~ THEN REPLY @79 GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41
  SAY @80
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42
  SAY @81
  IF ~~ THEN REPLY @82 GOTO 44
  IF ~~ THEN REPLY @83 GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 46
  IF ~~ THEN REPLY @86 GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY @87
  IF ~~ THEN REPLY @85 GOTO 46
  IF ~~ THEN REPLY @86 GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @88
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY @89
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46 47
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 49
  IF ~~ THEN REPLY @92 GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @93
  IF ~  PartyHasItem("Nwmisc47")~ THEN REPLY @94 GOTO 51
  IF ~~ THEN REPLY @95 GOTO 52
  IF ~~ THEN REPLY @96 GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 48.2
  SAY @97
  IF ~  PartyHasItem("Nwmisc47")~ THEN REPLY @94 GOTO 51
  IF ~~ THEN REPLY @95 GOTO 52
  IF ~~ THEN REPLY @96 GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1
  SAY @98
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 49.2 50.2
  SAY @99
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.3 50.3
  SAY @100
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 51.1
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 55
  IF ~~ THEN REPLY @103 GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54
  SAY @104
  IF ~~ THEN DO ~
    SetGlobal("NWTomiQuest","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc47"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc47"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT1",Player1,1,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 56 // from: 1.4
  SAY @105
  IF ~  PartyHasItem("Nwmisc47")~ THEN REPLY @94 GOTO 51
  IF ~~ THEN REPLY @95 GOTO 52
  IF ~~ THEN REPLY @96 GOTO 53
END

IF ~~ THEN BEGIN 57 // from: 1.5
  SAY @106
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 1.6
  SAY @107
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 1.7
  SAY @108
  IF ~~ THEN REPLY @109 GOTO 60
  IF ~~ THEN REPLY @110 GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @111
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY @112
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from: 60
  SAY @113
  IF ~~ THEN REPLY @114 GOTO 63
  IF ~~ THEN REPLY @115 GOTO 61
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY @116
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 0.2
  SAY @3
  IF ~  Global("NWTomiQuest2","GLOBAL",0)~ THEN REPLY @117 GOTO 65
  IF ~  Global("NWTomiQuest2","GLOBAL",1)GlobalTimerExpired("TomiTimer","LOCALS")~ THEN REPLY @118 GOTO 79
  IF ~  Global("NWTomiQuest2","GLOBAL",2)GlobalTimerExpired("TomiTimer","LOCALS")~ THEN REPLY @118 GOTO 92
  IF ~  Global("NWTomiQuest2","GLOBAL",3)~ THEN REPLY @118 GOTO 114
  IF ~  OR(2)GlobalGT("NWTomiQuest2","GLOBAL",3)GlobalTimerNotExpired("TomiTimer","LOCALS")!Global("NWTomiQuest2","GLOBAL",66)~ THEN REPLY @118 GOTO 116
  IF ~Global("NWTomiQuest2","GLOBAL",66)~ THEN REPLY @118 GOTO 58
  IF ~~ THEN REPLY @7 GOTO 117
  IF ~~ THEN REPLY @2 GOTO 61
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY @119
  IF ~~ THEN REPLY @120 GOTO 66
  IF ~~ THEN REPLY @121 GOTO 67
  IF ~~ THEN REPLY @122 GOTO 68
END

IF ~~ THEN BEGIN 66 // from: 65.1
  SAY @123
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 67 // from: 65.2
  SAY @124
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 68 // from: 65.3
  SAY @125
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 69 // from: 66.1
  SAY @126
  IF ~~ THEN REPLY @127 GOTO 70
  IF ~~ THEN REPLY @128 GOTO 71
  IF ~~ THEN REPLY @129 GOTO 72
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY @130
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 69.2
  SAY @131
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 69.3 70 71
  SAY @132
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72
  SAY @133
  IF ~~ THEN REPLY @134 GOTO 74
  IF ~~ THEN REPLY @135 GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73
  SAY @136
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74
  SAY @137
  IF ~~ THEN REPLY @138 GOTO 76
  IF ~~ THEN REPLY @139 GOTO 77
  IF ~~ THEN REPLY @140 GOTO 78
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY @141
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",1)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.2
  SAY @142
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY @143
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 64.2
  SAY @144
  IF ~~ THEN REPLY @145 GOTO 80
  IF ~~ THEN REPLY @146 GOTO 81
  IF ~~ THEN REPLY @147 GOTO 82
END

IF ~~ THEN BEGIN 80 // from: 79.1
  SAY @148
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 79.2
  SAY @149
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 79.3
  SAY @150
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 83 // from: 81
  SAY @151
  IF ~~ THEN REPLY @152 GOTO 84
  IF ~~ THEN REPLY @153 GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 83.1
  SAY @154
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 83.2 84
  SAY @155
  IF ~~ THEN REPLY @156 GOTO 86
  IF ~~ THEN REPLY @157 GOTO 87
  IF ~~ THEN REPLY @158 GOTO 88
END

IF ~~ THEN BEGIN 86 // from: 85.1
  SAY @159
  IF ~~ THEN REPLY @160 GOTO 89
  IF ~~ THEN REPLY @161 GOTO 90
  IF ~~ THEN REPLY @162 GOTO 91
END

IF ~~ THEN BEGIN 87 // from: 85.2
  SAY @163
  IF ~~ THEN REPLY @160 GOTO 89
  IF ~~ THEN REPLY @161 GOTO 90
  IF ~~ THEN REPLY @162 GOTO 91
END

IF ~~ THEN BEGIN 88 // from: 85.3
  SAY @164
  IF ~~ THEN REPLY @160 GOTO 89
  IF ~~ THEN REPLY @161 GOTO 90
  IF ~~ THEN REPLY @162 GOTO 91
END

IF ~~ THEN BEGIN 89 // from: 86.1 87.1 88.1
  SAY @165
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 86.2 87.2 88.2
  SAY @166
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 86.3 87.3 88.3
  SAY @167
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 64.3
  SAY @168
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92
  SAY @169
  IF ~~ THEN REPLY @170 GOTO 94
  IF ~~ THEN REPLY @171 GOTO 95
  IF ~~ THEN REPLY @172 GOTO 96
END

IF ~~ THEN BEGIN 94 // from: 93.1
  SAY @173
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 93.2
  SAY @174
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.3
  SAY @175
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97 // from: 94 95 96
  SAY @176
  IF ~~ THEN REPLY @79 GOTO 98
  IF ~~ THEN REPLY @177 GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97
  SAY @178
  IF ~~ THEN REPLY @179 GOTO 99
  IF ~~ THEN REPLY @180 GOTO 100
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY @181
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 98.2
  SAY @182
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 99 100
  SAY @183
  IF ~~ THEN REPLY @184 GOTO 102
  IF ~~ THEN REPLY @185 GOTO 103
  IF ~~ THEN REPLY @186 GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.1
  SAY @187
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 101.2 101.3
  SAY @188
  IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 104 // from: 102
  SAY @189
  IF ~~ THEN REPLY @179 GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104
  SAY @190
  IF ~  PartyHasItem("Nwmisc48")~ THEN REPLY @191 GOTO 106
  IF ~~ THEN REPLY @192 GOTO 107
  IF ~~ THEN REPLY @193 GOTO 108
END

IF ~~ THEN BEGIN 106 // from: 105.1
  SAY @194
  IF ~~ THEN REPLY @195 GOTO 109
END

IF ~~ THEN BEGIN 107 // from: 105.2
  SAY @196
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.3
  SAY @197
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY @198
  IF ~  PartyHasItem("NWRINGT1")~ THEN REPLY @199 GOTO 110
  IF ~  !PartyHasItem("NWRINGT1")~ THEN REPLY @199 GOTO 111
  IF ~  PartyHasItem("NWRINGT1")~ THEN REPLY @200 GOTO 112
  IF ~  !PartyHasItem("NWRINGT1")~ THEN REPLY @200 GOTO 113
END

IF ~~ THEN BEGIN 110 // from: 109.1
  SAY @201
  IF ~~THEN DO ~
    SetGlobal("NWTomiQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc48"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc48"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT2",Player1,2,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.2
  SAY @202
  IF ~~ THEN DO ~
    SetGlobal("NWTomiQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc48"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc48"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT2",Player1,2,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.3
  SAY @203
  IF ~~THEN DO ~
    SetGlobal("NWTomiQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc48"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc48"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT2",Player1,2,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 113 // from: 109.4
  SAY @204
  IF ~~ THEN DO ~
    SetGlobal("NWTomiQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc48"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc48"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT2",Player1,2,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 114 // from: 64.4
  SAY @205
  IF ~  PartyHasItem("Nwmisc48")~ THEN REPLY @191 GOTO 106
  IF ~~ THEN REPLY @192 GOTO 107
  IF ~~ THEN REPLY @206 GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.3
  SAY @207
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from: 64.5
  SAY @208
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from: 64.7
  SAY @209
  IF ~~ THEN REPLY @210 GOTO 118
  IF ~~ THEN REPLY @211 GOTO 119
END

IF ~~ THEN BEGIN 118 // from: 117.1
  SAY @212
  IF ~~ THEN REPLY @213 GOTO 120
  IF ~~ THEN REPLY @211 GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 117.2
  SAY @214
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY @215
  IF ~~ THEN REPLY @114 GOTO 121
  IF ~~ THEN REPLY @211 GOTO 119
END

IF ~~ THEN BEGIN 121 // from: 120.1
  SAY @216
  IF ~~ THEN EXIT
END


















IF ~~ THEN BEGIN 122 // from: 0.3
  SAY @3
  IF ~  Global("NWTomiQuest3","GLOBAL",0)~ THEN REPLY @217 GOTO 123
  IF ~  Global("NWTomiQuest3","GLOBAL",1)GlobalTimerExpired("TomiTimer","LOCALS")~ THEN REPLY @218 GOTO 133
  IF ~  Global("NWTomiQuest3","GLOBAL",2)GlobalTimerExpired("TomiTimer","LOCALS")~ THEN REPLY @218 GOTO 145
  IF ~  Global("NWTomiQuest3","GLOBAL",3)~ THEN REPLY @218 GOTO 164
  IF ~  OR(2)GlobalGT("NWTomiQuest3","GLOBAL",3)GlobalTimerNotExpired("TomiTimer","LOCALS")!Global("NWTomiQuest3","GLOBAL",66)~ THEN REPLY @218 GOTO 165
  IF ~  Global("NWTomiQuest3","GLOBAL",66)~ THEN REPLY @218 GOTO 58
  IF ~~ THEN REPLY @7 GOTO 166
END

IF ~~ THEN BEGIN 123 // from: 122.1
  SAY @219
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123
  SAY @220
  IF ~~ THEN REPLY @221 GOTO 125
  IF ~~ THEN REPLY @222 GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 124.1
  SAY @223
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.2
  SAY @224
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 125 126
  SAY @225
  IF ~~ THEN REPLY @226 GOTO 128
  IF ~~ THEN REPLY @227 GOTO 129
  IF ~~ THEN REPLY @228 GOTO 130
END

IF ~~ THEN BEGIN 128 // from: 127.1
  SAY @229
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 129 // from: 127.2
  SAY @230
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 130 // from: 127.3
  SAY @231
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 128 129 130
  SAY @232
  IF ~~ THEN REPLY @79 GOTO 132
  IF ~~ THEN REPLY @233 GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131
  SAY @234
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",1)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 133 // from: 122.2
  SAY @235
  IF ~~ THEN REPLY @236 GOTO 134
  IF ~~ THEN REPLY @237 GOTO 135
  IF ~~ THEN REPLY @238 GOTO 136
END

IF ~~ THEN BEGIN 134 // from: 133.1
  SAY @239
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 135 // from: 133.2
  SAY @240
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 136 // from: 133.3
  SAY @241
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 134 135 136
  SAY @242
  IF ~~ THEN REPLY @243 GOTO 138
  IF ~~ THEN REPLY @244 GOTO 139
  IF ~~ THEN REPLY @245 GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 137.1
  SAY @246
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 139 // from: 137.2
  SAY @247
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 137.3
  SAY @248
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 138 139 140
  SAY @249
  IF ~~ THEN REPLY @250 GOTO 142
  IF ~~ THEN REPLY @251 GOTO 143
  IF ~~ THEN REPLY @252 GOTO 144
END

IF ~~ THEN BEGIN 142 // from: 141.1
  SAY @253
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 141.2
  SAY @254
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 144 // from: 141.3
  SAY @255
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",2)SetGlobalTimer("TomiTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 145 // from: 122.3
  SAY @256
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145
  SAY @257
  IF ~~ THEN REPLY @258 GOTO 147
  IF ~~ THEN REPLY @259 GOTO 148
  IF ~~ THEN REPLY @260 GOTO 149
END

IF ~~ THEN BEGIN 147 // from: 146.1
  SAY @261
  IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 148 // from: 146.2
  SAY @262
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 149 // from: 146.3
  SAY @263
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 150 // from: 147
  SAY @264
  IF ~~ THEN REPLY @265 GOTO 151
  IF ~~ THEN REPLY @266 GOTO 152
END

IF ~~ THEN BEGIN 151 // from: 150.1
  SAY @267
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 152 // from: 150.2
  SAY @268
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 151 152
  SAY @269
  IF ~~ THEN REPLY @270 GOTO 154
  IF ~~ THEN REPLY @271 GOTO 154
  IF ~~ THEN REPLY @272 GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153
  SAY @273
  IF ~  PartyHasItem("Nwmisc49")~ THEN REPLY @274 GOTO 155
  IF ~~ THEN REPLY @275 GOTO 156
  IF ~~ THEN REPLY @276 GOTO 157
  IF ~~ THEN REPLY @277 GOTO 158
END

IF ~~ THEN BEGIN 155 // from: 154.1
  SAY @278
  IF ~~ THEN REPLY @102 GOTO 159
  IF ~~ THEN REPLY @279 GOTO 160
END

IF ~~ THEN BEGIN 156 // from: 154.2
  SAY @280
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 154.4
  SAY @281
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 158 // from: 154.3
  SAY @282
  IF ~~ THEN DO ~SetGlobal("NWTomiQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 155.1
  SAY @283
  IF ~~ THEN REPLY @284 GOTO 161
  IF ~~ THEN REPLY @285 GOTO 162
  IF ~~ THEN REPLY @286 GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 155.2
  SAY @287
  IF ~~ THEN REPLY @284 GOTO 161
  IF ~~ THEN REPLY @285 GOTO 162
  IF ~~ THEN REPLY @286 GOTO 163
END

IF ~~ THEN BEGIN 161 // from: 160.1
  SAY @288
  IF ~~ THEN DO ~
    SetGlobal("NWTomiQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc49"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc49"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT1"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT2"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT3",Player1,3,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 162 // from: 160.2
  SAY @289
  IF ~~ THEN DO ~
    SetGlobal("NWTomiQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc49"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc49"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT1"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT2"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT3",Player1,3,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 163 // from: 160.3
  SAY @290
  IF ~~ THEN DO ~
    SetGlobal("NWTomiQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWTOMI",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc49"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc49"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT1"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT1"))
    ActionOverride("NWITMDES",TakePartyItem("NWRINGT2"))
    ActionOverride("NWITMDES",DestroyItem("NWRINGT2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWRINGT3",Player1,3,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 164 // from: 122.4
  SAY @291
  IF ~  PartyHasItem("Nwmisc49")~ THEN REPLY @274 GOTO 155
  IF ~~ THEN REPLY @275 GOTO 156
  IF ~~ THEN REPLY @276 GOTO 157
  IF ~~ THEN REPLY @277 GOTO 158
END

IF ~~ THEN BEGIN 165 // from: 122.5
  SAY @292
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from: 122.7
  SAY @293
  IF ~~ THEN REPLY @294 GOTO 167
  IF ~~ THEN REPLY @110 GOTO 61
END

IF ~~ THEN BEGIN 167 // from: 166.1
  SAY @295
  IF ~~ THEN REPLY @296 GOTO 168
  IF ~~ THEN REPLY @110 GOTO 61
END

IF ~~ THEN BEGIN 168 // from: 167.1
  SAY @297
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY @298
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("Chapter4Talk","LOCALS",0)!Dead("NWMORAG")~ THEN BEGIN 170 // from:
  SAY @299
  IF ~~ THEN REPLY @300 GOTO 171
  IF ~~ THEN REPLY @301 GOTO 171
  IF ~~ THEN REPLY @302 GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.1 170.2
  SAY @303
  IF ~~ THEN REPLY @304 GOTO 173
  IF ~~ THEN REPLY @305 GOTO 174
  IF ~~ THEN REPLY @306 GOTO 175
END

IF ~~ THEN BEGIN 172 // from: 170.3
  SAY @307
  IF ~~ THEN REPLY @308 GOTO 171
  IF ~~ THEN REPLY @309 GOTO 176
END

IF ~~ THEN BEGIN 173 // from: 171.1
  SAY @310
  IF ~~ THEN REPLY @311 GOTO 177
  IF ~~ THEN REPLY @312 GOTO 178
  IF ~  Gender(Player1,MALE)~ THEN REPLY @313 GOTO 179
  IF ~  Gender(Player1,FEMALE)~ THEN REPLY @313 GOTO 180
END

IF ~~ THEN BEGIN 174 // from: 171.2
  SAY @314
  IF ~~ THEN REPLY @311 GOTO 177
  IF ~~ THEN REPLY @312 GOTO 178
  IF ~  Gender(Player1,MALE)~ THEN REPLY @313 GOTO 179
  IF ~  Gender(Player1,FEMALE)~ THEN REPLY @313 GOTO 180
END

IF ~~ THEN BEGIN 175 // from: 171.3
  SAY @315
  IF ~~ THEN REPLY @311 GOTO 177
  IF ~~ THEN REPLY @312 GOTO 178
  IF ~  Gender(Player1,MALE)~ THEN REPLY @313 GOTO 179
  IF ~  Gender(Player1,FEMALE)~ THEN REPLY @313 GOTO 180
END

IF ~~ THEN BEGIN 176 // from: 172.2
  SAY @316
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 177 // from: 173.1 174.1 175.1
  SAY @317
  IF ~  Gender(Player1,MALE)~ THEN GOTO 181
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO 182
END

IF ~~ THEN BEGIN 178 // from: 173.2 174.2 175.2
  SAY @318
  IF ~  Gender(Player1,MALE)~ THEN GOTO 181
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO 182
END

IF ~~ THEN BEGIN 179 // from: 173.3 174.3 175.3
  SAY @319
  IF ~  Gender(Player1,MALE)~ THEN GOTO 181
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO 182
END

IF ~~ THEN BEGIN 180 // from: 173.4 174.4 175.4
  SAY @320
  IF ~  Gender(Player1,MALE)~ THEN GOTO 181
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO 182
END

IF ~~ THEN BEGIN 181 // from: 177.1 178.1 179.1 180.1
  SAY @321
  IF ~~ THEN REPLY @322 GOTO 183
  IF ~~ THEN REPLY @323 GOTO 183
  IF ~~ THEN REPLY @324 GOTO 183
END

IF ~~ THEN BEGIN 182 // from: 177.2 178.2 179.2 180.2
  SAY @325
  IF ~~ THEN REPLY @322 GOTO 183
  IF ~~ THEN REPLY @323 GOTO 183
  IF ~~ THEN REPLY @324 GOTO 183
END

IF ~~ THEN BEGIN 183 // 181 182
  SAY @326
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 184 // 1.8
  SAY @327
  IF ~~ THEN EXIT
END

