// Маска лунного камня 3 этаж Тамора гном   Куртизанка   просит забрать брошь  Эта женщина бесстыдно на вас смотрит. Она подмигивает вам и делает непристойные жесты.

BEGIN ~NWTAMORA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 49
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY @9 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 18
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 49
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY @9 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 49
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY @9 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY @18 GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY @18 GOTO 50
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 49 // from: 1.1
  SAY @21
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY @18 GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY @18 GOTO 50
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @36
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("TamoraTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 5.4
  SAY @37
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("TamoraTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY @38
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY @39
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @45
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 7.4
  SAY @46
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY @18 GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY @18 GOTO 50
  IF ~  RandomNum(2,2)~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY @47
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 22
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 49
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY @51
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY @52
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY @53
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY @54
  IF ~  Dead("NWHOFF")~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 32
  IF ~~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY @61
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 23
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY @62
  IF ~  Dead("NWHOFF")~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY @63
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY @18 GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY @18 GOTO 50
  IF ~  RandomNum(2,2)~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY @64
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1
  SAY @65
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 22.2
  SAY @66
  IF ~  Dead("NWHOFF")~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 22.3
  SAY @67
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",1)GiveItem("Nwmisc19",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY @68
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",1)GiveItem("Nwmisc19",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY @69
  IF ~~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("HoffHasMisc19","GLOBAL",0)~ THEN BEGIN 33 // from:
  SAY @70
  IF ~  Global("TamoraTired","MYAREA",0)~ THEN REPLY @71 GOTO 1
  IF ~  GlobalGT("TamoraTired","MYAREA",0)~ THEN REPLY @71 GOTO 34
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY @72 GOTO 35
  IF ~  Global("TamoraQuest","GLOBAL",1)~ THEN REPLY @73 GOTO 36
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.3
  SAY @75
  IF ~  Dead("NWHOFF")~ THEN REPLY @55 GOTO 28
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 31
END

IF ~~ THEN BEGIN 36 // from: 33.4
  SAY @76
  IF ~  Dead("NWHOFF")PartyHasItem("Nwmisc19")~ THEN REPLY @77 GOTO 37
  IF ~  Dead("NWHOFF")!PartyHasItem("Nwmisc19")~ THEN REPLY @78 GOTO 38
  IF ~  Global("HoffScared","GLOBAL",1)!Dead("NWHOFF")PartyHasItem("Nwmisc19")~ THEN REPLY @79 GOTO 39
  IF ~  Global("HoffScared","GLOBAL",1)!Dead("NWHOFF")!PartyHasItem("Nwmisc19")~ THEN REPLY @80 GOTO 40
  IF ~~ THEN REPLY @81 GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @65
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(60000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY @65
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(50000)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY @82
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(40000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.4
  SAY @82
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1
  SAY @83
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 42 // from:
  SAY @84
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)GlobalGT("TamoraTired","MYAREA",0)!Global("TamoraQuest","GLOBAL",1)!Global("TamoraQuest","GLOBAL",9)~ THEN BEGIN 43 // from:
  SAY @85
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("TamoraQuest","GLOBAL",1)Global("HoffHasMisc19","GLOBAL",1)~ THEN BEGIN 44 // from:
  SAY @86
  IF ~  PartyHasItem("Nwmisc19")!Dead("NWHOFF")~ THEN REPLY @87 GOTO 45
  IF ~  PartyHasItem("Nwmisc19")Dead("NWHOFF")~ THEN REPLY @88 GOTO 46
  IF ~~ THEN REPLY @89 GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY @90
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",0)SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(30000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.2
  SAY @91
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",0)SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(50000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.3
  SAY @92
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",9)~ EXIT
END

// ----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("TamoraQuest","GLOBAL",9)~ THEN BEGIN 48 // from:
  SAY @86
  IF ~~ THEN EXIT
END

