// Порт-Лласт Фермер1 Заданий нет

BEGIN ~FARMER1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.2 7.1
  SAY @6
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @20
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @21
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY @22
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @26
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @29
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN BEGIN 15 // from:
  SAY @30
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
  IF ~~ THEN REPLY @31 GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 2
  IF ~~ THEN REPLY @31 GOTO 3
END
