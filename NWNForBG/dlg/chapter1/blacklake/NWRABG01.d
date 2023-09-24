// Чернозерье Стражник поместья Рамботтома   Этот человек слишком тощ для стражника. Он совсем не похож на бойца. Кажется, он нервничает. OpenState("DOOR08",FALSE)

BEGIN ~NWRABG01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatGT(LastTalkedToBy(Myself),7,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~  OpenState("Door13",TRUE)~ THEN GOTO 9
  IF ~  OpenState("Door13",FALSE)~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @16
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @20
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @21
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @22
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 3.1
  SAY @23
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatLT(LastTalkedToBy(Myself),8,CHR)~ THEN BEGIN 14 // from:
  SAY @24
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

