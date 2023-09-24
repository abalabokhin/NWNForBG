// ƒоки ƒжейс   Ётот совершенно подавленный человек выгл€дит так, как будто он потер€л все на свете. ”читыва€ состо€ние, в котором находитс€ город, это вполне может быть правдой.
// дать в инвентарь 12 золотых

BEGIN ~NWJACE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3

END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)GivePartyGold(12)ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @20
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 11 // from:
  SAY @0
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 12 // from:
  SAY @21
  IF ~~ THEN EXIT
END

