// Центр Невервинтера Ярмарка Мечей   Шервин  Человек   Бард   Высокомерный взгляд и вызывающая поза этой очаровательной юной бардессы просто не позволяют не заметить ее.

BEGIN ~NWSHARWJ~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)!Global("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @1 GOTO 70
  IF ~  Global("NWNChapter","GLOBAL",3)~ THEN REPLY @1 GOTO 135
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Global("NWSharwynQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("NWSharwynQuest","GLOBAL",1)GlobalTimerExpired("SharwynTimer","LOCALS")~ THEN REPLY @5 GOTO 20
  IF ~  Global("NWSharwynQuest","GLOBAL",2)GlobalTimerExpired("SharwynTimer","LOCALS")~ THEN REPLY @5 GOTO 38
  IF ~  Global("NWSharwynQuest","GLOBAL",3)~ THEN REPLY @5 GOTO 61
  IF ~  OR(2)GlobalGT("NWSharwynQuest","GLOBAL",3)GlobalTimerNotExpired("SharwynTimer","LOCALS")!Global("NWSharwynQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 62
  IF ~  Global("NWSharwynQuest","GLOBAL",66)~ THEN REPLY @6 GOTO 63
  IF ~  Global("NWBlackLakeDone","GLOBAL",0)~ THEN REPLY @7 GOTO 64
  IF ~  GlobalGT("NWBlackLakeDone","GLOBAL",0)~ THEN REPLY @7 GOTO 65
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
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @14
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @15
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @16
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.4
  SAY @17
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 5 6 7
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @22
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @23
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 8.3
  SAY @24
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 9 10 11
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @29
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @30
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY @31
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13 14 15
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @36
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest","GLOBAL",1)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @37
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest","GLOBAL",1)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @38
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.2
  SAY @39
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 22
  IF ~~ THEN REPLY @42 GOTO 23
  IF ~~ THEN REPLY @43 GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @44
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @45
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY @46
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 22 23 24
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 28
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

IF ~~ THEN BEGIN 29 // from: 26 27 28
  SAY @54
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29
  SAY @55
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @59 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @60
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY @61
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 31.3
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 35
  IF ~~ THEN REPLY @64 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @66
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY @67
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 34.3
  SAY @68
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest","GLOBAL",2)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 1.3
  SAY @69
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 40
  IF ~~ THEN REPLY @72 GOTO 41
  IF ~~ THEN REPLY @73 GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 43
  IF ~~ THEN REPLY @76 GOTO 44
  IF ~~ THEN REPLY @77 GOTO 45
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY @78
  IF ~~ THEN REPLY @75 GOTO 43
  IF ~~ THEN REPLY @76 GOTO 44
  IF ~~ THEN REPLY @77 GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY @79
  IF ~~ THEN REPLY @75 GOTO 43
  IF ~~ THEN REPLY @76 GOTO 44
  IF ~~ THEN REPLY @77 GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY @80
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 40.2 41.2 42.2
  SAY @81
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 40.3 41.3 42.3
  SAY @82
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 43 44 45
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 47
  IF ~~ THEN REPLY @85 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46
  SAY @86
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 49
  IF ~~ THEN REPLY @89 GOTO 50
  IF ~~ THEN REPLY @90 GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @91
  IF ~~ THEN REPLY @92 GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 48.2
  SAY @93
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 48.3
  SAY @94
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 52 // from: 49.1
  SAY @95
  IF ~~ THEN REPLY @96 GOTO 53
  IF ~~ THEN REPLY @97 GOTO 54
  IF ~~ THEN REPLY @98 GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @99
  IF ~  PartyHasItem("Nwmisc44")~ THEN REPLY @100 GOTO 56
  IF ~~ THEN REPLY @101 GOTO 57
  IF ~~ THEN REPLY @102 GOTO 58
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY @103
  IF ~  PartyHasItem("Nwmisc44")~ THEN REPLY @100 GOTO 56
  IF ~~ THEN REPLY @101 GOTO 57
  IF ~~ THEN REPLY @102 GOTO 58
END

IF ~~ THEN BEGIN 55 // from: 52.3
  SAY @104
  IF ~  PartyHasItem("Nwmisc44")~ THEN REPLY @100 GOTO 56
  IF ~~ THEN REPLY @101 GOTO 57
  IF ~~ THEN REPLY @102 GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY @105
  IF ~~ THEN REPLY @106 GOTO 59
  IF ~~ THEN REPLY @107 GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.2
  SAY @108
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.3
  SAY @109
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.1
  SAY @110
  IF ~~ THEN DO ~
    SetGlobal("NWSharwynQuest","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc44"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc44"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS1",Player1,1,1,1)~ 
  EXIT
END

IF ~~ THEN BEGIN 60 // from: 56.2
  SAY @111
  IF ~~ THEN DO ~
    SetGlobal("NWSharwynQuest","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc44"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc44"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS1",Player1,1,1,1)~
  EXIT
END

IF ~~ THEN BEGIN 61 // from: 1.4
  SAY @112
  IF ~  PartyHasItem("Nwmisc44")~ THEN REPLY @100 GOTO 56
  IF ~~ THEN REPLY @101 GOTO 57
  IF ~~ THEN REPLY @102 GOTO 58
END


IF ~~ THEN BEGIN 62 // from: 1.5
  SAY @113
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.6
  SAY @114
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 1.7
  SAY @115
  IF ~~ THEN REPLY @116 GOTO 66
  IF ~~ THEN REPLY @117 GOTO 2
END

IF ~~ THEN BEGIN 65 // from: 1.8
  SAY @118
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY @119
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @120
  IF ~~ THEN REPLY @121 GOTO 68
  IF ~~ THEN REPLY @122 GOTO 69
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY @123
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.2
  SAY @124
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from: 0.2
  SAY @125
  IF ~  Global("NWSharwynQuest2","GLOBAL",0)~ THEN REPLY @126 GOTO 71
  IF ~  Global("NWSharwynQuest2","GLOBAL",1)GlobalTimerExpired("SharwynTimer","LOCALS")~ THEN REPLY @127 GOTO 85
  IF ~  Global("NWSharwynQuest2","GLOBAL",2)GlobalTimerExpired("SharwynTimer","LOCALS")~ THEN REPLY @127 GOTO 98
  IF ~  Global("NWSharwynQuest2","GLOBAL",3)~ THEN REPLY @127 GOTO 129
  IF ~  OR(2)GlobalGT("NWSharwynQuest2","GLOBAL",3)GlobalTimerNotExpired("SharwynTimer","LOCALS")!Global("NWSharwynQuest2","GLOBAL",66)~ THEN REPLY @127 GOTO 130
  IF ~Global("NWSharwynQuest2","GLOBAL",66)~ THEN REPLY @127 GOTO 63
  IF ~~ THEN REPLY @7 GOTO 131
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY @128
  IF ~~ THEN REPLY @129 GOTO 72
  IF ~~ THEN REPLY @130 GOTO 73
  IF ~  Gender(Player1,MALE)~ THEN REPLY @131 GOTO 74
  IF ~~ THEN REPLY @132 GOTO 2
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY @133
  IF ~~ THEN REPLY @134 GOTO 75
  IF ~~ THEN REPLY @135 GOTO 76
  IF ~~ THEN REPLY @136 GOTO 77
END

IF ~~ THEN BEGIN 73 // from: 71.2
  SAY @137
  IF ~~ THEN REPLY @138 GOTO 78
  IF ~~ THEN REPLY @139 GOTO 72
  IF ~~ THEN REPLY @132 GOTO 2
END

IF ~~ THEN BEGIN 74 // from: 71.3
  SAY @140
  IF ~~ THEN REPLY @141 GOTO 79
  IF ~~ THEN REPLY @142 GOTO 79
  IF ~~ THEN REPLY @143 GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 72.1
  SAY @144
  IF ~~ THEN REPLY @145 GOTO 80
END

IF ~~ THEN BEGIN 76 // from: 72.2
  SAY @146
  IF ~~ THEN REPLY @145 GOTO 80
END

IF ~~ THEN BEGIN 77 // from: 72.3
  SAY @147
  IF ~~ THEN REPLY @145 GOTO 80
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY @148
  IF ~~ THEN REPLY @139 GOTO 72
  IF ~~ THEN REPLY @132 GOTO 2
END

IF ~~ THEN BEGIN 79 // from: 74.1
  SAY @149
  IF ~~ THEN REPLY @139 GOTO 72
  IF ~~ THEN REPLY @132 GOTO 2
END

IF ~~ THEN BEGIN 80 // from: 75 76 77
  SAY @150
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80
  SAY @151
  IF ~~ THEN REPLY @152 GOTO 82
  IF ~~ THEN REPLY @153 GOTO 83
  IF ~~ THEN REPLY @154 GOTO 84
END

IF ~~ THEN BEGIN 82 // from: 81.1
  SAY @155
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",1)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 83 // from: 81.2
  SAY @156
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",1)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 84 // from: 81.3
  SAY @157
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 70.2
  SAY @158
  IF ~~ THEN GOTO 86

END

IF ~~ THEN BEGIN 86 // from: 85
  SAY @159
  IF ~~ THEN REPLY @160 GOTO 87
  IF ~~ THEN REPLY @161 GOTO 88
  IF ~~ THEN REPLY @162 GOTO 89
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY @163
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 88 // from: 86.2
  SAY @164
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 89 // from: 86.3
  SAY @165
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 90 // from: 87
  SAY @166
  IF ~~ THEN REPLY @167 GOTO 91
  IF ~~ THEN REPLY @168 GOTO 92
  IF ~~ THEN REPLY @169 GOTO 93
END

IF ~~ THEN BEGIN 91 // from: 90.1
  SAY @170
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 90.2 91
  SAY @171
  IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 93 // from: 90.3
  SAY @172
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 94 // from: 92
  SAY @173
  IF ~~ THEN REPLY @174 GOTO 95
  IF ~~ THEN REPLY @175 GOTO 96
  IF ~~ THEN REPLY @176 GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.1
  SAY @177
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",2)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.2
  SAY @178
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",2)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.3
  SAY @179
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",2)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 70.3
  SAY @180
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.1
  SAY @181
  IF ~~ THEN REPLY @182 GOTO 100
  IF ~~ THEN REPLY @183 GOTO 101
  IF ~~ THEN REPLY @184 GOTO 102
END

IF ~~ THEN BEGIN 100 // from: 99.1
  SAY @185
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 101 // from: 99.2
  SAY @186
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 99.3
  SAY @187
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 100 101 102
  SAY @188
  IF ~~ THEN REPLY @189 GOTO 104
  IF ~~ THEN REPLY @190 GOTO 105
  IF ~~ THEN REPLY @191 GOTO 106
END

IF ~~ THEN BEGIN 104 // from: 103.1
  SAY @192
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 105 // from: 103.2
  SAY @193
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 106 // from: 103.3
  SAY @193
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 104 105 106
  SAY @194
  IF ~~ THEN REPLY @195 GOTO 108
  IF ~~ THEN REPLY @196 GOTO 109
  IF ~~ THEN REPLY @197 GOTO 110
  IF ~  Gender(Player1,MALE)~ THEN REPLY @198 GOTO 111
END

IF ~~ THEN BEGIN 108 // from: 107.1
  SAY @199
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 109 // from: 107.2
  SAY @200
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 110 // from: 107.3
  SAY @201
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 111 // from: 107.4
  SAY @202
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 108 109 110 111
  SAY @203
  IF ~~ THEN REPLY @204 GOTO 113
  IF ~~ THEN REPLY @205 GOTO 114
  IF ~~ THEN REPLY @206 GOTO 115
END

IF ~~ THEN BEGIN 113 // from: 112.1
  SAY @207
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 114 // from: 112.2
  SAY @208
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 115 // from: 112.3
  SAY @209
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116 // from: 113 114 115
  SAY @210
  IF ~  PartyHasItem("Nwmisc45")~ THEN REPLY @211 GOTO 117
  IF ~~ THEN REPLY @212 GOTO 118
  IF ~~ THEN REPLY @213 GOTO 119
  IF ~~ THEN REPLY @214 GOTO 120
END

IF ~~ THEN BEGIN 117 // from: 116.1
  SAY @215
  IF ~  PartyHasItem("NWBELTS1")~ THEN REPLY @216 GOTO 121
  IF ~  !PartyHasItem("NWBELTS1")~ THEN REPLY @216 GOTO 125
  IF ~  PartyHasItem("NWBELTS1")~ THEN REPLY @217 GOTO 122
  IF ~  !PartyHasItem("NWBELTS1")~ THEN REPLY @217 GOTO 126
  IF ~  PartyHasItem("NWBELTS1")~ THEN REPLY @218 GOTO 123
  IF ~  !PartyHasItem("NWBELTS1")~ THEN REPLY @218 GOTO 127
  IF ~  PartyHasItem("NWBELTS1")~ THEN REPLY @219 GOTO 124
  IF ~  !PartyHasItem("NWBELTS1")~ THEN REPLY @219 GOTO 128
END

IF ~~ THEN BEGIN 118 // from: 116.2
  SAY @220
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 119 // from: 116.3
  SAY @221
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 120 // from: 116.4
  SAY @222
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 121 // from: 117.1
  SAY @223
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 122 // from: 117.3
  SAY @224
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 123 // from: 117.5
  SAY @225
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 124 // from: 117.7
  SAY @226
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 125 // from: 117.2
  SAY @227
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 126 // from: 117.4
  SAY @228
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 127 // from: 117.6
  SAY @229
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 128 // from: 117.8
  SAY @230
  IF ~~THEN DO ~
    SetGlobal("NWSharwynQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc45"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 129 // from: 70.4
  SAY @231
  IF ~  PartyHasItem("Nwmisc45")~ THEN REPLY @211 GOTO 117
  IF ~~ THEN REPLY @212 GOTO 118
  IF ~~ THEN REPLY @213 GOTO 119
  IF ~~ THEN REPLY @214 GOTO 120
END

IF ~~ THEN BEGIN 130 // from: 70.5
  SAY @232
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from: 70.7
  SAY @233
  IF ~~ THEN REPLY @234 GOTO 132
  IF ~~ THEN REPLY @235 GOTO 2
END

IF ~~ THEN BEGIN 132 // from: 131.1
  SAY @236
  IF ~~ THEN REPLY @237 GOTO 133
  IF ~~ THEN REPLY @235 GOTO 2
END

IF ~~ THEN BEGIN 133 // from: 132.1
  SAY @238
  IF ~~ THEN REPLY @121 GOTO 134
  IF ~~ THEN REPLY @235 GOTO 2
END

IF ~~ THEN BEGIN 134 // from: 133.1
  SAY @239
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from: 0.3
  SAY @3
  IF ~  Global("NWSharwynQuest3","GLOBAL",0)~ THEN REPLY @240 GOTO 136
  IF ~  Global("NWSharwynQuest3","GLOBAL",1)GlobalTimerExpired("SharwynTimer","LOCALS")~ THEN REPLY @241 GOTO 149
  IF ~  Global("NWSharwynQuest3","GLOBAL",2)GlobalTimerExpired("SharwynTimer","LOCALS")~ THEN REPLY @5 GOTO 158
  IF ~  Global("NWSharwynQuest3","GLOBAL",3)~ THEN REPLY @5 GOTO 179
  IF ~  OR(2)GlobalGT("NWSharwynQuest3","GLOBAL",3)GlobalTimerNotExpired("SharwynTimer","LOCALS")!Global("NWSharwynQuest3","GLOBAL",66)~ THEN REPLY @5 GOTO 180
  IF ~  Global("NWSharwynQuest3","GLOBAL",66)~ THEN REPLY @5 GOTO 63
  IF ~~ THEN REPLY @7 GOTO 181
END

IF ~~ THEN BEGIN 136 // from: 135.1
  SAY @242
  IF ~~ THEN REPLY @243 GOTO 137
  IF ~~ THEN REPLY @244 GOTO 138
  IF ~~ THEN REPLY @245 GOTO 139
  IF ~  Gender(Player1,MALE)~ THEN REPLY @246 GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1
  SAY @247
  IF ~~ THEN REPLY @248 GOTO 141
  IF ~~ THEN REPLY @249 GOTO 142
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 138 // from: 136.2
  SAY @251
  IF ~~ THEN REPLY @248 GOTO 141
  IF ~~ THEN REPLY @249 GOTO 142
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 139 // from: 136.3
  SAY @252
  IF ~~ THEN REPLY @248 GOTO 141
  IF ~~ THEN REPLY @249 GOTO 142
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 140 // from: 136.4
  SAY @253
  IF ~~ THEN REPLY @248 GOTO 141
  IF ~~ THEN REPLY @249 GOTO 142
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 141 // from: 137.1 138.1 139.1 140.1
  SAY @254
  IF ~~ THEN REPLY @255 GOTO 144
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 142 // from: 137.2 138.2 139.2 140.2
  SAY @256
  IF ~~ THEN REPLY @255 GOTO 144
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 137.3 138.3 139.3 140.3
  SAY @257
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest3","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 144 // from: 141.1
  SAY @258
  IF ~~ THEN REPLY @259 GOTO 145
  IF ~~ THEN REPLY @260 GOTO 146
  IF ~~ THEN REPLY @261 GOTO 147
END

IF ~~ THEN BEGIN 145 // from: 144.1
  SAY @262
  IF ~~ THEN REPLY @263 GOTO 148
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 146 // from: 144.2
  SAY @264
  IF ~~ THEN REPLY @263 GOTO 148
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 147 // from: 144.3
  SAY @265
  IF ~~ THEN REPLY @263 GOTO 148
  IF ~~ THEN REPLY @250 GOTO 143
END

IF ~~ THEN BEGIN 148 // from: 145.1 146.1 147.1
  SAY @266
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest3","GLOBAL",1)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 149 // from: 135.2
  SAY @267
  IF ~~ THEN REPLY @268 GOTO 150
  IF ~~ THEN REPLY @269 GOTO 150
  IF ~~ THEN REPLY @270 GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.1
  SAY @271
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 151 // from: 149.3
  SAY @272
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 150 151
  SAY @273
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152
  SAY @274
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154 // from: 153.1
  SAY @275
  IF ~~ THEN REPLY @276 GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154
  SAY @277
  IF ~~ THEN REPLY @278 GOTO 156
  IF ~~ THEN REPLY @279 GOTO 157
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY @280
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest3","GLOBAL",2)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 155.2
  SAY @281
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest3","GLOBAL",2)SetGlobalTimer("SharwynTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 158 // from: 135.3
  SAY @282
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 158.1
  SAY @283
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160 // from: 159.1
  SAY @284
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.1
  SAY @285
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.1
  SAY @286
  IF ~~ THEN REPLY @287 GOTO 163
  IF ~~ THEN REPLY @288 GOTO 164
  IF ~~ THEN REPLY @289 GOTO 165
END

IF ~~ THEN BEGIN 163 // from: 162.1
  SAY @290
  IF ~~ THEN REPLY @291 GOTO 166
  IF ~~ THEN REPLY @292 GOTO 166
END

IF ~~ THEN BEGIN 164 // from: 162.2
  SAY @293
  IF ~~ THEN REPLY @291 GOTO 166
  IF ~~ THEN REPLY @292 GOTO 166
END

IF ~~ THEN BEGIN 165 // from: 162.3
  SAY @294
  IF ~~ THEN REPLY @295 GOTO 167
  IF ~~ THEN REPLY @291 GOTO 166
  IF ~~ THEN REPLY @292 GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 163.1 164.1 165.2 167.1
  SAY @296
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 165.1
  SAY @297
  IF ~~ THEN REPLY @291 GOTO 166
  IF ~~ THEN REPLY @292 GOTO 166
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY @298
  IF ~  PartyHasItem("Nwmisc46")~ THEN REPLY @299 GOTO 169
  IF ~~ THEN REPLY @300 GOTO 170
  IF ~~ THEN REPLY @301 GOTO 171
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY @302
  IF ~~ THEN REPLY @303 GOTO 172
  IF ~~ THEN REPLY @304 GOTO 173
  IF ~~ THEN REPLY @305 GOTO 174
END

IF ~~ THEN BEGIN 170 // from: 168.2
  SAY @306
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 171 // from: 168.3
  SAY @307
  IF ~~ THEN DO ~SetGlobal("NWSharwynQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 172 // from: 169.1
  SAY @308
  IF ~~ THEN REPLY @309 GOTO 175
  IF ~~ THEN REPLY @310 GOTO 176
  IF ~~ THEN REPLY @311 GOTO 177
  IF ~  Gender(Player1,MALE)~ THEN REPLY @312 GOTO 178
END

IF ~~ THEN BEGIN 173 // from: 169.2
  SAY @313
  IF ~~ THEN REPLY @309 GOTO 175
  IF ~~ THEN REPLY @310 GOTO 176
  IF ~~ THEN REPLY @311 GOTO 177
  IF ~  Gender(Player1,MALE)~ THEN REPLY @312 GOTO 178
END

IF ~~ THEN BEGIN 174 // from: 169.3
  SAY @314
  IF ~~ THEN REPLY @309 GOTO 175
  IF ~~ THEN REPLY @310 GOTO 176
  IF ~~ THEN REPLY @311 GOTO 177
  IF ~  Gender(Player1,MALE)~ THEN REPLY @312 GOTO 178
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY @315
  IF ~~ THEN DO ~
    SetGlobal("NWSharwynQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc46"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc46"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS3",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 176 // from: 174.2
  SAY @316
  IF ~~ THEN DO ~
    SetGlobal("NWSharwynQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc46"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc46"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS3",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 177 // from: 174.3
  SAY @317
  IF ~~ THEN DO ~
    SetGlobal("NWSharwynQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc46"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc46"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS3",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 178 // from: 174.4
  SAY @318
  IF ~~ THEN DO ~
    SetGlobal("NWSharwynQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWSHARWN",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc46"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc46"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS1"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS1"))
    ActionOverride("NWITMDES",TakePartyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroyItem("NWBELTS2"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWBELTS3",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 179 // from: 135.4
  SAY @319
  IF ~  PartyHasItem("Nwmisc46")~ THEN REPLY @299 GOTO 169
  IF ~~ THEN REPLY @300 GOTO 170
  IF ~~ THEN REPLY @301 GOTO 171
END

IF ~~ THEN BEGIN 180 // from: 135.5
  SAY @320
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 181 // from: 135.7
  SAY @321
  IF ~~ THEN REPLY @322 GOTO 182
  IF ~~ THEN REPLY @323 GOTO 183
END

IF ~~ THEN BEGIN 182 // from: 181.1
  SAY @324
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 183 // from: 181.2
  SAY @8
  IF ~~ THEN EXIT
END

// --------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("Chapter4Talk","LOCALS",0)!Dead("NWMORAG")~ THEN BEGIN 184 // from:
  SAY @325
  IF ~~ THEN REPLY @326 GOTO 185
  IF ~~ THEN REPLY @327 GOTO 186
  IF ~  Gender(Player1,MALE)~ THEN REPLY @328 GOTO 187
  IF ~~ THEN REPLY @329 GOTO 188
END

IF ~~ THEN BEGIN 185 // from: 184.1
  SAY @330
  IF ~~ THEN REPLY @331 GOTO 189
  IF ~~ THEN REPLY @332 GOTO 190
  IF ~~ THEN REPLY @333 GOTO 191
  IF ~~ THEN REPLY @334 GOTO 192
END

IF ~~ THEN BEGIN 186 // from: 184.2
  SAY @335
  IF ~~ THEN REPLY @331 GOTO 189
  IF ~~ THEN REPLY @332 GOTO 190
  IF ~~ THEN REPLY @333 GOTO 191
  IF ~~ THEN REPLY @334 GOTO 192
END

IF ~~ THEN BEGIN 187 // from: 184.3
  SAY @336
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)SetGlobal("SharwynKiss","LOCALS",1)ClearAllActions()StartCutSceneMode()StartCutScene("NWSHKISS")~ EXIT
END

IF ~~ THEN BEGIN 188 // from: 184.4
  SAY @337
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 189 // from: 185.1
  SAY @338
  IF ~~ THEN REPLY @339 GOTO 193
  IF ~~ THEN REPLY @340 GOTO 194
  IF ~~ THEN REPLY @341 GOTO 195
  IF ~~ THEN REPLY @342 GOTO 194
END

IF ~~ THEN BEGIN 190 // from: 185.2
  SAY @343
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 191 // from: 185.3
  SAY @344
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 192 // from: 185.4
  SAY @345
  IF ~~ THEN REPLY @339 GOTO 193
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 193 // from: 189.1
  SAY @346
  IF ~~ THEN REPLY @347 GOTO 196
  IF ~~ THEN REPLY @348 GOTO 197
  IF ~~ THEN REPLY @349 GOTO 198
  IF ~~ THEN REPLY @350 GOTO 197
END

IF ~~ THEN BEGIN 194 // from: 189.2
  SAY @351
  IF ~~ THEN REPLY @347 GOTO 196
  IF ~~ THEN REPLY @348 GOTO 197
  IF ~~ THEN REPLY @349 GOTO 198
  IF ~~ THEN REPLY @350 GOTO 197
END

IF ~~ THEN BEGIN 195 // from: 189.3
  SAY @352
  IF ~~ THEN REPLY @347 GOTO 196
  IF ~~ THEN REPLY @348 GOTO 197
  IF ~~ THEN REPLY @349 GOTO 198
  IF ~~ THEN REPLY @350 GOTO 197
END

IF ~~ THEN BEGIN 196 // from: 193.1
  SAY @353
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)SetGlobal("SharwynKiss","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 197 // from: 193.2
  SAY @354
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)SetGlobal("SharwynKiss","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 198 // from: 193.3
  SAY @355
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)SetGlobal("SharwynKiss","LOCALS",0)~ EXIT
END

// --------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("SharwynKiss","LOCALS",1)~ THEN BEGIN 184 // from:
  SAY @356
  IF ~~ THEN REPLY @331 GOTO 189
  IF ~~ THEN REPLY @332 GOTO 190
  IF ~~ THEN REPLY @333 GOTO 191
  IF ~~ THEN REPLY @334 GOTO 192
END

