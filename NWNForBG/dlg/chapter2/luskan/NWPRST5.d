// Ћускан ’рам “ира ∆рец “ира Ётот воин-жрец охвачен €ростным пылом человека, который проигрывает битву, но все равно не сдастс€.

BEGIN ~NWPRST5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,CLERIC_ALL)!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN DO ~StartStore("NWPRST5",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @18
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @19
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @22
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// -----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,CLERIC_ALL)Alignment(LastTalkedToBy,MASK_EVIL)~ THEN BEGIN 12 // from:
  SAY @23
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// -----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,PALADIN)~ THEN BEGIN 13 // from:
  SAY @24
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// -----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,PALADIN)!Class(LastTalkedToBy,CLERIC_ALL)~ THEN BEGIN 14 // from:
  SAY @25
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END


