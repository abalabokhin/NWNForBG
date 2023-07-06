// Центр Невервинтера Ниатар друид  Хотя он больше привязан к природе, этот друид очень тяжело переживает страдания своего города.

BEGIN ~NYATAR2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN DO ~StartStore("Nyatar",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY @6
  IF ~~ THEN EXIT
END

