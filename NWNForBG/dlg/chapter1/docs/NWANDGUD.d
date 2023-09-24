// Доки Стражник поместья Андрода  Человек В эти трудные времена почти никто не помогает друг другу. Это человек, похоже, растерял всю дисциплину, присущую профессиональному стражнику.

BEGIN ~NWANDGUD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @18
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @19
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

