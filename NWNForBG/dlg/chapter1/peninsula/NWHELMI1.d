// Полуостров Жрец Хельма   Эльф Облачение этого человека украшено гордым символом Хельма. Он с подозрением ловит ваш взгляд, но затем приветливо улыбается.

BEGIN ~NWHELMI1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~ForceSpellRes("NWSP101",LastTalkedToBy(Myself))~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @13 DO ~StartStore("NWHELMI1",LastTalkedToBy(Myself))~ EXIT
  IF ~  Global("Robbed","LOCALS",0)~ THEN REPLY @14 GOTO 10
  IF ~  GlobalGT("Robbed","LOCALS",0)~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 2
  IF ~~ THEN REPLY @16 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 3
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @22
  IF ~~ THEN REPLY @21 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY @23
  IF ~~ THEN REPLY @19 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY @24
  IF ~~ THEN REPLY @19 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 GOTO 2
  IF ~~ THEN REPLY @28 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY @29
  IF ~~ THEN REPLY @13 DO ~StartStore("NWHELMI1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @15 GOTO 2
  IF ~~ THEN REPLY @16 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 13
  IF ~~ THEN REPLY @32 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)IncrementGlobal("NWEvilNW1","GLOBAL",1)GiveGoldForce(166)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)Global("Robbed","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY @35
  IF ~~ THEN REPLY @1 DO ~ForceSpellRes("NWSP101",LastTalkedToBy(Myself))~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 16 // from:
  SAY @36
  IF ~~ THEN EXIT
END

