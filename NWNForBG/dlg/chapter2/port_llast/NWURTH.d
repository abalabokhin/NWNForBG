// Порт-Лласт Дом Эйзенфельдта 2й этаж   Урт - оборотень 

BEGIN ~NWURTH~

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
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
IF ~~ THEN DO ~DestroyItem("MINHP1")ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("NWAMULNU")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @24
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @25
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY @26
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY @27
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 4.5
  SAY @28
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY @29
  IF ~~ THEN DO ~SetGlobal("NWUrthFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("NWURTRIG",LastTalkedToBy(Myself))IncrementGlobal("NWDeceiveNeurrik","GLOBAL",1)StartCutSceneMode()
StartCutScene("NWWERPAE")~ EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("NWUrthFraud","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY @30
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWURT","GLOBAL",0)SetGlobal("Dialogue","LOCALS",2)GiveItem("NWURTRIG",LastTalkedToBy(Myself))IncrementGlobal("NWDeceiveNeurrik","GLOBAL",-1)~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("NWUrthFraud","GLOBAL",1)~ THEN BEGIN 19 // from:
  SAY @31
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWURT","GLOBAL",0)SetGlobal("Dialogue","LOCALS",2)DestroyItem("NWURTRIG")IncrementGlobal("NWDeceiveNeurrik","GLOBAL",-1)~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWAMULNU")~ THEN REPLY @4 GOTO 3
  IF ~  !PartyHasItem("NWAMULNU")~ THEN REPLY @7 GOTO 6
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 17 // from:
  SAY @33
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN EXIT
END
