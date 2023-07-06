// Порт-Лласт Торговец

BEGIN ~PLMISC~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @7
  IF ~~ THEN DO ~StartStore("PLMisc",LastTalkedToBy(Myself))~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11
  IF ~~ THEN EXIT
END
