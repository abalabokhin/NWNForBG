// Холодный лес  Могила Лайенн      Суккуб  68126     Прекрасно сложенные, с безупречной кожей, суккубы - самые привлекательные из демонов. Цель их жизни - вовлекать смертных мужчин в преступления страсти.      строка -    Смертный! Подойди сюда!

BEGIN ~NWSUCUB0~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @12
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @13
  IF ~OR(3)PartyHasItem("NWSUCIT1")PartyHasItem("NWSUCIT2")PartyHasItem("NWSUCIT3")~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @18
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @19
  IF ~  PartyHasItem("NWSUCIT1")GlobalLT("SucubusJob","GLOBAL",2)~ THEN REPLY @20 GOTO 11
  IF ~  PartyHasItem("NWSUCIT1")Global("SucubusJob","GLOBAL",2)~ THEN REPLY @20 GOTO 12
  IF ~  PartyHasItem("NWSUCIT1")Global("SucubusJob","GLOBAL",3)~ THEN REPLY @20 GOTO 13
  IF ~  PartyHasItem("NWSUCIT2")GlobalLT("SucubusJob","GLOBAL",2)~ THEN REPLY @21 GOTO 14
  IF ~  PartyHasItem("NWSUCIT2")Global("SucubusJob","GLOBAL",2)~ THEN REPLY @21 GOTO 15
  IF ~  PartyHasItem("NWSUCIT2")Global("SucubusJob","GLOBAL",3)~ THEN REPLY @21 GOTO 13
  IF ~  PartyHasItem("NWSUCIT3")GlobalLT("SucubusJob","GLOBAL",2)~ THEN REPLY @22 GOTO 16
  IF ~  PartyHasItem("NWSUCIT3")Global("SucubusJob","GLOBAL",2)~ THEN REPLY @22 GOTO 17
  IF ~  PartyHasItem("NWSUCIT3")Global("SucubusJob","GLOBAL",3)~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @23
  IF ~  Global("SucubusJob","GLOBAL",0)~ THEN DO ~SetGlobal("SucubusJob","GLOBAL",1)~ EXIT
  IF ~  GlobalGT("SucubusJob","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.5
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 8.1 Кольцо
  SAY @26
  IF ~  Global("StrengthIncreased","LOCALS",0)~ THEN REPLY @27 GOTO 19
  IF ~  Global("Ring","LOCALS",0)~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.2 Кольцо
  SAY @26
  IF ~  Global("StrengthIncreased","LOCALS",0)~ THEN REPLY @27 GOTO 22
  IF ~  Global("Ring","LOCALS",0)~ THEN REPLY @28 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 24
END

IF ~~ THEN BEGIN 13 // from: 8.3
  SAY @30
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")TakePartyItem("NWSUCIT2")TakePartyItem("NWSUCIT3")DestroyItem("NWSUCIT1")DestroyItem("NWSUCIT2")DestroyItem("NWSUCIT3")
SetGlobal("SucubusJob","GLOBAL",4)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 Ожерелье
  SAY @26
  IF ~  Global("StrengthIncreased","LOCALS",0)~ THEN REPLY @27 GOTO 25
  IF ~  Global("Ring","LOCALS",0)~ THEN REPLY @28 GOTO 26
  IF ~~ THEN REPLY @29 GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 8.5 Ожерелье
  SAY @26
  IF ~  Global("StrengthIncreased","LOCALS",0)~ THEN REPLY @27 GOTO 28
  IF ~  Global("Ring","LOCALS",0)~ THEN REPLY @28 GOTO 29
  IF ~~ THEN REPLY @29 GOTO 30
END

IF ~~ THEN BEGIN 16 // from: 8.6 Камень
  SAY @26
  IF ~  Global("StrengthIncreased","LOCALS",0)~ THEN REPLY @27 GOTO 31
  IF ~  Global("Ring","LOCALS",0)~ THEN REPLY @28 GOTO 32
  IF ~~ THEN REPLY @29 GOTO 33
END

IF ~~ THEN BEGIN 17 // from: 8.7 Камень
  SAY @26
  IF ~  Global("StrengthIncreased","LOCALS",0)~ THEN REPLY @27 GOTO 34
  IF ~  Global("Ring","LOCALS",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @29 GOTO 36
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY @31
  IF ~OR(3)PartyHasItem("NWSUCIT1")PartyHasItem("NWSUCIT2")PartyHasItem("NWSUCIT3")~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY @32
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")SetGlobal("SucubusJob","GLOBAL",2)SetGlobal("StrengthIncreased","LOCALS",1)GiveItemCreate("Book04",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")SetGlobal("SucubusJob","GLOBAL",2)SetGlobal("Ring","LOCALS",1)GiveItemCreate("NWSUCIT4",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")SetGlobal("SucubusJob","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 12.1
  SAY @32
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")SetGlobal("SucubusJob","GLOBAL",3)SetGlobal("StrengthIncreased","LOCALS",1)GiveItemCreate("Book04",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")SetGlobal("SucubusJob","GLOBAL",3)SetGlobal("Ring","LOCALS",1)GiveItemCreate("NWSUCIT4",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.3
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT1")SetGlobal("SucubusJob","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.1
  SAY @32
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT2")SetGlobal("SucubusJob","GLOBAL",2)SetGlobal("StrengthIncreased","LOCALS",1)GiveItemCreate("Book04",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT2")SetGlobal("SucubusJob","GLOBAL",2)SetGlobal("Ring","LOCALS",1)GiveItemCreate("NWSUCIT4",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.3
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT2")SetGlobal("SucubusJob","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @32
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT2")SetGlobal("SucubusJob","GLOBAL",3)SetGlobal("StrengthIncreased","LOCALS",1)GiveItemCreate("Book04",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT2")SetGlobal("SucubusJob","GLOBAL",3)SetGlobal("Ring","LOCALS",1)GiveItemCreate("NWSUCIT4",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 15.3
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT2")SetGlobal("SucubusJob","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.1
  SAY @32
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT3")SetGlobal("SucubusJob","GLOBAL",2)SetGlobal("StrengthIncreased","LOCALS",1)GiveItemCreate("Book04",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT3")SetGlobal("SucubusJob","GLOBAL",2)SetGlobal("Ring","LOCALS",1)GiveItemCreate("NWSUCIT4",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.3
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT3")SetGlobal("SucubusJob","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.1
  SAY @32
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT3")SetGlobal("SucubusJob","GLOBAL",3)SetGlobal("StrengthIncreased","LOCALS",1)GiveItemCreate("Book04",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT3")SetGlobal("SucubusJob","GLOBAL",3)SetGlobal("Ring","LOCALS",1)GiveItemCreate("NWSUCIT4",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.3
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWSUCIT3")SetGlobal("SucubusJob","GLOBAL",3)~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("SucubusJob","GLOBAL",0)~ THEN BEGIN 37 // from:
  SAY @35
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("SucubusJob","GLOBAL",0)~ THEN BEGIN 38 // from:
  SAY @36
  IF ~OR(3)PartyHasItem("NWSUCIT1")PartyHasItem("NWSUCIT2")PartyHasItem("NWSUCIT3")~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @37 GOTO 39
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 39 // from: 38.2
  SAY @38
  IF ~OR(3)PartyHasItem("NWSUCIT1")PartyHasItem("NWSUCIT2")PartyHasItem("NWSUCIT3")~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

