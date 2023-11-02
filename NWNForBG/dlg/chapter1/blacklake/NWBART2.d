// Чернозерье Голая Доска Трактирщик Человек Это один из многочисленных в Невервинтере торговцев горячительными напитками. Он одевается просто, желая вызвать симпатию у своих клиентов.  GiveItemCreate("NWGRPERT",LastTalkedToBy,0,0,0)

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~NWBART2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  PartyHasItem("NWGRPERT")~ THEN REPLY @1 GOTO 1
  IF ~  Global("PartyHasKey","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("PartyHasKey","LOCALS",1)~ THEN REPLY @2 GOTO 2
  IF ~  !Global("PartyHasKey","LOCALS",1)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY @8
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @9
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN REPLY @10 GOTO 8
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN REPLY @10 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY @11 GOTO 10
  IF ~  PartyHasItem("NWGRPERT")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @12
  IF ~~ THEN DO ~TakePartyItem("NWGRPERT")DestroyItem("NWGRPERT")SetGlobal("PartyHasKey","LOCALS",1)GiveItemCreate("Nwkey05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~  PartyHasItem("NWGRPERT")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @17
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY @11 GOTO 10
  IF ~  PartyHasItem("NWGRPERT")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @18
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~  PartyHasItem("NWGRPERT")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @19
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @20
  IF ~  PartyHasItem("NWGRPERT")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

// -------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",4)~ THEN BEGIN 14 // from:
  SAY @21
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",499)GlobalLT("NWNwTavTaxes","GLOBAL",501)~ THEN REPLY @22 GOTO 15
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",999)GlobalLT("NWNwTavTaxes","GLOBAL",1501)~ THEN REPLY @22 GOTO 16
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",1499)GlobalLT("NWNwTavTaxes","GLOBAL",2001)~ THEN REPLY @22 GOTO 17
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",1999)GlobalLT("NWNwTavTaxes","GLOBAL",2501)~ THEN REPLY @22 GOTO 18
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",2499)GlobalLT("NWNwTavTaxes","GLOBAL",3001)~ THEN REPLY @22 GOTO 19
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",2999)GlobalLT("NWNwTavTaxes","GLOBAL",3501)~ THEN REPLY @22 GOTO 20
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",3499)GlobalLT("NWNwTavTaxes","GLOBAL",4001)~ THEN REPLY @22 GOTO 21
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",3999)GlobalLT("NWNwTavTaxes","GLOBAL",4501)~ THEN REPLY @22 GOTO 22
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",4499)GlobalLT("NWNwTavTaxes","GLOBAL",5001)~ THEN REPLY @22 GOTO 23
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",4999)GlobalLT("NWNwTavTaxes","GLOBAL",5501)~ THEN REPLY @22 GOTO 24
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",5499)GlobalLT("NWNwTavTaxes","GLOBAL",6001)~ THEN REPLY @22 GOTO 25
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",5999)GlobalLT("NWNwTavTaxes","GLOBAL",6501)~ THEN REPLY @22 GOTO 26
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",6999)GlobalLT("NWNwTavTaxes","GLOBAL",7501)~ THEN REPLY @22 GOTO 27
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",7999)GlobalLT("NWNwTavTaxes","GLOBAL",8501)~ THEN REPLY @22 GOTO 28
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",9999)GlobalLT("NWNwTavTaxes","GLOBAL",10501)~ THEN REPLY @22 GOTO 29
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",14999)GlobalLT("NWNwTavTaxes","GLOBAL",15501)~ THEN REPLY @22 GOTO 30
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",24999)GlobalLT("NWNwTavTaxes","GLOBAL",25501)~ THEN REPLY @22 GOTO 31
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",44999)~ THEN REPLY @22 GOTO 32
  IF ~  GlobalLT("NWNwTavTaxes","GLOBAL",499)~ THEN REPLY @22 GOTO 33
  IF ~  Global("Acquaintance","LOCALS",0)~ THEN REPLY @23 DO ~SetGlobal("Acquaintance","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY @7 GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY @25
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY @26
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(1500)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY @27
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(2000)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY @28
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(2500)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.6
  SAY @29
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.7
  SAY @30
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(3500)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.8
  SAY @31
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(4000)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.9
  SAY @32
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(4500)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.9
  SAY @33
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(5000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.10
  SAY @34
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(5500)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.11
  SAY @35
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(6000)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.12
  SAY @36
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(7000)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 14.13
  SAY @37
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(8000)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 14.14
  SAY @38
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(10000)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 14.15
  SAY @39
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(15000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.16
  SAY @40
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(25000)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 14.17
  SAY @41
  IF ~~ THEN DO ~SetGlobal("NWNwTavTaxes","GLOBAL",0)GiveGoldForce(50000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 14.18
  SAY @42
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @23 GOTO 34
  IF ~~ THEN REPLY @7 GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 14.19
  SAY @43
  IF ~~ THEN REPLY @3 DO ~StartStore("NWBART2",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",499)GlobalLT("NWNwTavTaxes","GLOBAL",501)~ THEN REPLY @22 GOTO 15
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",999)GlobalLT("NWNwTavTaxes","GLOBAL",1501)~ THEN REPLY @22 GOTO 16
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",1499)GlobalLT("NWNwTavTaxes","GLOBAL",2001)~ THEN REPLY @22 GOTO 17
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",1999)GlobalLT("NWNwTavTaxes","GLOBAL",2501)~ THEN REPLY @22 GOTO 18
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",2499)GlobalLT("NWNwTavTaxes","GLOBAL",3001)~ THEN REPLY @22 GOTO 19
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",2999)GlobalLT("NWNwTavTaxes","GLOBAL",3501)~ THEN REPLY @22 GOTO 20
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",3499)GlobalLT("NWNwTavTaxes","GLOBAL",4001)~ THEN REPLY @22 GOTO 21
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",3999)GlobalLT("NWNwTavTaxes","GLOBAL",4501)~ THEN REPLY @22 GOTO 22
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",4499)GlobalLT("NWNwTavTaxes","GLOBAL",5001)~ THEN REPLY @22 GOTO 23
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",4999)GlobalLT("NWNwTavTaxes","GLOBAL",5501)~ THEN REPLY @22 GOTO 24
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",5499)GlobalLT("NWNwTavTaxes","GLOBAL",6001)~ THEN REPLY @22 GOTO 25
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",5999)GlobalLT("NWNwTavTaxes","GLOBAL",6501)~ THEN REPLY @22 GOTO 26
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",6999)GlobalLT("NWNwTavTaxes","GLOBAL",7501)~ THEN REPLY @22 GOTO 27
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",7999)GlobalLT("NWNwTavTaxes","GLOBAL",8501)~ THEN REPLY @22 GOTO 28
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",9999)GlobalLT("NWNwTavTaxes","GLOBAL",10501)~ THEN REPLY @22 GOTO 29
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",14999)GlobalLT("NWNwTavTaxes","GLOBAL",15501)~ THEN REPLY @22 GOTO 30
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",24999)GlobalLT("NWNwTavTaxes","GLOBAL",25501)~ THEN REPLY @22 GOTO 31
  IF ~  GlobalGT("NWNwTavTaxes","GLOBAL",44999)~ THEN REPLY @22 GOTO 32
  IF ~  GlobalLT("NWNwTavTaxes","GLOBAL",499)~ THEN REPLY @22 GOTO 33
  IF ~~ THEN REPLY @7 GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 14.20
  SAY @44
  IF ~~ THEN EXIT
END

















