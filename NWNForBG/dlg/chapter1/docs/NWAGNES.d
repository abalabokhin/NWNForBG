// Доки Агнес  Мастерсон   Эта женщина отвечает вам холодным взглядом, полностью отторгая ваше присутствие. Она явно не намерена с вами разговаривать.

BEGIN ~NWAGNES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: NWHEMMEL 0
  SAY @2
  IF ~~ THEN EXTERN ~NWHEMMEL~ 2
END

IF ~~ THEN BEGIN 3 // from: NWHEMMEL 4
  SAY @3
  IF ~~ THEN REPLY @4 EXTERN ~NWHEMMEL~ 10
  IF ~~ THEN REPLY @5 EXTERN ~NWHEMMEL~ 17
  IF ~~ THEN REPLY @6 EXTERN ~NWHEMMEL~ 18
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: NWHEMMEL 6
  SAY @8
  IF ~~ THEN EXTERN ~NWHEMMEL~ 12
END

IF ~~ THEN BEGIN 5 // from: 3.4
  SAY @9
  IF ~~ THEN EXTERN ~NWHEMMEL~ 19
END

IF ~~ THEN BEGIN 6 // from: NWHEMMEL 5
  SAY @10
  IF ~~ THEN EXTERN ~NWHEMMEL~ 21
END

IF ~~ THEN BEGIN 7 // from: NWHEMMEL 17
  SAY @11
  IF ~~ THEN EXTERN ~NWHEMMEL~ 23
END

IF ~~ THEN BEGIN 8 // from: NWHEMMEL 26
  SAY @12
  IF ~~ THEN EXTERN ~NWHEMMEL~ 27
END


