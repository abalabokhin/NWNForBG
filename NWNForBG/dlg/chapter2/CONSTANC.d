// Южная дорога 2 - Констанс О'Дил  Эта молодая женщина озабоченно выполняет свою работу. Pete Ingo  ErikNW  Constanc Mary

BEGIN ~CONSTANC~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("ErikQuest","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 50
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @8
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 DO ~SetGlobal("Failure","LOCALS",1)~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 DO ~SetGlobal("Failure","LOCALS",1)~ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY @24
  IF ~  PartyGoldGT(999)~ THEN REPLY @25 DO ~TakePartyGold(250)SetGlobal("PriceXL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN REPLY @26 DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @26 GOTO 32
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @32 GOTO 24
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @33
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @34
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @38 GOTO 21
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY @39
  IF ~  RandomNum(2,1)~ THEN REPLY @40 GOTO 26
  IF ~  RandomNum(2,2)~ THEN REPLY @40 GOTO 27
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 9.3
  SAY @41
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY @42
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 10.2
  SAY @43
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY @44
  IF ~~ THEN DO ~SetGlobal("Failure","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @45
  IF ~  PartyGoldGT(249)~ THEN REPLY @46 DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 30
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 31
END

IF ~~ THEN BEGIN 22 // from: 11.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 35
  IF ~~ THEN REPLY @51 GOTO 36
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 11.2
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 37
  IF ~~ THEN REPLY @55 GOTO 37
  IF ~~ THEN REPLY @56 GOTO 39
END

IF ~~ THEN BEGIN 24 // from: 11.3
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 54
  IF ~~ THEN REPLY @59 GOTO 41
  IF ~~ THEN REPLY @60 GOTO 42
  IF ~~ THEN REPLY @61 GOTO 43
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 44
  IF ~  PartyGoldGT(999)~ THEN REPLY @25 DO ~TakePartyGold(250)SetGlobal("PriceXL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN REPLY @26 DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @26 GOTO 32
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY @64
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 16.2
  SAY @64
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 28 // from: 17.1
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 29
  IF ~  PartyGoldGT(249)~ THEN REPLY @46 DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 30
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 16.2
  SAY @67
  IF ~  PartyGoldGT(249)~ THEN REPLY @46 DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 30
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 28.2 29.1
  SAY @68
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 31 // from: 21.3 28.4 29.3
  SAY @69
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),45)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.3
  SAY @70
  IF ~  PartyGoldGT(399)~ THEN REPLY @71 DO ~TakePartyGold(250)SetGlobal("PriceM","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 33
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @68
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 34 // from: 22.1
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 48
  IF ~~ THEN REPLY @50 GOTO 35
  IF ~~ THEN REPLY @51 GOTO 36
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 35 // from: 22.2
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 49
  IF ~~ THEN REPLY @49 GOTO 34
  IF ~~ THEN REPLY @51 GOTO 36
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 36 // from: 22.3
  SAY @76
  IF ~~ THEN REPLY @49 GOTO 34
  IF ~~ THEN REPLY @50 GOTO 35
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 37 // from: 23.1
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 38
  IF ~~ THEN REPLY @56 GOTO 39
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @79
  IF ~~ THEN REPLY @56 GOTO 39
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 39 // from: 23.3
  SAY @80
  IF ~~ THEN REPLY @55 GOTO 37
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 40 // from: 24.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 54
  IF ~~ THEN REPLY @59 GOTO 41
  IF ~~ THEN REPLY @60 GOTO 42
  IF ~~ THEN REPLY @61 GOTO 43
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 54 // from: 24.1
  SAY @81
  IF ~~ THEN REPLY @59 GOTO 41
  IF ~~ THEN REPLY @60 GOTO 42
  IF ~~ THEN REPLY @61 GOTO 43
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 41 // from: 24.2
  SAY @82
  IF ~~ THEN REPLY @58 GOTO 54
  IF ~~ THEN REPLY @60 GOTO 42
  IF ~~ THEN REPLY @61 GOTO 43
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 42 // from: 24.3
  SAY @83
  IF ~~ THEN REPLY @58 GOTO 54
  IF ~~ THEN REPLY @59 GOTO 41
  IF ~~ THEN REPLY @61 GOTO 43
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 43 // from: 24.4
  SAY @84
  IF ~~ THEN REPLY @58 GOTO 54
  IF ~~ THEN REPLY @59 GOTO 41
  IF ~~ THEN REPLY @60 GOTO 42
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 44 // from: 15.1
  SAY @85
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY @86
  IF ~  PartyGoldGT(999)~ THEN REPLY @25 DO ~TakePartyGold(250)SetGlobal("PriceXL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN REPLY @26 DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @26 GOTO 32
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
END

IF ~~ THEN BEGIN 46 // from: 27.1
  SAY @87
  IF ~~ THEN REPLY @66 GOTO 47
  IF ~  PartyGoldGT(399)~ THEN REPLY @71 DO ~TakePartyGold(250)SetGlobal("PriceM","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 33
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @67
  IF ~~ THEN REPLY @88 GOTO 19
  IF ~  PartyGoldGT(399)~ THEN REPLY @71 DO ~TakePartyGold(250)SetGlobal("PriceM","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 33
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 21
END

IF ~~ THEN BEGIN 48 // from: 34.1
  SAY @89
  IF ~~ THEN REPLY @50 GOTO 35
  IF ~~ THEN REPLY @51 GOTO 36
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 49 // from: 35.1
  SAY @90
  IF ~~ THEN REPLY @49 GOTO 34
  IF ~~ THEN REPLY @51 GOTO 36
  IF ~~ THEN REPLY @52 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 50 // from: 1.1
  SAY @91
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @4 GOTO 6
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @5 GOTO 7
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

// --------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 51 // from:
  SAY @92
  IF ~~ THEN REPLY @2 GOTO 52
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 14
END

IF ~~ THEN BEGIN 52 // from: 1.1
  SAY @91
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 14
END

// ---------------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)GlobalLT("ErikQuest","GLOBAL",2)~ THEN BEGIN 53 // from:
  SAY @93
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @7 GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @7 GOTO 14
END

