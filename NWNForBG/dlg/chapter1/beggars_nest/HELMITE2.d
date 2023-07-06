// Гнездо нищих Храм Хельма Жрец Хельма   Человек Облачение этого человека украшено гордым символом Хельма. Он с подозрением ловит ваш взгляд, но затем приветливо улыбается.

BEGIN ~HELMITE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 5
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY @12
  IF ~~ THEN DO ~StartStore("Helmite",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @13
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @15
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY @18
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 5
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 6
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @20
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 4
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 9
END

// -------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN REPLY @1 DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

