// Колодец Беорунна: Анклав Гильдии Звездного Плаща   Эльтура Сарптил  Человек   Представительница гильдии Звездного Плаща делает все возможное, чтобы сохранить мужественный вид перед лицом нависающего над ее любимым городом рока.

BEGIN ~NWELTUR3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @9
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @11
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @5 GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @12
  IF ~~ THEN DO ~  StartStore("NWELTUR3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4
  SAY @12
  IF ~~ THEN DO ~  StartStore("NWELTUR4",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY @13
  IF ~~ THEN DO ~  StartStore("NWELTUR3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5
  SAY @14
  IF ~~ THEN DO ~  StartStore("NWELTUR4",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.9
  SAY @16
  IF ~~ THEN EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY @17
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(Player1,MAGE_ALL)IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY @18
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 11 // from:
  SAY @19
  IF ~~ THEN EXIT
END

