// Бран - оборотень 

BEGIN ~NWBRUN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~  RandomNum(2,1)~ THEN REPLY @10 GOTO 8
  IF ~  RandomNum(2,2)~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("NWBranFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("NWBRUNRG",LastTalkedToBy(Myself))IncrementGlobal("NWDeceiveNeurrik","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @22
IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @25
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY @28
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 3.2
  SAY @29
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 3.3
  SAY @30
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 3.4
  SAY @31
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("NWBranFraud","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY @33
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWBRUN","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)GiveItem("NWBRUNRG",LastTalkedToBy(Myself))IncrementGlobal("NWDeceiveNeurrik","GLOBAL",-1)EscapeAreaObject("Tran2300")~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("NWBranFraud","GLOBAL",1)~ THEN BEGIN 17 // from:
  SAY @34
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @33
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWBRUN","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)DestroyItem("NWBRUNRG")IncrementGlobal("NWDeceiveNeurrik","GLOBAL",-1)EscapeAreaObject("Tran2300")~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 19 // from:
  SAY @35
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @36 GOTO 2
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @38 GOTO 6
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 20 // from:
  SAY @39
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 21 // from:
  SAY @35
  IF ~~ THEN EXIT
END
