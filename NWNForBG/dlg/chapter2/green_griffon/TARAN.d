// Северная дорога Тарран - найти брата Неву (ловушка)

BEGIN ~TARAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 6
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @18
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @21
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @22 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @23
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @26
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 11
  IF ~~ THEN REPLY @29 GOTO 12
  IF ~~ THEN REPLY @30 GOTO 13
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @33
  IF ~~ THEN REPLY @29 GOTO 12
  IF ~~ THEN REPLY @30 GOTO 13
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @34
  IF ~~ THEN REPLY @28 GOTO 11
  IF ~~ THEN REPLY @30 GOTO 13
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY @35
  IF ~~ THEN REPLY @28 GOTO 11
  IF ~~ THEN REPLY @29 GOTO 12
  IF ~~ THEN REPLY @31 GOTO 14
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY @36
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @37
  IF ~~ THEN REPLY @38 DO ~SetGlobal("SearchNeva","GLOBAL",1)~ UNSOLVED_JOURNAL @107669 EXIT
  IF ~~ THEN REPLY @40 DO ~SetGlobal("SearchNeva","GLOBAL",1)~ UNSOLVED_JOURNAL @107669 EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SearchNeva","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 17
  IF ~~ THEN REPLY @43 GOTO 18
  IF ~~ THEN REPLY @44 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @47
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("SearchNeva","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @48
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @24 EXIT
END
