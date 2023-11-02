// Гет - оборотень 

BEGIN ~NWGETH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY @12 GOTO 9
  IF ~  RandomNum(2,2)~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @17
  IF ~~ THEN DO ~SetGlobal("NWGethFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("NWGETRIG",LastTalkedToBy(Myself))IncrementGlobal("NWDeceiveNeurrik","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @18
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @19
IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @22
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 3.4
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY @24
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @8 GOTO 7
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("NWGethFraud","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY @25
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWGETH","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)GiveItem("NWGETRIG",LastTalkedToBy(Myself))IncrementGlobal("NWDeceiveNeurrik","GLOBAL",-1)EscapeArea()~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("NWGethFraud","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY @27
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWGETH","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)DestroyItem("NWGETRIG")IncrementGlobal("NWDeceiveNeurrik","GLOBAL",-1)EscapeArea()~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 15 // from:
  SAY @28
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @8 GOTO 7
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 16 // from:
  SAY @29
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 17 // from:
  SAY @28
  IF ~~ THEN EXIT
END
