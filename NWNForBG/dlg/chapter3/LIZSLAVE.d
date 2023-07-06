// Форт Илкард Руины Расы Созидателей - в прошлом Раб, Человек  По железному воротнику на шее этого человека можно с уверенностью сказать, что он - раб.

BEGIN ~LIZSLAVE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 2 // from:
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @10
  IF ~~ THEN EXIT
END

