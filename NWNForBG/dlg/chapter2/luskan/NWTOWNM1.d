// Лускан Дом,  Мужчина Похоже, этот угодливый мужчина охвачен паранойей и ужасом.

BEGIN ~NWTOWNM1~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Hostile","LOCALS",1)RandomWalk()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @16
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

// --------------------------------------------------

IF ~  !NumTimesTalkedTo(0)!Global("Hostile","LOCALS",1)~ THEN BEGIN 11
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 0.1
  SAY @23
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

// --------------------------------------------------

IF ~  Global("Hostile","LOCALS",1)~ THEN BEGIN 11
  SAY @24
  IF ~~ THEN DO ~RandomWalk()~ EXIT
END

