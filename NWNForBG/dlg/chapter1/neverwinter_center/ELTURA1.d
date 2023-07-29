// Центр Невервинтера Башня Плаща Эльтура    Эльтура Сарптил      Эта дама с глазами, как льдинки, смотрит в небо задумчивым взглядом.

BEGIN ~ELTURA1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)!Class(Player1,MAGE_ALL)!IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN DO ~  StartStore("ELTURA2",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)Global("CloakTower","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 3 // from:
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @11
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.4
  SAY @12
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 3.5
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",1)GiveItemCreate("Elturkey",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @90834 EXIT
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",0)GlobalLT("CloakTower","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY @16
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("CloakTower","GLOBAL",1)PartyHasItem("Nwmisc20")PartyHasItem("Nwmisc21")PartyHasItem("Nwmisc22")
PartyHasItem("Nwmisc23")~ THEN REPLY @17 GOTO 10
  IF ~  Global("CloakTower","GLOBAL",2)~ THEN REPLY @17 GOTO 11
  IF ~  Global("CloakTower","GLOBAL",1)OR(4)!PartyHasItem("Nwmisc20")!PartyHasItem("Nwmisc21")!PartyHasItem("Nwmisc22")
!PartyHasItem("Nwmisc23")~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @18
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY @19
 IF ~~ THEN REPLY @20 DO ~SetGlobal("CloakTower","GLOBAL",3)TakePartyItem("Nwmisc20")TakePartyItem("Nwmisc21")TakePartyItem("Nwmisc22")TakePartyItem("Nwmisc23")AddexperienceParty(80000)EraseJournalEntry(@90834)StartCutSceneMode()StartCutScene("EltTest")~ UNSOLVED_JOURNAL @90835 EXIT
  IF ~~ THEN REPLY @22 DO ~SetGlobal("CloakTower","GLOBAL",2)TakePartyItem("Nwmisc20")
TakePartyItem("Nwmisc21")TakePartyItem("Nwmisc22")TakePartyItem("Nwmisc23")AddexperienceParty(80000)EraseJournalEntry(@90834)~ UNSOLVED_JOURNAL @90835 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @23
  IF ~~ THEN REPLY @20 DO ~SetGlobal("CloakTower","GLOBAL",3)StartCutSceneMode()StartCutScene("EltTest")~ EXIT
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @24
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.4
  SAY @25
  IF ~  PartyGoldGT(499)~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 9.5
  SAY @28
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",4)GiveItemCreate("EltCloak",LastTalkedToBy,1,1,1)AddexperienceParty(40000)EraseJournalEntry(@90835)~ SOLVED_JOURNAL @90866 EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",3)TakePartyGold(500)StartCutSceneMode()StartCutScene("EltTest")~ EXIT
END

// ---------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)Global("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 17 // from:
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @34
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

// ---------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)Global("CloakTower","GLOBAL",3)IsGabber(Player1)!Dead("EltGolem")~ THEN BEGIN 20 // from:
  SAY @25
  IF ~  PartyGoldGT(499)~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
END

// ---------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)Global("CloakTower","GLOBAL",3)IsGabber(Player1)Dead("EltGolem")~ THEN BEGIN 21 // from:
  SAY @35
  IF ~~ THEN DO ~SetGlobal("CloakTower","GLOBAL",4)GiveItemCreate("EltCloak",LastTalkedToBy,1,1,1)AddexperienceParty(40000)EraseJournalEntry(@90835)~ SOLVED_JOURNAL @90866 EXIT
END

