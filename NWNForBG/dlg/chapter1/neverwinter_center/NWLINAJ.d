// ����� ������������ ������� �����   ���� ��'�����  ����   ���������   ������� ����� �� ����� �������, ��� ������� �������� �������� ������������� �� ��������. �� � �� ������ ������ ������� ���������� ��������.

BEGIN ~NWLINAJ~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)!Global("NWNChapter","GLOBAL",4)~ THEN BEGIN 60 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 GOTO 61
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @1 GOTO 138
  IF ~  Global("NWNChapter","GLOBAL",3)~ THEN REPLY @1 GOTO 139
  IF ~~ THEN REPLY @2 GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY @3
  IF ~  Global("NWLinaQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 63
  IF ~  Global("NWLinaQuest","GLOBAL",1)GlobalTimerExpired("LinaTimer","LOCALS")~ THEN REPLY @5 GOTO 64
  IF ~  Global("NWLinaQuest","GLOBAL",2)GlobalTimerExpired("LinaTimer","LOCALS")~ THEN REPLY @5 GOTO 65
  IF ~  Global("NWLinaQuest","GLOBAL",3)~ THEN REPLY @5 GOTO 66
  IF ~  OR(2)GlobalGT("NWLinaQuest","GLOBAL",3)GlobalTimerNotExpired("LinaTimer","LOCALS")~ THEN REPLY @5 GOTO 67
  IF ~  Global("NWBlackLakeDone","GLOBAL",0)~ THEN REPLY @6 GOTO 70
  IF ~  GlobalGT("NWBlackLakeDone","GLOBAL",0)~ THEN REPLY @6 GOTO 73
END

IF ~~ THEN BEGIN 62 // from: 60.5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 74
  IF ~~ THEN REPLY @10 GOTO 75
  IF ~~ THEN REPLY @11 GOTO 76
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 77
  IF ~~ THEN REPLY @14 GOTO 78
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 79
  IF ~~ THEN REPLY @17 GOTO 80
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY @18
  IF ~  PartyHasItem("Nwmisc30")~ THEN REPLY @19 GOTO 81
  IF ~~ THEN REPLY @20 GOTO 82
  IF ~~ THEN REPLY @21 GOTO 83
END

IF ~~ THEN BEGIN 67 // from: 61.5
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 61.6
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 84
  IF ~~ THEN REPLY @25 GOTO 85
END

IF ~~ THEN BEGIN 69 // from: 61.7
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 86
  IF ~~ THEN REPLY @28 GOTO 86
END

IF ~~ THEN BEGIN 70 // from: 61.8
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 87
  IF ~~ THEN REPLY @25 GOTO 85
END

IF ~~ THEN BEGIN 71 // from: 61.9
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 88
  IF ~~ THEN REPLY @33 GOTO 89
END

IF ~~ THEN BEGIN 72 // from: 61.10
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 90
  IF ~~ THEN REPLY @25 GOTO 85
END

IF ~~ THEN BEGIN 73 // from: 61.11
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 91
  IF ~~ THEN REPLY @39 GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 63.2
  SAY @40
  IF ~~ THEN REPLY @38 GOTO 91
  IF ~~ THEN REPLY @39 GOTO 92
END

IF ~~ THEN BEGIN 76 // from: 63.3
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 93
  IF ~~ THEN REPLY @43 GOTO 94
  IF ~~ THEN REPLY @44 GOTO 95
  IF ~~ THEN REPLY @45 GOTO 95
END

IF ~~ THEN BEGIN 77 // from: 64.1
  SAY @46
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 78 // from: 64.2
  SAY @47
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 79 // from: 65.1
  SAY @48
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 80 // from: 65.2
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 103
END

IF ~~ THEN BEGIN 81 // from: 66.1
  SAY @51
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 82 // from: 66.2
  SAY @52
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from: 66.3
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from: 68.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 117
  IF ~~ THEN REPLY @56 GOTO 118
END

IF ~~ THEN BEGIN 85 // from: 68.2
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from: 69.1
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 123
  IF ~~ THEN REPLY @60 GOTO 123
END

IF ~~ THEN BEGIN 87 // from: 70.1
  SAY @61
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 88 // from: 71.1
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 133
  IF ~~ THEN REPLY @33 GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 71.2
  SAY @64
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from: 72.1
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 134
  IF ~~ THEN REPLY @25 GOTO 85
END

IF ~~ THEN BEGIN 91 // from: 74.1
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 136
  IF ~~ THEN REPLY @69 GOTO 137
END

IF ~~ THEN BEGIN 92 // from: 74.2
  SAY @70
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 93 // from: 76.1
  SAY @71
  IF ~~ THEN REPLY @38 GOTO 91
  IF ~~ THEN REPLY @39 GOTO 92
END

IF ~~ THEN BEGIN 94 // from: 76.2
  SAY @72
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 95 // from: 76.3
  SAY @73
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 96 // from: 77.1
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 97
  IF ~~ THEN REPLY @76 GOTO 98
END

IF ~~ THEN BEGIN 97 // from: 96.1
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 99
  IF ~~ THEN REPLY @79 GOTO 100
END

IF ~~ THEN BEGIN 98 // from: 96.2
  SAY @80
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 99 // from: 97.1
  SAY @81
  IF ~~ THEN REPLY @82 GOTO 101
  IF ~~ THEN REPLY @83 GOTO 101
  IF ~~ THEN REPLY @84 GOTO 102
END

IF ~~ THEN BEGIN 100 // from: 97.2
  SAY @85
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest","GLOBAL",2)SetGlobalTimer("LinaTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 99.3
  SAY @87
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 79.1
  SAY @88
  IF ~~ THEN REPLY @89 GOTO 104
  IF ~~ THEN REPLY @90 GOTO 105
END

IF ~~ THEN BEGIN 104 // from: 103.1
  SAY @91
  IF ~~ THEN REPLY @92 GOTO 106
  IF ~~ THEN REPLY @93 GOTO 107
  IF ~~ THEN REPLY @94 GOTO 108
END

IF ~~ THEN BEGIN 105 // from: 103.2
  SAY @95
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 106 // from: 104.1
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 109
  IF ~~ THEN REPLY @98 GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 104.2
  SAY @99
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 104.3
  SAY @100
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY @101
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 110 // from: 106.2
  SAY @102
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 112
  IF ~~ THEN REPLY @105 GOTO 113
END

IF ~~ THEN BEGIN 112 // from: 111.1
  SAY @106
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 113 // from: 111.2
  SAY @107
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 81.1
  SAY @108
  IF ~~ THEN REPLY @109 GOTO 115
  IF ~~ THEN REPLY @110 GOTO 116
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY @111
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc30"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc30"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI1",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 116 // from: 114.2
  SAY @112
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc30"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc30"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI1",Player1,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 117 // from: 84.1
  SAY @113
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 118 // from: 84.2
  SAY @114
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 119 // from: 117.1
  SAY @115
  IF ~~ THEN REPLY @116 GOTO 120
  IF ~~ THEN REPLY @117 GOTO 121
END

IF ~~ THEN BEGIN 120 // from: 119.1
  SAY @118
  IF ~~ THEN REPLY @119 GOTO 122
END

IF ~~ THEN BEGIN 121 // from: 119.2
  SAY @120
  IF ~~ THEN REPLY @119 GOTO 122
END

IF ~~ THEN BEGIN 122 // from: 120.1
  SAY @121
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest2","GLOBAL",1)SetGlobalTimer("LinaTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 123 // from: 86.1
  SAY @122
  IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.1
  SAY @123
  IF ~~ THEN REPLY @124 GOTO 125
  IF ~~ THEN REPLY @125 GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 124.1
  SAY @126
  IF ~~ THEN REPLY @127 GOTO 127
  IF ~~ THEN REPLY @128 GOTO 128
END

IF ~~ THEN BEGIN 126 // from: 124.2
  SAY @129
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 127 // from: 125.1
  SAY @130
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 125.2
  SAY @131
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.1
  SAY @132
  IF ~~ THEN REPLY @133 GOTO 130
  IF ~~ THEN REPLY @134 GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 128.1
  SAY @135
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest3","GLOBAL",1)SetGlobalTimer("LinaTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 87.1
  SAY @136
  IF ~~ THEN REPLY @137 GOTO 132
  IF ~~ THEN REPLY @138 GOTO 85
END

IF ~~ THEN BEGIN 132 // from: 131.1
  SAY @139
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from: 88.1
  SAY @140
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from: 90.1
  SAY @141
  IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.1
  SAY @142
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 136 // from: 91.1
  SAY @143
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest","GLOBAL",1)SetGlobalTimer("LinaTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 91.2
  SAY @144
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 60.2
  SAY @3
  IF ~  Global("NWLinaQuest2","GLOBAL",0)~ THEN REPLY @145 GOTO 68
  IF ~  Global("NWLinaQuest2","GLOBAL",1)GlobalTimerExpired("LinaTimer","LOCALS")~ THEN REPLY @146 GOTO 148
  IF ~  Global("NWLinaQuest2","GLOBAL",2)GlobalTimerExpired("LinaTimer","LOCALS")~ THEN REPLY @147 GOTO 140
  IF ~  Global("NWLinaQuest2","GLOBAL",3)~ THEN REPLY @147 GOTO 141
  IF ~  OR(2)GlobalGT("NWLinaQuest2","GLOBAL",3)GlobalTimerNotExpired("LinaTimer","LOCALS")~ THEN REPLY @147 GOTO 142
  IF ~  Global("NWAavillQuest","GLOBAL",0)~ THEN REPLY @6 GOTO 71
  IF ~  GlobalGT("NWAavillQuest","GLOBAL",0)Global("NWLinaQuest3","GLOBAL",3)~ THEN REPLY @6 GOTO 73
  IF ~  PartyHasItem("Nwmisc33")~ THEN REPLY @148 GOTO 211
END

IF ~~ THEN BEGIN 139 // from: 60.3
  SAY @3
  IF ~  Global("NWLinaQuest3","GLOBAL",0)~ THEN REPLY @149 GOTO 69
  IF ~  Global("NWLinaQuest3","GLOBAL",1)GlobalTimerExpired("LinaTimer","LOCALS")~ THEN REPLY @150 GOTO 170
  IF ~  Global("NWLinaQuest3","GLOBAL",2)GlobalTimerExpired("LinaTimer","LOCALS")~ THEN REPLY @150 GOTO 171
  IF ~  Global("NWLinaQuest3","GLOBAL",3)~ THEN REPLY @150 GOTO 172
  IF ~  OR(2)GlobalGT("NWLinaQuest3","GLOBAL",3)GlobalTimerNotExpired("LinaTimer","LOCALS")~ THEN REPLY @150 GOTO 173
  IF ~~ THEN REPLY @6 GOTO 72
END

IF ~~ THEN BEGIN 140 // from: 138.3
  SAY @151
  IF ~~ THEN REPLY @152 GOTO 143
  IF ~~ THEN REPLY @153 GOTO 144
END

IF ~~ THEN BEGIN 141 // from: 138.4
  SAY @154
  IF ~  PartyHasItem("Nwmisc32")~ THEN REPLY @155 GOTO 149
  IF ~~ THEN REPLY @156 GOTO 150
  IF ~~ THEN REPLY @157 GOTO 151
END

IF ~~ THEN BEGIN 142 // from: 138.5
  SAY @158
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 143 // from: 140.1
  SAY @159
  IF ~~ THEN REPLY @160 GOTO 145
  IF ~~ THEN REPLY @161 GOTO 146
END

IF ~~ THEN BEGIN 144 // from: 140.2
  SAY @162
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 145 // from: 143.1
  SAY @163
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 143.2
  SAY @164
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY @165
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest2","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 148 // from: 138.2
  SAY @166
  IF ~~ THEN REPLY @167 GOTO 156
  IF ~~ THEN REPLY @168 GOTO 157
END

IF ~~ THEN BEGIN 149 // from: 141.1
  SAY @169
  IF ~  !PartyHasItem("NWAMULI1")~ THEN REPLY @170 GOTO 152
  IF ~  PartyHasItem("NWAMULI1")~ THEN REPLY @170 GOTO 153
  IF ~  !PartyHasItem("NWAMULI1")~ THEN REPLY @171 GOTO 152
  IF ~  PartyHasItem("NWAMULI1")~ THEN REPLY @171 GOTO 153
  IF ~  PartyHasItem("NWAMULI1")~ THEN REPLY @172 GOTO 154
  IF ~  !PartyHasItem("NWAMULI1")~ THEN REPLY @172 GOTO 155
END

IF ~~ THEN BEGIN 150 // from: 141.2
  SAY @173
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 151 // from: 141.3
  SAY @174
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 152 // from: 149.1
  SAY @175
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc32"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc32"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI2",Player1,1,1,1)~
  EXIT
END

IF ~~ THEN BEGIN 153 // from: 149.2
  SAY @176
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc32"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc32"))
    ActionOverride("NWITMDES",TakePartyItem("NWAMULI1"))
    ActionOverride("NWITMDES",DestroyItem("NWAMULI1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 154 // from: 149.3
  SAY @177
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc32"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc32"))
    ActionOverride("NWITMDES",TakePartyItem("NWAMULI1"))
    ActionOverride("NWITMDES",DestroyItem("NWAMULI1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI2",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 155 // from: 149.4
  SAY @178
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest2","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",100000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc32"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc32"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI2",Player1,1,1,1)~
  EXIT
END

IF ~~ THEN BEGIN 156 // from: 148.1
  SAY @179
  IF ~~ THEN REPLY @180 GOTO 158
  IF ~~ THEN REPLY @181 GOTO 159
END

IF ~~ THEN BEGIN 157 // from: 148.2
  SAY @182
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 158 // from: 156.1
  SAY @183
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 159 // from: 156.2
  SAY @184
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 160 // from: 158.1
  SAY @185
  IF ~~ THEN REPLY @186 GOTO 161
  IF ~~ THEN REPLY @187 GOTO 162
END

IF ~~ THEN BEGIN 161 // from: 160.1
  SAY @188
  IF ~~ THEN REPLY @189 GOTO 163
END

IF ~~ THEN BEGIN 162 // from: 160.2
  SAY @190
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 163 // from: 161.1
  SAY @191
  IF ~~ THEN REPLY @192 GOTO 164
  IF ~~ THEN REPLY @193 GOTO 165
END

IF ~~ THEN BEGIN 164 // from: 163.1
  SAY @194
  IF ~~ THEN REPLY @195 GOTO 166
  IF ~~ THEN REPLY @196 GOTO 167
END

IF ~~ THEN BEGIN 165 // from: 163.2
  SAY @197
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY @198
  IF ~~ THEN REPLY @199 GOTO 168
  IF ~~ THEN REPLY @200 GOTO 169
END

IF ~~ THEN BEGIN 167 // from: 164.2
  SAY @201
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY @202
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest2","GLOBAL",2)SetGlobalTimer("LinaTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 169 // from: 166.2
  SAY @203
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest2","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 170 // from: 139.2
  SAY @204
  IF ~~ THEN REPLY @205 GOTO 174
  IF ~~ THEN REPLY @206 GOTO 85
END

IF ~~ THEN BEGIN 171 // from: 139.3
  SAY @207
  IF ~~ THEN REPLY @208 GOTO 199
  IF ~~ THEN REPLY @209 GOTO 200
END

IF ~~ THEN BEGIN 172 // from: 139.4
  SAY @210
  IF ~  PartyHasItem("Nwmisc33")~ THEN REPLY @148 GOTO 211
  IF ~~ THEN REPLY @211 GOTO 212
  IF ~~ THEN REPLY @212 GOTO 213
END

IF ~~ THEN BEGIN 173 // from: 139.5
  SAY @213
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from: 170.1
  SAY @214
  IF ~~ THEN REPLY @215 GOTO 175
  IF ~~ THEN REPLY @216 GOTO 176
  IF ~~ THEN REPLY @217 GOTO 177
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY @218
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 176 // from: 174.2
  SAY @219
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 174.3
  SAY @220
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.1
  SAY @221
  IF ~~ THEN REPLY @222 GOTO 179
  IF ~~ THEN REPLY @223 GOTO 180
END

IF ~~ THEN BEGIN 179 // from: 178.1
  SAY @224
  IF ~~ THEN REPLY @225 GOTO 181
END

IF ~~ THEN BEGIN 180 // from: 178.2
  SAY @226
  IF ~~ THEN REPLY @227 GOTO 182
  IF ~~ THEN REPLY @228 GOTO 183
  IF ~~ THEN REPLY @229 GOTO 184
END

IF ~~ THEN BEGIN 181 // from: 179.1
  SAY @230
  IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 182 // from: 180.1
  SAY @231
  IF ~~ THEN REPLY @232 GOTO 181
  IF ~~ THEN REPLY @233 GOTO 186
  IF ~~ THEN REPLY @234 GOTO 187
END

IF ~~ THEN BEGIN 183 // from: 180.2
  SAY @224
  IF ~~ THEN REPLY @225 GOTO 181
END

IF ~~ THEN BEGIN 184 // from: 180.3
  SAY @235
  IF ~~ THEN REPLY @225 GOTO 181
END

IF ~~ THEN BEGIN 185 // from: 181.1
  SAY @236
  IF ~~ THEN REPLY @237 GOTO 188
  IF ~~ THEN REPLY @238 GOTO 189
END

IF ~~ THEN BEGIN 186 // from: 182.2
  SAY @239
  IF ~~ THEN REPLY @240 GOTO 190
  IF ~~ THEN REPLY @241 GOTO 191
END

IF ~~ THEN BEGIN 187 // from: 182.3
  SAY @242
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 188 // from: 185.1
  SAY @243
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 189 // from: 185.2
  SAY @244
  IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 190 // from: 186.1
  SAY @245
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 191 // from: 186.2
  SAY @246
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest3","GLOBAL",66)~ EXIT
END

IF ~~ THEN BEGIN 192 // from: 188.1
  SAY @247
  IF ~~ THEN REPLY @248 GOTO 193
  IF ~~ THEN REPLY @249 GOTO 193
END

IF ~~ THEN BEGIN 193 // from: 192.1
  SAY @250
  IF ~~ THEN REPLY @251 GOTO 194
  IF ~~ THEN REPLY @252 GOTO 195
END

IF ~~ THEN BEGIN 194 // from: 193.1
  SAY @253
  IF ~~ THEN REPLY @254 GOTO 196
  IF ~~ THEN REPLY @255 GOTO 197
END

IF ~~ THEN BEGIN 195 // from: 193.2
  SAY @256
  IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 196 // from: 194.1
  SAY @257
  IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 194.2
  SAY @258
  IF ~~ THEN REPLY @259 GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.1
  SAY @260
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest3","GLOBAL",2)SetGlobalTimer("LinaTimer","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN 199 // from: 171.1
  SAY @261
  IF ~  Gender(Player1,MALE)~ THEN REPLY @262 GOTO 201
  IF ~~ THEN REPLY @167 GOTO 202
  IF ~~ THEN REPLY @263 GOTO 203
END

IF ~~ THEN BEGIN 200 // from: 171.2
  SAY @264
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 201 // from: 199.1
  SAY @265
  IF ~~ THEN DO ~IncrementGlobal("Compliment","LOCALS",1)~ GOTO 202
END

IF ~~ THEN BEGIN 202 // from: 199.2
  SAY @266
  IF ~~ THEN REPLY @267 GOTO 204
  IF ~~ THEN REPLY @268 GOTO 205
END

IF ~~ THEN BEGIN 203 // from: 199.3
  SAY @269
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 204 // from: 202.1
  SAY @270
  IF ~~ THEN REPLY @271 GOTO 206
  IF ~~ THEN REPLY @272 GOTO 207
END

IF ~~ THEN BEGIN 205 // from: 202.2
  SAY @273
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 206 // from: 204.1
  SAY @274
  IF ~~ THEN REPLY @275 GOTO 208
  IF ~~ THEN REPLY @276 GOTO 209
END

IF ~~ THEN BEGIN 207 // from: 204.2
  SAY @277
  IF ~~ THEN DO ~IncrementGlobal("Compliment","LOCALS",1)~ GOTO 206
END

IF ~~ THEN BEGIN 208 // from: 206.1
  SAY @278
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 209 // from: 206.2
  SAY @279
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 210 // from: 208.1
  SAY @280
  IF ~~ THEN DO ~SetGlobal("NWLinaQuest3","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 211 // from: 172.1
  SAY @281
  IF ~OR(2)PartyHasItem("NWAMULI2")PartyHasItem("NWAMULI1")~ THEN GOTO 214
  IF ~!PartyHasItem("NWAMULI2")!PartyHasItem("NWAMULI1")~ THEN GOTO 215
END

IF ~~ THEN BEGIN 212 // from: 172.2
  SAY @282
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 213 // from: 172.3
  SAY @283
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 214 // from: 211.1
  SAY @284
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc33"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc33"))
    ActionOverride("NWITMDES",TakePartyItem("NWAMULI2"))
    ActionOverride("NWITMDES",DestroyItem("NWAMULI2"))
    ActionOverride("NWITMDES",TakePartyItem("NWAMULI1"))
    ActionOverride("NWITMDES",DestroyItem("NWAMULI1"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI3",Player1,0,0,0)~
  EXIT
END

IF ~~ THEN BEGIN 215 // from: 211.2
  SAY @285
  IF ~~ THEN DO ~
    SetGlobal("NWLinaQuest3","GLOBAL",4)
    AddexperienceParty(60000)
    AddXPObject("NWLINA",150000)
    CreateCreatureObject("NWITMDES",Player1,0,0,0)
    ActionOverride("NWITMDES",TakePartyItem("Nwmisc33"))
    ActionOverride("NWITMDES",DestroyItem("Nwmisc33"))
    ActionOverride("NWITMDES",DestroySelf())
    GiveItemCreate("NWAMULI3",Player1,0,0,0)~
  EXIT
END

// --------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  InParty(Myself)Global("NWNChapter","GLOBAL",4)Global("Chapter4Talk","LOCALS",0)!Dead("NWMORAG")~ THEN BEGIN 216 // from:
  SAY @286
  IF ~~ THEN REPLY @287 GOTO 217
  IF ~~ THEN REPLY @288 GOTO 218
END

IF ~~ THEN BEGIN 217 // from: 216.1
  SAY @289
  IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 218 // from: 216.2
  SAY @290
  IF ~~ THEN REPLY @291 GOTO 217
  IF ~~ THEN REPLY @292 GOTO 220
END

IF ~~ THEN BEGIN 219 // from: 217.1
  SAY @293
  IF ~~ THEN REPLY @294 GOTO 221
  IF ~~ THEN REPLY @295 GOTO 222
  IF ~~ THEN REPLY @296 GOTO 223
END

IF ~~ THEN BEGIN 220 // from: 218.2
  SAY @297
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1
  SAY @298
  IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 222 // from: 219.2
  SAY @299
  IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 223 // from: 219.3
  SAY @300
  IF ~~ THEN REPLY @294 GOTO 221
  IF ~~ THEN REPLY @295 GOTO 222
  IF ~~ THEN REPLY @296 GOTO 223
END

IF ~~ THEN BEGIN 224 // from: 221.1
  SAY @301
  IF ~~ THEN REPLY @302 GOTO 225
  IF ~~ THEN REPLY @303 GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.1
  SAY @304
  IF ~~ THEN REPLY @109 GOTO 226
  IF ~~ THEN REPLY @305 GOTO 227
END

IF ~~ THEN BEGIN 226 // from: 225.1
  SAY @306
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 227 // from: 225.2
  SAY @307
  IF ~~ THEN DO ~SetGlobal("Chapter4Talk","LOCALS",1)~ EXIT
END

