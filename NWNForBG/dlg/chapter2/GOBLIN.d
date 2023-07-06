// Северная дорога, пещеры гоблинов и орков - Гоблин

BEGIN ~GOBLIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NeutralGoblins","MYAREA",0)Global("GoblinQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @17
  IF ~~ THEN DO ~SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY @14
  IF ~~ THEN DO ~GiveGoldForce(70)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @17
  IF ~~ THEN DO ~GiveGoldForce(70)SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NeutralGoblins","MYAREA",1)RandomNum(2,1)~ THEN BEGIN 12 // from:
  SAY @18
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NeutralGoblins","MYAREA",1)RandomNum(2,2)~ THEN BEGIN 13 // from:
  SAY @19
  IF ~~ THEN EXIT
END
