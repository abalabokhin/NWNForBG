// Центр Невервинтера  Сияющие Оружие и Броня для Рыцаре  Маррок дварф-кузнец. Годы, проведенные возле кузнечного горна и наковальни, сделали этого гнома крепким и сильным. Он держит свой молот так, будто родился с ним.

BEGIN ~NWMARROK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)Class(LastTalkedToBy,FIGHTER_ALL)Class(LastTalkedToBy,RANGER_ALL)Class(LastTalkedToBy,PALADIN)Global("MarrokSay","MYAREA",0)Global("ToMarrok","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~  Global("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~  Global("PlantedItems","MYAREA",1)~ THEN GOTO 11
  IF ~  Global("PlantedItems","MYAREA",2)~ THEN GOTO 12
  IF ~  Global("PlantedItems","MYAREA",3)~ THEN GOTO 13
  IF ~  Global("PlantedItems","MYAREA",4)~ THEN GOTO 14
  IF ~  Global("PlantedItems","MYAREA",5)~ THEN GOTO 15
  IF ~  Global("PlantedItems","MYAREA",6)~ THEN GOTO 16
  IF ~  Global("PlantedItems","MYAREA",7)~ THEN GOTO 17
  IF ~  Global("PlantedItems","MYAREA",8)~ THEN GOTO 18
  IF ~  Global("PlantedItems","MYAREA",9)~ THEN GOTO 19
  IF ~  Global("PlantedItems","MYAREA",10)~ THEN GOTO 20
  IF ~  Global("PlantedItems","MYAREA",11)~ THEN GOTO 21
  IF ~  Global("PlantedItems","MYAREA",12)~ THEN GOTO 22
  IF ~  Global("PlantedItems","MYAREA",13)~ THEN GOTO 23
  IF ~  Global("PlantedItems","MYAREA",14)~ THEN GOTO 24
  IF ~  Global("PlantedItems","MYAREA",15)~ THEN GOTO 25
  IF ~  Global("PlantedItems","MYAREA",16)~ THEN GOTO 26
  IF ~  Global("PlantedItems","MYAREA",17)~ THEN GOTO 27
  IF ~  Global("PlantedItems","MYAREA",18)~ THEN GOTO 28
  IF ~  Global("PlantedItems","MYAREA",19)~ THEN GOTO 29
  IF ~  Global("PlantedItems","MYAREA",20)~ THEN GOTO 30
  IF ~  Global("PlantedItems","MYAREA",21)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @10
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY @11 GOTO 7
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @14
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~  Global("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("NWMARRBK",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @17
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY @11 GOTO 7
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @18
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY @11 GOTO 7
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY @19
  IF ~  PartyGoldGT(6999)~ THEN REPLY @20 DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY @23
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY @25
  IF ~  PartyGoldGT(4999)~ THEN REPLY @26 DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 14 // from: 2.4
  SAY @27
  IF ~  PartyGoldGT(5499)~ THEN REPLY @28 DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 15 // from: 2.5
  SAY @29
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 16 // from: 2.6
  SAY @30
  IF ~  PartyGoldGT(7999)~ THEN REPLY @31 DO ~TakePartyGold(8000)DestroyGold(8000)~ GOTO 32
  IF ~  PartyGoldLT(8000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 17 // from: 2.7
  SAY @32
  IF ~  PartyGoldGT(3999)~ THEN REPLY @33 DO ~TakePartyGold(4000)DestroyGold(4000)~ GOTO 32
  IF ~  PartyGoldLT(4000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 18 // from: 2.8
  SAY @34
  IF ~  PartyGoldGT(4999)~ THEN REPLY @26 DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 2.9
  SAY @35
  IF ~  PartyGoldGT(6999)~ THEN REPLY @20 DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 20 // from: 2.10
  SAY @36
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 21 // from: 2.11
  SAY @37
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 22 // from: 2.12
  SAY @38
  IF ~  PartyGoldGT(6499)~ THEN REPLY @39 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 23 // from: 2.13
  SAY @40
  IF ~  PartyGoldGT(6499)~ THEN REPLY @39 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 2.14
  SAY @41
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 25 // from: 2.15
  SAY @42
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 26 // from: 2.16
  SAY @43
  IF ~  PartyGoldGT(6499)~ THEN REPLY @39 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 27 // from: 2.17
  SAY @44
  IF ~  PartyGoldGT(6499)~ THEN REPLY @39 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 2.18
  SAY @45
  IF ~  PartyGoldGT(5499)~ THEN REPLY @28 DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 2.19
  SAY @46
  IF ~  PartyGoldGT(5499)~ THEN REPLY @28 DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 2.20
  SAY @47
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 2.21
  SAY @48
  IF ~  PartyGoldGT(5999)~ THEN REPLY @24 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @21 GOTO 33
  IF ~~ THEN REPLY @22 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 11.1
  SAY @49
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("NWCUTMAR")~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 11.2
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 11.3
  SAY @51
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MarrokSay","MYAREA",1)~ THEN BEGIN 35 // from:
  SAY @52
  IF ~~ THEN DO ~SetGlobal("MarrokSay","MYAREA",0)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)Global("MarrokSay","MYAREA",0)
Global("ToMarrok","GLOBAL",1)~ THEN BEGIN 36 // from:
  SAY @53
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~  Global("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MarrokSay","MYAREA",0)Global("ToMarrok","GLOBAL",0)~ THEN BEGIN 37 // from:
  SAY @54
  IF ~~ THEN EXIT
END

