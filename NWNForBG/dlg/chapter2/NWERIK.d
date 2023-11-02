// Южная дорога 2 - Эрик  Этот парень явно относится к трудным подросткам. Дом запереть  NWINGO  NWERIK  NWCONSTC NWMARY

BEGIN ~NWERIK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWKnowAboutErik","GLOBAL",1)Global("NWErikQuest","GLOBAL",0)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  Global("NWErikQuest","GLOBAL",0)~ THEN REPLY @11 DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~  Global("NWErikQuest","GLOBAL",0)~ THEN REPLY @11 DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @17
 IF ~  Global("NWErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY @18 GOTO 34
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @24
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @9 GOTO 7
  IF ~  Global("NWErikQuest","GLOBAL",0)~ THEN REPLY @11 DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY @34
 IF ~  Global("NWErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY @18 GOTO 34
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY @35
 IF ~  Global("NWErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY @18 GOTO 34
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 7.3
  SAY @36
 IF ~  Global("NWErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY @18 GOTO 34
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY @37
 IF ~  Global("NWErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY @18 GOTO 34
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 16
  SAY @38
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~ Global("NWErikQuest","GLOBAL",0)~ THEN REPLY @11 DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @39
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY @40
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY @41
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY @42
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 9.1
  SAY @43
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 9.2
  SAY @44
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 11
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 28
  IF ~~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 11
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY @55
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 11
END

IF ~~ THEN BEGIN 27 // from: 23.4
  SAY @56
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY @57
  IF ~~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 25.1
  SAY @58
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 11
END

// ----------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 30 // from:
  SAY @59
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

// ------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   Gender(LastTalkedToBy,MALE)Global("NWErikQuest","GLOBAL",0)~ THEN BEGIN 31 // from:
  SAY @60
  IF ~  Global("MyOuest","LOCALS",1)~ THEN REPLY @61 GOTO 22
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

// ------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   Gender(LastTalkedToBy,FEMALE)Global("NWErikQuest","GLOBAL",0)~ THEN BEGIN 32 // from:
  SAY @62
  IF ~  Global("MyOuest","LOCALS",1)~ THEN REPLY @61 GOTO 22
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

// ------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~   Global("NWErikQuest","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @63
  IF ~  PartyHasItem("NWMisc01")~ THEN REPLY @18 GOTO 34
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @64
  IF ~  Global("NWPriceXL","GLOBAL",1)~ THEN GOTO 35
  IF ~  Global("NWPriceM","GLOBAL",1)~ THEN GOTO 36
  IF ~  OR(2)Global("NWPriceL","GLOBAL",1)Dead("NWCONSTC")~ THEN GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 38
  IF ~~ THEN REPLY @67 GOTO 39
  IF ~~ THEN REPLY @68 GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @69
  IF ~~ THEN REPLY @68 GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY @70
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(850)AddexperienceParty(36000)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(850)GivePartyGold(100)AddexperienceParty(36000)~ EXIT
END

//----------------------

IF ~~ THEN BEGIN 36 // from: 35.2
  SAY @72
  IF ~~ THEN REPLY @66 GOTO 41
  IF ~~ THEN REPLY @67 GOTO 42
  IF ~~ THEN REPLY @68 GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY @69
  IF ~~ THEN REPLY @68 GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(650)AddexperienceParty(36000)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(650)GivePartyGold(100)AddexperienceParty(36000)~ EXIT
END

//----------------------

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @73
  IF ~~ THEN REPLY @66 GOTO 44
  IF ~~ THEN REPLY @67 GOTO 45
  IF ~~ THEN REPLY @68 GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY @69
  IF ~~ THEN REPLY @68 GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 39.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(400)AddexperienceParty(36000)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.2
  SAY @71
  IF ~~ THEN DO ~SetGlobal("NWErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(400)GivePartyGold(100)AddexperienceParty(36000)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("NWErikQuest","GLOBAL",1)~ THEN BEGIN 47 // from:
  SAY @74
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 3
  IF ~  !Global("NWErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 11
END

