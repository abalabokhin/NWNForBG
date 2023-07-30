// Лускан Доки Высший капитан Курт Этот грубый воин держится уверенно, как человек, одержавший в своей жизни много побед и потерпевший очень мало поражений.

// Global("KnowKurt","GLOBAL",2) - За 1500    Global("KnowKurt","GLOBAL",1) - без торга

BEGIN ~KURT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @13 GOTO 11
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @13 GOTO 12
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @14 GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 0.3
  SAY @15
IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @16
  IF ~  PartyHasItem("Nwmisc63")~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @19
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @20
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @21
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Elynwyd","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 1500
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 0.2
  SAY @28
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @30 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 28
  IF ~~ THEN REPLY @34 GOTO 29
  IF ~~ THEN REPLY @35 GOTO 30
  IF ~~ THEN REPLY @36 GOTO 31
END

IF ~~ THEN BEGIN 12 // from: 0.3
  SAY @37
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.4
  SAY @38
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",1)~ THEN REPLY @39 DO ~SetGlobal("Elynwyd","GLOBAL",2)~ GOTO 32
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",0)~ THEN REPLY @40 DO ~SetGlobal("Elynwyd","GLOBAL",2)~ GOTO 33
  IF ~~ THEN REPLY @41 GOTO 34
  IF ~~ THEN REPLY @42 GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 0.4
  SAY @43
  IF ~  Global("KurtOuest","GLOBAL",1)~ THEN GOTO 36
  IF ~  Global("KurtOuest","GLOBAL",0)~ THEN GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 6.1
  SAY @44
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 6.1
  SAY @45
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~  LevelGT(Player1,16)~ THEN REPLY @10 GOTO 9
  IF ~  LevelLT(Player1,17)~ THEN REPLY @10 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @46
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 8
  IF ~  GlobalGT("KnowKurt","GLOBAL",0)~ THEN REPLY @9 GOTO 3
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 18 // 1500
  SAY @21
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 19 // 1500
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Elynwyd","GLOBAL",1)~ GOTO 38
  IF ~~ THEN REPLY @24 GOTO 39
END

IF ~~ THEN BEGIN 20 // from: 0.4
  SAY @16
  IF ~  PartyHasItem("Nwmisc63")~ THEN REPLY @17 GOTO 40
  IF ~~ THEN REPLY @18 GOTO 41
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @28
  IF ~~ THEN REPLY @26 GOTO 42
  IF ~~ THEN REPLY @29 GOTO 43
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 44
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 22 // 1500
  SAY @47
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 0.2
  SAY @21
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 25
  IF ~~ THEN REPLY @30 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 47
  IF ~~ THEN REPLY @50 GOTO 48
  IF ~~ THEN REPLY @51 GOTO 49
  IF ~~ THEN REPLY @52 GOTO 50
  IF ~~ THEN REPLY @53 GOTO 51
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Elynwyd","GLOBAL",1)~ GOTO 52
  IF ~~ THEN REPLY @54 GOTO 53
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY @55
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @56
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",1)SetGlobal("KurtQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @101329 EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY @58
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY @59
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 0.2
  SAY @60
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 19
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @11 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 31 // from: 0.3
  SAY @61
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 54
  IF ~~ THEN REPLY @64 GOTO 55
  IF ~~ THEN REPLY @65 GOTO 56
END

IF ~~ THEN BEGIN 33 // from: 0.4
  SAY @66
  IF ~~ THEN REPLY @63 GOTO 54
  IF ~~ THEN REPLY @64 GOTO 55
  IF ~~ THEN REPLY @65 GOTO 56
END

IF ~~ THEN BEGIN 34 // from: 0.4
  SAY @67
  IF ~~ THEN DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 0.4
  SAY @68
  IF ~~ THEN DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 0.4
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 0.4
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @72 GOTO 6
END

IF ~~ THEN BEGIN 38 // 1500
  SAY @44
  IF ~~ THEN REPLY @26 GOTO 42
  IF ~  Dead("Baram")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @73 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 39 // 1500
  SAY @74
  IF ~~ THEN REPLY @26 GOTO 42
  IF ~  Dead("Baram")~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @73 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 40 // 1500
  SAY @38
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",1)~ THEN REPLY @75 DO ~SetGlobal("Elynwyd","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")SetGlobal("KurtQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ GOTO 57
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",0)~ THEN REPLY @40 DO ~SetGlobal("Elynwyd","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")SetGlobal("KurtQuest","GLOBAL",2)AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ GOTO 58
  IF ~~ THEN REPLY @41 DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ GOTO 59
  IF ~~ THEN REPLY @42 DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1500)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ GOTO 60
END

IF ~~ THEN BEGIN 41 // 1500
  SAY @43
  IF ~  Global("KurtOuest","GLOBAL",1)~ THEN GOTO 61
  IF ~  Global("KurtOuest","GLOBAL",0)~ THEN GOTO 62
