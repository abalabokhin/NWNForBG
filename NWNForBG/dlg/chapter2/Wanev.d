// // Южная дорога, башня Вэйнива, второй этаж - Вэйнив, эльф маг Этот эльф распространяет вокруг себя ауру уверенности того, кто никогда не знал поражений.
// Положить в инвентарь 980 золота, VScroll - Ключ Вэйнива

BEGIN ~WANEV~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",1)Enemy()~ EXIT
END

//IF
//	HPPercentLT(Myself,40)
//	GlobalLT("Attack","LOCALS",2)
//	See(NearestEnemyOf(Myself))
//THEN
//	RESPONSE #100
//		ClearAllActions()
//		SetGlobal("Attack","LOCALS",2)
//		ClearActions(Player1)
//		ClearActions(Player2)
//		ClearActions(Player3)
//		ClearActions(Player4)
//		ClearActions(Player5)
//		ClearActions(Player6)
//		ChangeEnemyAlly(Myself,NEUTRAL)
//		StartDialogueNoSet(LastSeenBy(Myself))
//END

//IF
//	Global("WanevQuest","GLOBAL",5)
//THEN
//	RESPONSE #100
//	        SetGlobal("WanevQuest","GLOBAL",6)
//		ClearAllActions()
//		StartCutSceneMode()
//		StartCutScene("Телепорт наружу")
//END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @8
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)Rest()SetGlobal("Attack","LOCALS",3)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @9
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("WanevGem","GLOBAL",0)~ THEN REPLY @10 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 51
  IF ~  GlobalLT("AelaithQuest","GLOBAL",2)Global("KnowAboutStairs","MYAREA",1)~ THEN REPLY @13 GOTO 52
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @15
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("WanevGem","GLOBAL",0)~ THEN REPLY @10 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 51
  IF ~  GlobalLT("AelaithQuest","GLOBAL",2)Global("KnowAboutStairs","MYAREA",1)~ THEN REPLY @13 GOTO 52
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @17 DO ~GivePartyGold(980)~ GOTO 9
  IF ~~ THEN REPLY @18 DO ~GivePartyGold(980)~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @19
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)GiveItemCreate("WANEVSTH",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 5.2
  SAY @20
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @22
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 11.1
  SAY @23
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("WanevGem","GLOBAL",0)~ THEN REPLY @10 GOTO 12
  IF ~  GlobalLT("AelaithQuest","GLOBAL",2)Global("KnowAboutStairs","MYAREA",1)~ THEN REPLY @13 GOTO 52
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 51
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @12 GOTO 51
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @29
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @30
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1
  SAY @31
  IF ~~ THEN DO ~SetGlobal("KnowAboutGem","LOCALS",1)~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @34 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @34 GOTO 51
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @34 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @34 GOTO 51
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 20
  IF ~~ THEN REPLY @39 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @40
  IF ~  GlobalLT("Attack","LOCALS",3)~ THEN REPLY @41 GOTO 22
  IF ~  GlobalGT("Attack","LOCALS",2)~ THEN REPLY @41 GOTO 25
  IF ~~ THEN REPLY @42 GOTO 23
  IF ~  GlobalLT("Attack","LOCALS",3)!PartyHasItem("WANEVSTH")~ THEN REPLY @43 GOTO 24
  IF ~  GlobalLT("Attack","LOCALS",3)PartyHasItem("WANEVSTH")~ THEN REPLY @43 GOTO 50
  IF ~  GlobalGT("Attack","LOCALS",2)~ THEN REPLY @43 GOTO 26
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @44
  IF ~~ THEN REPLY @38 GOTO 20
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @45 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @45 GOTO 51
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @46
  IF ~  PartyHasItem("WANEVSTH")~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest","GLOBAL",1)GiveItem("VScroll",LastTalkedToBy)~ UNSOLVED_JOURNAL @100242 EXIT
  IF ~  !PartyHasItem("WANEVSTH")~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 22.2
  SAY @48
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest","GLOBAL",1)GiveItem("VScroll",LastTalkedToBy)GiveItemCreate("WANEVSTH",LastTalkedToBy,1,0,0)~ UNSOLVED_JOURNAL @100242 EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY @49
  IF ~  GlobalLT("Attack","LOCALS",3)~ THEN REPLY @41 GOTO 22
  IF ~  GlobalGT("Attack","LOCALS",2)~ THEN REPLY @41 GOTO 25
  IF ~  GlobalLT("Attack","LOCALS",3)!PartyHasItem("WANEVSTH")~ THEN REPLY @43 GOTO 24
  IF ~  GlobalLT("Attack","LOCALS",3)PartyHasItem("WANEVSTH")~ THEN REPLY @43 GOTO 50
  IF ~  GlobalGT("Attack","LOCALS",2)~ THEN REPLY @43 GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY @50
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest","GLOBAL",2)GiveItem("VScroll",LastTalkedToBy)GiveItemCreate("WANEVSTH",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.4
  SAY @51
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest","GLOBAL",2)GiveItem("VScroll",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.2
  SAY @46
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("WanevQuest","GLOBAL",1)GiveItem("VScroll",LastTalkedToBy)~ UNSOLVED_JOURNAL @100242 EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.5
  SAY @51
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest","GLOBAL",2)GiveItem("VScroll",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 14.1 15.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 53
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @34 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @34 GOTO 51
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 53 // from: 14.1 15.1
  SAY @54
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @55 DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest2","GLOBAL",1)GiveItem("VScroll",LastTalkedToBy)~ UNSOLVED_JOURNAL @100243 EXIT
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @55 GOTO 54
  IF ~  !PartyHasItem("WANEVSTH")~ THEN REPLY @45 GOTO 8
  IF ~  PartyHasItem("WANEVSTH")~ THEN REPLY @45 GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 14.1 15.1
  SAY @48
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("Attack","LOCALS",3)
SetGlobal("WanevQuest2","GLOBAL",1)GiveItem("VScroll",LastTalkedToBy)GiveItemCreate("WANEVSTH",LastTalkedToBy,1,0,0)~ UNSOLVED_JOURNAL @100243 EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("WanevQuest","GLOBAL",0)Global("WanevQuest2","GLOBAL",0)Global("Attack","LOCALS",3)~ THEN BEGIN 27 // from:
  SAY @57
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)Global("WanevGem","GLOBAL",0)Global("KnowAboutGem","LOCALS",0)~ THEN REPLY @10 GOTO 12
  IF ~  Global("KnowAboutGem","LOCALS",1)~ THEN REPLY @58 GOTO 28
  IF ~  GlobalLT("AelaithQuest","GLOBAL",2)Global("KnowAboutStairs","MYAREA",1)~ THEN REPLY @13 GOTO 52
  IF ~~ THEN REPLY @59 GOTO 4
  IF ~~ THEN REPLY @60 GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY @61
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 29// from: 27.4
  SAY @62
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("WanevQuest","GLOBAL",2)Global("WanevQuest2","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY @63
  IF ~~ THEN REPLY @41 GOTO 31
  IF ~~ THEN REPLY @42 GOTO 32
  IF ~~ THEN REPLY @43 GOTO 33
  IF ~~ THEN REPLY @60 GOTO 29
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @46
  IF ~~ THEN DO ~ClearAllActions()SetGlobal("WanevQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @100242 EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.2
  SAY @49
  IF ~~ THEN REPLY @41 GOTO 31
  IF ~~ THEN REPLY @43 GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.3
  SAY @51
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("WanevQuest","GLOBAL",1)Global("WanevQuest","GLOBAL",3)Global("WanevQuest2","GLOBAL",0)~ THEN BEGIN 34// from:
  SAY @64
  IF ~  !Global("WanevQuest","GLOBAL",3)~ THEN REPLY @65 GOTO 35
  IF ~~ THEN REPLY @66 GOTO 36
  IF ~  Global("WanevQuest","GLOBAL",3)~ THEN REPLY @67 GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @68
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY @69
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.3
  SAY @70
  IF ~  Race(LastTalkedToBy,ELF)~ THEN REPLY @71 GOTO 38
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @72 GOTO 39
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @72 GOTO 40
  IF ~  Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @73 GOTO 41
  IF ~~ THEN REPLY @74 GOTO 42
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @75
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY @76
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 37.3
  SAY @77
  IF ~  Race(LastTalkedToBy,ELF)~ THEN REPLY @71 GOTO 38
  IF ~  Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @73 GOTO 41
  IF ~~ THEN REPLY @74 GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 37.4
  SAY @78
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 37.5
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 44
  IF ~~ THEN REPLY @81 GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 38 39 41
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 46
  IF ~~ THEN REPLY @81 GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",5)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
AddexperienceParty(92000)
EraseJournalEntry(@100242)~ SOLVED_JOURNAL @100324 EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",4)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
AddexperienceParty(92000)
EraseJournalEntry(@100242)~ SOLVED_JOURNAL @100324 EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",5)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
GiveGoldForce(600)
EraseJournalEntry(@100242)~ SOLVED_JOURNAL @100324 EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",4)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
GiveGoldForce(600)
AddexperienceParty(80000)
EraseJournalEntry(@100242)~ SOLVED_JOURNAL @100324 EXIT
END

// ---------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("WanevQuest","GLOBAL",3)~ THEN BEGIN 48// from:
  SAY @57
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("WanevQuest2","GLOBAL",0)GlobalLT("WanevQuest2","GLOBAL",3)~ THEN BEGIN 55// from:
  SAY @64
  IF ~  !Global("WanevQuest2","GLOBAL",2)~ THEN REPLY @65 GOTO 35
  IF ~~ THEN REPLY @66 GOTO 36
  IF ~  Global("WanevQuest2","GLOBAL",2)~ THEN REPLY @84 GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 34.3
  SAY @70
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @72 GOTO 57
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @72 GOTO 58
  IF ~~ THEN REPLY @74 GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 37.2
  SAY @85
  IF ~~ THEN REPLY @80 GOTO 60
  IF ~~ THEN REPLY @81 GOTO 61
END

IF ~~ THEN BEGIN 58 // from: 37.3
  SAY @86
  IF ~~ THEN REPLY @80 GOTO 62
  IF ~~ THEN REPLY @81 GOTO 63
END

IF ~~ THEN BEGIN 59 // from: 37.5
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 62
  IF ~~ THEN REPLY @81 GOTO 63
END

IF ~~ THEN BEGIN 60 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",5)
SetGlobal("WanevQuest2","GLOBAL",0)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
GiveGoldForce(600)
AddexperienceParty(80000)
EraseJournalEntry(@100243)~ SOLVED_JOURNAL @100328 EXIT
END

IF ~~ THEN BEGIN 61 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",4)
SetGlobal("WanevQuest2","GLOBAL",0)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
GiveGoldForce(600)
AddexperienceParty(80000)
EraseJournalEntry(@100243)~ SOLVED_JOURNAL @100328 EXIT
END

IF ~~ THEN BEGIN 62 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",5)
SetGlobal("WanevQuest2","GLOBAL",0)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
AddexperienceParty(92000)
EraseJournalEntry(@100243)~ SOLVED_JOURNAL @100328 EXIT
END

IF ~~ THEN BEGIN 63 // from: 42.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("WanevQuest","GLOBAL",4)
SetGlobal("WanevQuest2","GLOBAL",0)
GiveItemCreate("Wanprize",LastTalkedToBy,1,1,1)
GiveItemCreate("Wand10",LastTalkedToBy,8,0,0)
GiveItemCreate("Scrx17",LastTalkedToBy,1,1,0)
AddexperienceParty(92000)
EraseJournalEntry(@100243)~ SOLVED_JOURNAL @100328 EXIT
END
