// Чарвуд, Замок Карлат - лич. Движимые честолюбием, некоторые могущественные маги пытаются обмануть саму смерть. Те, кому это удается, становятся личами. Тех, кому не так повезло, утаскивает Бездна.

BEGIN ~NWKARLAT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKnowKarlat","GLOBAL",0)GlobalLT("NWJaregQuest","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @14
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("NWKnowQuint","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~  PartyHasItem("NWKARLAJ")~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.2
  SAY @20
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("NWKnowQuint","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~  PartyHasItem("NWKARLAJ")~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.2
  SAY @27
  IF ~~ THEN DO ~SetGlobal("NWKnowKarlat","GLOBAL",1)GiveItemCreate("NWKARLA0",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3 9.3
  SAY @28
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  PartyHasItem("NWKARLAJ")~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 13 // from:  8.4 9.4
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @33 GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @34
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY @35
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @36
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 15
  SAY @37
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY @38
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 10.4
  SAY @39
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 10.5
  SAY @40
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~  Global("NWKnowQuint","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~  PartyHasItem("NWKARLAJ")~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 19 // from:  13.1 
  SAY @41
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @42 DO ~SetGlobal("KarlatJournal","MYAREA",1)~ GOTO 11
END

IF ~~ THEN BEGIN 20 // from:  13.2 
  SAY @43
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @42 DO ~SetGlobal("KarlatJournal","MYAREA",1)~ GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY @44
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @42 DO ~SetGlobal("KarlatJournal","MYAREA",1)~ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 13.4
  SAY @45
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~  Global("NWKnowQuint","GLOBAL",1)~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 11
END

// ----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKnowKarlat","GLOBAL",1)GlobalLT("NWJaregQuest","GLOBAL",3)~ THEN BEGIN 25 // from:
  SAY @46
  IF ~~ THEN EXIT
END

// ----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWJaregQuest","GLOBAL",3)~ THEN BEGIN 26 // from:
  SAY @47
  IF ~~ THEN EXTERN ~NWQUINT2~ 23
END

IF ~~ THEN BEGIN 27 // from: NWGUARDN 35
  SAY @48
  IF ~~ THEN EXTERN ~NWGUARDN~ 36
END

IF ~~ THEN BEGIN 28 // from: NWGUARDN 40
  SAY @49
  IF ~~ THEN EXTERN ~NWGUARDN~ 42
END

IF ~~ THEN BEGIN 29 // from: NWGUARDN 50
  SAY @50
  IF ~~ THEN EXTERN ~NWGUARDN~ 51
END

IF ~~ THEN BEGIN 30 // from: NWGUARDN 65
  SAY @50
  IF ~~ THEN EXTERN ~NWGUARDN~ 66
END

IF ~~ THEN BEGIN 31 // from: NWGUARDN 70
  SAY @50
  IF ~~ THEN EXTERN ~NWGUARDN~ 71
END

IF ~~ THEN BEGIN 32 // from: NWGUARDN 80
  SAY @50
  IF ~~ THEN EXTERN ~NWGUARDN~ 81
END

IF ~~ THEN BEGIN 33 // from: NWGUARDN 36.2 39.2
  SAY @51
  IF ~~ THEN EXTERN ~NWGUARDN~ 41
END
