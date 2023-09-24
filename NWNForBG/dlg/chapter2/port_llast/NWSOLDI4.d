// Порт-Лласт Казармы Дневальный

BEGIN ~NWSOLDI4~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  !NumTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY @8
  IF ~~ THEN EXIT
END
