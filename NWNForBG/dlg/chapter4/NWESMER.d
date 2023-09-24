//  Пещеры замка Невер Эсмеральда  Полуэльф Женщина  Глаза этой женщины живые и умные, хотя что-то, несомненно, ее беспокоит.

BEGIN ~NWESMER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @13
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY @14
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

