// Крепость Хельма   Дюмаль, Похоже, этот человек провел в камере несколько недель и получал едва достаточно еды и воды, чтобы выжить.

BEGIN ~NWDUMAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 6 // from:
  SAY @11
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

