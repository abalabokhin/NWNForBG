// Колодец Беорунна: торговый пост Барун Сильверблэйд  дварф-кузнец. Даже для своего рода этот гномский кузнец довольно коренаст и мускулист - результат многолетнего махания молотом в кузнице.

BEGIN ~NWBARUN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BarunSay","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 10
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY @9 DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("NWBARUBK",LastTalkedToBy,0,0,0)~ GOTO 5
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @11
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
  SAY @12
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY @9 DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("NWBARUBK",LastTalkedToBy,0,0,0)~ GOTO 5
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @16
  IF ~  PartyHasItem("Plat04")PartyHasItem("NWRITHT2")~ THEN REPLY @17 GOTO 35
  IF ~  PartyHasItem("Chan02")PartyHasItem("NWHOLYWA")~ THEN REPLY @18 GOTO 35
  IF ~  PartyHasItem("Leat07")PartyHasItem("NWGARSKL")~ THEN REPLY @19 GOTO 35
  IF ~  PartyHasItem("AX1H02")PartyHasItem("NWADAMAT")~ THEN REPLY @20 GOTO 35
  IF ~  PartyHasItem("Halb02")PartyHasItem("NWADAMAT")~ THEN REPLY @21 GOTO 35
  IF ~   PartyHasItem("AX1H02")PartyHasItem("NWDRABLD")~ THEN REPLY @22 GOTO 35
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @24
  IF ~  PartyHasItem("Blun01")PartyHasItem("NWIROOOD")~ THEN REPLY @25 GOTO 35
  IF ~  PartyHasItem("Blun05")PartyHasItem("NWIROOOD")~ THEN REPLY @26 GOTO 35
  IF ~  PartyHasItem("HAMM02")PartyHasItem("NWRITHT2")~ THEN REPLY @27 GOTO 35
  IF ~  PartyHasItem("Blun03")PartyHasItem("NWIROOOD")~ THEN REPLY @28 GOTO 35
  IF ~  PartyHasItem("Blun05")PartyHasItem("NWHOLYWA")~ THEN REPLY @29 GOTO 35
  IF ~   PartyHasItem("Blun07")PartyHasItem("NWMAGDUT")~ THEN REPLY @30 GOTO 35
  IF ~  PartyHasItem("Hamm03")PartyHasItem("NWADAMAT")~ THEN REPLY @31 GOTO 35
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY @32
  IF ~  PartyHasItem("Sw2h02")PartyHasItem("NWADAMAT")~ THEN REPLY @33 GOTO 35
  IF ~  PartyHasItem("Sw1h44")PartyHasItem("NWADAMAT")~ THEN REPLY @34 GOTO 35
  IF ~  PartyHasItem("Sw1h05")PartyHasItem("NWRITHT2")~ THEN REPLY @35 GOTO 35
  IF ~  PartyHasItem("Sw1h02")PartyHasItem("NWRITHT2")~ THEN REPLY @36 GOTO 35
  IF ~  PartyHasItem("Sw1h022")PartyHasItem("NWADAMAT")~ THEN REPLY @37 GOTO 35
  IF ~   PartyHasItem("Sw1h008")PartyHasItem("NWMAGDUT")~ THEN REPLY @38 GOTO 35
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4
  SAY @39
  IF ~  PartyHasItem("Halb03")PartyHasItem("NWDRABLD")~ THEN REPLY @40 GOTO 35
  IF ~   PartyHasItem("SPER02")PartyHasItem("NWMAGDUT")~ THEN REPLY @41 GOTO 35
  IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY @42
  IF ~  PartyGoldGT(6999)~ THEN REPLY @43 DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY @46
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY @48
  IF ~  PartyGoldGT(4999)~ THEN REPLY @49 DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 14 // from: 2.4
  SAY @50
  IF ~  PartyGoldGT(5499)~ THEN REPLY @51 DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 15 // from: 2.5
  SAY @52
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 16 // from: 2.6
  SAY @53
  IF ~  PartyGoldGT(7999)~ THEN REPLY @54 DO ~TakePartyGold(8000)DestroyGold(8000)~ GOTO 32
  IF ~  PartyGoldLT(8000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 17 // from: 2.7
  SAY @55
  IF ~  PartyGoldGT(3999)~ THEN REPLY @56 DO ~TakePartyGold(4000)DestroyGold(4000)~ GOTO 32
  IF ~  PartyGoldLT(4000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 18 // from: 2.8
  SAY @57
  IF ~  PartyGoldGT(4999)~ THEN REPLY @49 DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 2.9
  SAY @58
  IF ~  PartyGoldGT(6999)~ THEN REPLY @43 DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 20 // from: 2.10
  SAY @59
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 21 // from: 2.11
  SAY @60
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 22 // from: 2.12
  SAY @61
  IF ~  PartyGoldGT(6499)~ THEN REPLY @62 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 23 // from: 2.13
  SAY @63
  IF ~  PartyGoldGT(6499)~ THEN REPLY @62 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 2.14
  SAY @64
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 25 // from: 2.15
  SAY @65
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 26 // from: 2.16
  SAY @66
  IF ~  PartyGoldGT(6499)~ THEN REPLY @62 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 27 // from: 2.17
  SAY @67
  IF ~  PartyGoldGT(6499)~ THEN REPLY @62 DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 2.18
  SAY @68
  IF ~  PartyGoldGT(5499)~ THEN REPLY @51 DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 2.19
  SAY @69
  IF ~  PartyGoldGT(5499)~ THEN REPLY @51 DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 2.20
  SAY @70
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 2.21
  SAY @71
  IF ~  PartyGoldGT(5999)~ THEN REPLY @47 DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY @44 GOTO 33
  IF ~~ THEN REPLY @45 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 11.1
  SAY @72
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("NWCUTBAN")~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 11.2
  SAY @73
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 11.3
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 7.1
  SAY @75
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BarunSay","MYAREA",1)~ THEN BEGIN 36 // from:
  SAY @76
  IF ~~ THEN DO ~SetGlobal("BarunSay","MYAREA",0)~ EXIT
END

