// Доки Нейбор Воришка  Похоже, этот человек привык к суровой жизни. Он нервно присматривается к прохожим, отмечая, кто что несет и во что одет.
// при Global("Follow","LOCALS",0) - стоит, при Global("Follow","LOCALS",1) преследует

BEGIN ~NEYBOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN EXIT
END

// ------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Follow","LOCALS",0)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~  Global("Warning","LOCALS",1)~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @15
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Warning","LOCALS",1)RunAwayFrom(LastTalkedToBy(Myself),20)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @20
  IF ~~ THEN DO ~SetGlobal("KnowsAboutAuction","MYAREA",1)SetGlobal("Warning","LOCALS",1)EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @24
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @27
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 11
END

