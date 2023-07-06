// Колодец Беорунна: Бар 1 этаж Бармен

BEGIN ~NWBAR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Racket ","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN DO ~StartStore("Nwbar1",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~  Global("Racket ","LOCALS",0)~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("Racket ","LOCALS",1)GiveGoldForce(300)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @13
  IF ~~ THEN REPLY @7 GOTO 1
  IF ~~ THEN REPLY @14 GOTO 4
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Racket ","LOCALS",0)~ THEN BEGIN 7 // from:
  SAY @15
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @18 GOTO 4
END

