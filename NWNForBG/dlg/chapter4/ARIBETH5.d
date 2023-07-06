// Святилище Маугрима Арибет  Злая тень исчезла с лица Арибет, хотя она до сих пор выглядит очень печальной. Однако впервые после смерти Фентика в ее глазах появилось спокойное смирение.

// Я сдаюсь! Я сдаюсь! [ARIBE492]

BEGIN ~ARIBETH5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @8
  IF ~~ THEN  DO ~SetGlobal("AribetHostile1","LOCALS",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @14
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @20
  IF ~~ THEN  DO ~SetGlobal("AribetHostile1","LOCALS",1)Enemy()~ EXIT
END

// -----------------------------------------------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AribetHostile1","LOCALS",2)Global("AribetSurrendered","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @21
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @27
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @32
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 15.4
  SAY @33
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @31 GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY @43
  IF ~~ THEN  DO ~DestroyItem("MINHP1")ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("AribetHostile1","LOCALS",3)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY @44
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 22
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY @46
  IF ~~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @31 GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY @47
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY @48
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 21.4
  SAY @49
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY @50
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY @51
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY @52
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @31 GOTO 22
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 32
  IF ~~ THEN REPLY @55 GOTO 33
  IF ~~ THEN REPLY @56 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @59 GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY @60
  IF ~~ THEN REPLY @58 GOTO 35
  IF ~~ THEN REPLY @59 GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 31.3
  SAY @61
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 32.1
  SAY @62
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 38
  IF ~~ THEN REPLY @65 GOTO 22
END

IF ~~ THEN BEGIN 37 // from: 32.2
  SAY @66
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @67
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 40
  IF ~~ THEN REPLY @70 GOTO 41
  IF ~~ THEN REPLY @59 GOTO 37
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @71
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY @72
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY @73
  IF ~  PartyHasItem("ArRing")~ THEN REPLY @74 GOTO 43
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @75 GOTO 44
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @75 GOTO 45
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)~ THEN REPLY @76 GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @76 GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY @79
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 42.3
  SAY @80
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 46 // from: 42.4
  SAY @81
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 43.1
  SAY @82
  IF ~~ THEN REPLY @83 GOTO 46
  IF ~~ THEN REPLY @84 GOTO 44
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY @85
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @86
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.1
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 51
  IF ~~ THEN REPLY @65 GOTO 22
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY @89
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY @90
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY @91
  IF ~~ THEN REPLY @92 GOTO 54
  IF ~~ THEN REPLY @93 GOTO 55
  IF ~~ THEN REPLY @94 GOTO 56
  IF ~~ THEN REPLY @95 GOTO 57
  IF ~~ THEN REPLY @96 GOTO 22
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @97
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY @98
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY @99
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 53.4
  SAY @100
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 54.1
  SAY @101
  IF ~~ THEN  DO ~GiveItem("Nwkey16",LastTalkedToBy)SetGlobal("AribetSurrendered","GLOBAL",1)EscapeAreaDestroy(60)~ EXIT
END

// -----------------------------------------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AribetSurrendered","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 59 // from:
  SAY @102
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 62
  IF ~~ THEN REPLY @105 GOTO 63
  IF ~~ THEN REPLY @106 GOTO 64
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 62 // from: 60.2
  SAY @108
  IF ~~ THEN REPLY @109 GOTO 76
  IF ~~ THEN REPLY @110 GOTO 76
  IF ~~ THEN REPLY @105 GOTO 63
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY @111
  IF ~~ THEN REPLY @112 GOTO 67
  IF ~~ THEN REPLY @113 GOTO 68
  IF ~~ THEN REPLY @114 GOTO 69
  IF ~~ THEN REPLY @104 GOTO 62
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 60.4
  SAY @115
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 60.5
  SAY @116
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 61.1
  SAY @117
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from: 63.1
  SAY @118
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 68 // from: 63.2
  SAY @119
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 63.3
  SAY @120
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 70 // from: 64.1
  SAY @121
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from: 67.1
  SAY @122
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.1
  SAY @123
  IF ~~ THEN REPLY @112 GOTO 67
  IF ~~ THEN REPLY @114 GOTO 69
  IF ~~ THEN REPLY @104 GOTO 62
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 73 // from: 69.1
  SAY @124
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 74 // from: 71.1
  SAY @125
  IF ~~ THEN REPLY @113 GOTO 68
  IF ~~ THEN REPLY @114 GOTO 69
  IF ~~ THEN REPLY @104 GOTO 62
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY @126
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 75.1
  SAY @127
  IF ~~ THEN REPLY @112 GOTO 67
  IF ~~ THEN REPLY @113 GOTO 68
  IF ~~ THEN REPLY @104 GOTO 62
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 76 // from: 62.1
  SAY @128
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.1
  SAY @129
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY @130
  IF ~~ THEN REPLY @131 GOTO 79
  IF ~~ THEN REPLY @132 GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY @133
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 78.2
  SAY @134
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @135
  IF ~~ THEN REPLY @136 GOTO 84
  IF ~~ THEN REPLY @137 GOTO 84
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY @138
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.1
  SAY @139
  IF ~~ THEN REPLY @105 GOTO 63
  IF ~~ THEN REPLY @107 GOTO 65
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY @140
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.1
  SAY @141
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.1
  SAY @142
  IF ~~ THEN REPLY @143 GOTO 87
  IF ~~ THEN REPLY @144 GOTO 87
  IF ~~ THEN REPLY @145 GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.1
  SAY @146
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.1
  SAY @147
  IF ~~ THEN REPLY @105 GOTO 63
  IF ~~ THEN REPLY @107 GOTO 65
END

