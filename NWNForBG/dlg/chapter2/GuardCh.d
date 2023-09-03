// Чарвуд, Стражник замка раса - человек. Этот стражник ходит туда-сюда со слегка смущенным и растерянным выражением лица.

BEGIN ~GUARDCH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("DoorOpened","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @16
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY @10 GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY @17
  IF ~~ THEN DO ~SetGlobal("DoorOpened","LOCALS",1)Unlock("Door6")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY @18
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DoorOpened","LOCALS",0)~ THEN BEGIN 10 // from:
  SAY @19
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DoorOpened","LOCALS",1)~ THEN BEGIN 11 // from:
  SAY @20
  IF ~~ THEN EXIT
END
