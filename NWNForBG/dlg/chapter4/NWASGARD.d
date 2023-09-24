// Зона военных действий  Дом старика   Асгард   Этот старик, очевидно, слепой.

BEGIN ~NWASGARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @23
  IF ~~ THEN EXIT
END

