// Доки Хофф Полуорк   Это громила весьма неприятной внешности. По всему видно - первый задира и любитель драк.

BEGIN ~NWHOFF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffScared","GLOBAL",0)Global("HoffHasMisc19","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~  PartyHasItem("Nwmisc19")~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @12
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @12
  IF ~~ THEN DO ~SetGlobal("HoffScared","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",1)TakePartyItem("Nwmisc19")GiveGoldForce(400)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffScared","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY @16
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TamoraQuest","GLOBAL",1)Global("HoffHasMisc19","GLOBAL",1)~ THEN BEGIN 10 // from:
  SAY @17
  IF ~~ THEN EXIT
END

