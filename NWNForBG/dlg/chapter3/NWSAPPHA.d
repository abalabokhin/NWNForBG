// Форт Илкард сад в руинах Созидателей Сапфира, Полуэльф Внешность этой женщины почти не оставляет сомнений в том, что она практикует дикую магию, хотя такие маги крайне редко встречаются в Королевствах.

BEGIN ~NWSAPPHA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWSapphiraJob","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~  GlobalGT("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @3 GOTO 14
  IF ~  Global("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~  GlobalGT("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @17
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~  GlobalGT("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @3 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @19
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @20
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @21
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @26
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @27
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @28
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 0.4
  SAY @29
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~  GlobalGT("SeedsArePlanted","GLOBAL",0)~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~  Global("NWSapphiraJob","GLOBAL",0)~ THEN REPLY @32 GOTO 17
  IF ~  GlobalGT("NWSapphiraJob","GLOBAL",0)~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @33
  IF ~  Global("NWSapphiraJob","GLOBAL",0)~ THEN REPLY @32 GOTO 17
  IF ~  GlobalGT("NWSapphiraJob","GLOBAL",0)~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @37
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @38
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @41
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @36 GOTO 6
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @46
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @47
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @48
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @36 GOTO 6
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @49
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~~ THEN REPLY @52 GOTO 29
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @56 GOTO 35
  IF ~~ THEN REPLY @31 GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY @57
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY @18
  IF ~~ THEN DO ~SetGlobal("NWSapphiraJob","GLOBAL",1)GiveItemCreate("Nwmisc74",LastTalkedToBy,0,0,0)GiveItemCreate("Nwmisc75",LastTalkedToBy,0,0,0)GiveItemCreate("Nwbook54",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @105777 EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 32
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @61 GOTO 33
  IF ~~ THEN REPLY @36 GOTO 6
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @62
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @61 GOTO 33
  IF ~~ THEN REPLY @36 GOTO 6
END

IF ~~ THEN BEGIN 33 // from: 31.3
  SAY @63
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 34 // from: 28.1
  SAY @64
  IF ~~ THEN REPLY @56 GOTO 35
  IF ~~ THEN REPLY @31 GOTO 36
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY @65
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @31 GOTO 36
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 36 // from: 28.3
  SAY @66
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @56 GOTO 35
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 37 // from: 29.1
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 38
  IF ~~ THEN REPLY @69 GOTO 39
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @70
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~~ THEN REPLY @53 GOTO 30
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY @71
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~~ THEN REPLY @53 GOTO 30
END

// ------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWSapphiraJob","GLOBAL",1)Global("SeedsArePlanted","GLOBAL",0)~ THEN BEGIN 40 // from:
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 41
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @74
  IF ~~ THEN EXIT
END

// ------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWSapphiraJob","GLOBAL",1)Global("SeedsArePlanted","GLOBAL",1)~ THEN BEGIN 42 // from:
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 43
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 44
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @79 GOTO 45
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @79 GOTO 46
  IF ~~ THEN REPLY @80 GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY @81
  IF ~~ THEN DO ~SetGlobal("NWSapphiraJob","GLOBAL",2)GiveItemCreate("MISC41",LastTalkedToBy,2,0,0)GiveItemCreate("MISC42",LastTalkedToBy,1,0,0)GiveItemCreate("MISC43",LastTalkedToBy,1,0,0)GiveItemCreate("MISC44",LastTalkedToBy,1,0,0)AddexperienceParty(140000)EraseJournalEntry(@105777)~ SOLVED_JOURNAL @105850 EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY @83
  IF ~~ THEN DO ~SetGlobal("NWSapphiraJob","GLOBAL",2)GiveItemCreate("MISC41",LastTalkedToBy,2,0,0)GiveItemCreate("MISC42",LastTalkedToBy,1,0,0)GiveItemCreate("MISC43",LastTalkedToBy,1,0,0)GiveItemCreate("MISC44",LastTalkedToBy,1,0,0)GiveItemCreate("SCRL7U",LastTalkedToBy,1,1,0)AddexperienceParty(140000)EraseJournalEntry(@105777)~ SOLVED_JOURNAL @105850 EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY @84
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 47 // from: 43.4
  SAY @85
  IF ~~ THEN GOTO 44
END

// ------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWSapphiraJob","GLOBAL",2)~ THEN BEGIN 48 // from:
  SAY @86
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @87
  IF ~~ THEN EXIT
END

