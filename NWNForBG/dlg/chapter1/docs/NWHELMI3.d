// Доки Хельмит  Человек Облачение этого человека украшено гордым символом Хельма. Он с подозрением ловит ваш взгляд, но затем приветливо улыбается.

BEGIN ~NWHELMI3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~  Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @9 GOTO 6
  IF ~  !Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @9 GOTO 7
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN DO ~ForceSpellRes("NWSP101",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @13
  IF ~  Global("KnowsAboutAuction","MYAREA",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

