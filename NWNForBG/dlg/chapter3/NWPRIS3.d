// Лунный Лес логово горного великана  Пленник великанов холмов Человек Мужчина  Метки на одежде этого мужчины говорят о том, что он - варвар из утгардтского племени Золотого Орла.

BEGIN ~NWPRIS3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @11
  IF ~~ THEN DO ~AddexperienceParty(30000)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @12
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @14
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @15
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16
  IF ~~ THEN DO ~Enemy()~ EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 8 // from:
  SAY @17
  IF ~~ THEN DO ~AddexperienceParty(30000)EscapeAreaDestroy(60)~ EXIT
END

