// Дом Вэйнива Слуга

BEGIN ~NWSERVAV~

IF ~  !NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6
  IF ~~ THEN DO ~EscapeAreaDestroy(90)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @8
  IF ~~ THEN EXIT
END