END

IF ~~ THEN BEGIN 42 // from: 1500
  SAY @21
  IF ~~ THEN REPLY @29 GOTO 43
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 44
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 43 // 1500
  SAY @76
  IF ~~ THEN REPLY @49 GOTO 63
  IF ~~ THEN REPLY @50 GOTO 64
  IF ~~ THEN REPLY @51 GOTO 65
  IF ~~ THEN REPLY @52 GOTO 66
  IF ~~ THEN REPLY @53 GOTO 67
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 44 // 1500
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Elynwyd","GLOBAL",1)~ GOTO 68
  IF ~~ THEN REPLY @24 GOTO 69
END

IF ~~ THEN BEGIN 45 // 1500
  SAY @77
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 46 // 1500
  SAY @78
  IF ~~ THEN DO ~SetGlobal("KnowKurt","GLOBAL",2)SetGlobal("KurtQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @101329 EXIT
END

IF ~~ THEN BEGIN 47 // from: 0.2
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 70
  IF ~~ THEN REPLY @50 GOTO 48
  IF ~~ THEN REPLY @51 GOTO 49
  IF ~~ THEN REPLY @52 GOTO 50
  IF ~~ THEN REPLY @53 GOTO 51
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 48 // from: 0.2
  SAY @81
  IF ~~ THEN REPLY @49 GOTO 47
  IF ~~ THEN REPLY @51 GOTO 49
  IF ~~ THEN REPLY @52 GOTO 50
  IF ~~ THEN REPLY @53 GOTO 51
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 49 // from: 0.2
  SAY @82
  IF ~~ THEN REPLY @49 GOTO 47
  IF ~~ THEN REPLY @50 GOTO 48
  IF ~~ THEN REPLY @52 GOTO 50
  IF ~~ THEN REPLY @53 GOTO 51
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 50 // from: 0.2
  SAY @83
  IF ~~ THEN REPLY @49 GOTO 47
  IF ~~ THEN REPLY @50 GOTO 48
  IF ~~ THEN REPLY @51 GOTO 49
  IF ~~ THEN REPLY @53 GOTO 51
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 51 // from: 0.2
  SAY @84
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~  Global("ElynwydQuest","GLOBAL",1)~ THEN REPLY @85 DO ~SetGlobal("Elynwyd","GLOBAL",1)~ GOTO 52
  IF ~~ THEN REPLY @30 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 52 // from: 0.2
  SAY @44
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @30 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 53 // from: 0.2
  SAY @86
  IF ~~ THEN REPLY @26 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @30 GOTO 26
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 54 // from: 0.4
  SAY @87
  IF ~~ THEN DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 0.4
  SAY @88
  IF ~~ THEN DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 0.4
  SAY @88
  IF ~~ THEN DO ~SetGlobal("KurtQuest","GLOBAL",2)TakePartyItem("Nwmisc63")DestroyItem("Nwmisc63")AddexperienceParty(80000)GivePartyGold(1000)GiveItem("Leatnw03",LastTalkedToBy)GiveItem("Wand06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 57 // 1500
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 71
  IF ~~ THEN REPLY @64 GOTO 72
  IF ~~ THEN REPLY @65 GOTO 73
END

IF ~~ THEN BEGIN 58 // 1500
  SAY @66
  IF ~~ THEN REPLY @63 GOTO 71
  IF ~~ THEN REPLY @64 GOTO 72
  IF ~~ THEN REPLY @65 GOTO 73
END

IF ~~ THEN BEGIN 59 // 1500
  SAY @89
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // 1500
  SAY @68
  IF ~~ THEN REPLY @63 GOTO 71
  IF ~~ THEN REPLY @64 GOTO 72
  IF ~~ THEN REPLY @65 GOTO 73
END

IF ~~ THEN BEGIN 61 // from: 0.1
  SAY @69
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // 1500
  SAY @70
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",0)~ THEN REPLY @8 GOTO 19
  IF ~~ THEN REPLY @73 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
END

IF ~~ THEN BEGIN 63 // 1500
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 74
  IF ~~ THEN REPLY @50 GOTO 64
  IF ~~ THEN REPLY @51 GOTO 65
  IF ~~ THEN REPLY @52 GOTO 66
  IF ~~ THEN REPLY @53 GOTO 67
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 64 // 1500
  SAY @90
  IF ~~ THEN REPLY @51 GOTO 65
  IF ~~ THEN REPLY @52 GOTO 66
  IF ~~ THEN REPLY @53 GOTO 67
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 65 // 1500
  SAY @82
  IF ~~ THEN REPLY @49 GOTO 63
  IF ~~ THEN REPLY @50 GOTO 64
  IF ~~ THEN REPLY @52 GOTO 66
  IF ~~ THEN REPLY @53 GOTO 67
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 66 // 1500
  SAY @83
  IF ~~ THEN REPLY @49 GOTO 63
  IF ~~ THEN REPLY @50 GOTO 64
  IF ~~ THEN REPLY @51 GOTO 65
  IF ~~ THEN REPLY @53 GOTO 67
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 67 // 1500
  SAY @84
  IF ~~ THEN REPLY @26 GOTO 42
  IF ~~ THEN REPLY @29 GOTO 43
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",0)~ THEN REPLY @8 GOTO 44
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 68 // 1500
  SAY @91
  IF ~~ THEN REPLY @26 GOTO 42
  IF ~~ THEN REPLY @29 GOTO 43
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 69 // 1500
  SAY @92
  IF ~~ THEN REPLY @26 GOTO 42
  IF ~~ THEN REPLY @29 GOTO 43
  IF ~~ THEN REPLY @30 GOTO 45
  IF ~~ THEN REPLY @31 GOTO 46
END

IF ~~ THEN BEGIN 70 // from: 0.2
  SAY @93
  IF ~~ THEN REPLY @50 GOTO 48
  IF ~~ THEN REPLY @51 GOTO 49
  IF ~~ THEN REPLY @52 GOTO 50
  IF ~~ THEN REPLY @53 GOTO 51
  IF ~~ THEN REPLY @31 GOTO 27
END

IF ~~ THEN BEGIN 71 // 1500
  SAY @87
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // 1500
  SAY @88
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // 1500
  SAY @68
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // 1500
  SAY @93
  IF ~~ THEN REPLY @50 GOTO 64
  IF ~~ THEN REPLY @51 GOTO 65
  IF ~~ THEN REPLY @52 GOTO 66
  IF ~~ THEN REPLY @53 GOTO 67
  IF ~~ THEN REPLY @31 GOTO 46
END

// -----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("KurtQuest","GLOBAL",0)~ THEN BEGIN 75 // from:
  SAY @94
  IF ~~ THEN REPLY @71 GOTO 2
  IF ~  Dead("Baram")GlobalLT("","GLOBAL",2)~ THEN REPLY @3 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @3 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @95 GOTO 6
END

// -----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("KurtQuest","GLOBAL",1)~ THEN BEGIN 76 // from:
  SAY @96
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @97 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @97 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 77
  IF ~  Global("ElynwydQuest","GLOBAL",1)Global("Elynwyd","GLOBAL",0)~ THEN REPLY @8 GOTO 78
  IF ~~ THEN REPLY @30 GOTO 79
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 77 //
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 81
  IF ~~ THEN REPLY @50 GOTO 82
  IF ~~ THEN REPLY @51 GOTO 83
  IF ~~ THEN REPLY @52 GOTO 84
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 78 //
  SAY @22
  IF ~~ THEN REPLY @23 DO ~SetGlobal("Elynwyd","GLOBAL",1)~ GOTO 85
  IF ~~ THEN REPLY @24 GOTO 86
END

IF ~~ THEN BEGIN 79 //
  SAY @77
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 //
  SAY @98
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 //
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 87
  IF ~~ THEN REPLY @50 GOTO 82
  IF ~~ THEN REPLY @51 GOTO 83
  IF ~~ THEN REPLY @52 GOTO 84
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 82 //
  SAY @90
  IF ~~ THEN REPLY @49 GOTO 81
  IF ~~ THEN REPLY @51 GOTO 83
  IF ~~ THEN REPLY @52 GOTO 84
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 83 //
  SAY @82
  IF ~~ THEN REPLY @49 GOTO 81
  IF ~~ THEN REPLY @50 GOTO 82
  IF ~~ THEN REPLY @52 GOTO 84
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 84 //
  SAY @83
  IF ~~ THEN REPLY @49 GOTO 81
  IF ~~ THEN REPLY @50 GOTO 82
  IF ~~ THEN REPLY @51 GOTO 83
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 85 //
  SAY @91
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @99 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @99 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 77
  IF ~~ THEN REPLY @30 GOTO 79
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 86 //
  SAY @92
  IF ~  Dead("Baram")GlobalLT("KnowKurt","GLOBAL",2)~ THEN REPLY @99 GOTO 4
  IF ~  Dead("Baram")GlobalGT("KnowKurt","GLOBAL",1)~ THEN REPLY @99 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 77
  IF ~~ THEN REPLY @30 GOTO 79
  IF ~~ THEN REPLY @31 GOTO 80
END

IF ~~ THEN BEGIN 87 //
  SAY @93
  IF ~~ THEN REPLY @50 GOTO 82
  IF ~~ THEN REPLY @51 GOTO 83
  IF ~~ THEN REPLY @52 GOTO 84
  IF ~~ THEN REPLY @31 GOTO 80
END

// -----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KurtQuest","GLOBAL",1)~ THEN BEGIN 88 // from:
  SAY @100
  IF ~~ THEN EXIT
END

