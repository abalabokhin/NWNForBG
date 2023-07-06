// Центр Невервинтера Ярмарка Мечей   Лину Ла'нерал  Эльф   Священник   Оттирая пятно со своей рубашки, эта молодая эльфийка радостно осматривается по сторонам. Но в ее мягком облике заметен внутренний стержень.  Жрец Сеханин  (Целитель)

BEGIN ~LINA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @4 GOTO 3
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @5 GOTO 3
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @6 GOTO 4
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @6 GOTO 5
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @7 GOTO 6
  IF ~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @17
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @4 GOTO 3
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @5 GOTO 3
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @6 GOTO 4
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @6 GOTO 5
  IF ~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @18
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY @19
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @22
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @23 GOTO 12
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @23 GOTO 13
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @24 GOTO 14
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @26
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @23 GOTO 12
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @23 GOTO 13
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @24 GOTO 14
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @27
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @28
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @29
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY @30
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY @30
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY @31
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @34
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @38 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @39
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @38 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 22
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 21.3
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 21.4
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.2
  SAY @54
  IF ~~ THEN REPLY @53 GOTO 29
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY @55
  IF ~  PartyGoldGT(799)~ THEN REPLY @56 GOTO 30
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @57 GOTO 31
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @59 GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 23.2
  SAY @60
  IF ~  PartyGoldGT(799)~ THEN REPLY @56 GOTO 30
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @57 GOTO 31
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @59 GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY @61
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY @62
  IF ~~ THEN DO ~TakePartyGold(800)DestroyGold(800)SetGlobal("LinaReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @63
  IF ~~ THEN DO ~TakePartyGold(600)DestroyGold(600)SetGlobal("LinaReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.3
  SAY @64
  IF ~  PartyGoldGT(799)~ THEN REPLY @56 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @59 GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 27.4
  SAY @65
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 23
  IF ~~ THEN REPLY @69 GOTO 34
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)~ THEN BEGIN 36 // from:
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 37
  IF ~~ THEN REPLY @72 GOTO 23
  IF ~~ THEN REPLY @73 GOTO 9
  IF ~~ THEN REPLY @74 GOTO 34
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @75
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @2 GOTO 34
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",1)Global("LinaEscape","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 39
  IF ~~ THEN REPLY @78 GOTO 40
  IF ~~ THEN REPLY @79 GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @80
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY @81
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY @82
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 43
  IF ~~ THEN REPLY @85 GOTO 44
  IF ~~ THEN REPLY @79 GOTO 41
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @86
  IF ~~ THEN REPLY @87 GOTO 45
  IF ~~ THEN REPLY @88 GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY @89
  IF ~~ THEN DO ~SetGlobal("LinaEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("LinaReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 46
  IF ~~ THEN REPLY @92 GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @93
  IF ~~ THEN REPLY @94 GOTO 47
  IF ~~ THEN REPLY @95 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 48
  IF ~~ THEN REPLY @98 GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @99
  IF ~~ THEN REPLY @100 GOTO 49
  IF ~~ THEN REPLY @101 GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @102
  IF ~~ THEN REPLY @103 GOTO 51
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 41
END

IF ~~ THEN BEGIN 50 // from: 48.2
  SAY @106
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY @107
  IF ~~ THEN REPLY @108 GOTO 53
  IF ~~ THEN REPLY @109 GOTO 54
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 41
END

IF ~~ THEN BEGIN 52 // from: 49.2
  SAY @110
  IF ~~ THEN DO ~SetGlobal("LinaEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("LinaReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY @111
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 51.2
  SAY @112
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 41
END

IF ~~ THEN BEGIN 55 // from: 53.1
  SAY @113
  IF ~~ THEN REPLY @114 GOTO 54
  IF ~~ THEN REPLY @115 GOTO 54
  IF ~~ THEN REPLY @79 GOTO 41
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",0)~ THEN BEGIN 56 // from:
  SAY @116
  IF ~~ THEN REPLY @117 GOTO 57
  IF ~~ THEN REPLY @118 GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY @119
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.2
  SAY @120
  IF ~~ THEN REPLY @84 GOTO 43
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @79 GOTO 41
END

// --------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",0)~ THEN BEGIN 59 // from:
  SAY @121
  IF ~~ THEN REPLY @108 GOTO 53
  IF ~~ THEN REPLY @109 GOTO 54
  IF ~~ THEN REPLY @104 GOTO 52
  IF ~~ THEN REPLY @105 GOTO 41
END

