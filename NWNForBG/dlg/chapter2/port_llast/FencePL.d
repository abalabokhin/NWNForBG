// Порт-Лласт Скупщик краденого Заданий нет

BEGIN ~FENCEPL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN DO ~StartStore("FencePL",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @18
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @21
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @22
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 6
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 11 // from:
  SAY @23
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 6
END
