// Доки Поместье Андрода  Андрод Дварф Этот карлик весь трясется. Похоже, он очень боится, что вы причините ему зло.

BEGIN ~NWANDROD~

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
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 8 // from:
  SAY @16
  IF ~~ THEN EXIT
END

