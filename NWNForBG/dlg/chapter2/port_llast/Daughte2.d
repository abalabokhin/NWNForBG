// Порт-Лласт Дочь фермера Заданий нет

BEGIN ~DAUGHTE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 3.1.2
  SAY @13
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 4.1.2
  SAY @17
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 1
  IF ~~ THEN REPLY @22 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @23
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @25
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @24 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 12
  IF ~~ THEN REPLY @28 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @29
  IF ~~ THEN REPLY @28 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @30
  IF ~~ THEN REPLY @27 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @32
  IF ~  RandomNum(2,1)~ THEN REPLY @33 GOTO 14
  IF ~  RandomNum(2,2)~ THEN REPLY @33 GOTO 15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.1
  SAY @34
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 2.2
  SAY @35
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 7
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,1)~ THEN BEGIN 16 // from:
  SAY @36
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,2)~ THEN BEGIN 17 // from:
  SAY @37
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 7
END
