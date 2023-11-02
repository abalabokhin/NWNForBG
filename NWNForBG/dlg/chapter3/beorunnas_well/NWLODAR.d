// Колодец Беорунна: Бар Лодар, Похоже, этот молодой солдат уже успел хорошенько принять на грудь

BEGIN ~NWLODAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWLodarTalk","GLOBAL",0)Global("NWRolganConvicted","GLOBAL",0)Global("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWRolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("NWLodarTalk","GLOBAL",1)TakePartyGold(10)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @17
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWLodarTalk","GLOBAL",0)Global("NWRolganConvicted","GLOBAL",0)Global("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @28
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @29 GOTO 15
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @32
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY @33
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @34
  IF ~~ THEN REPLY @22 GOTO 19
  IF ~~ THEN REPLY @3 GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @25
  IF ~  Global("NWLodarTalk","GLOBAL",1)~ THEN DO ~SetGlobal("NWLodarTalk","GLOBAL",2)TakePartyGold(10)~ EXIT
  IF ~  Global("NWLodarTalk","GLOBAL",2)~ THEN DO ~TakePartyGold(10)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY @8
  IF ~  Global("NWLodarTalk","GLOBAL",1)~ THEN DO ~SetGlobal("NWLodarTalk","GLOBAL",2)TakePartyGold(10)~ EXIT
  IF ~  Global("NWLodarTalk","GLOBAL",2)~ THEN DO ~TakePartyGold(10)~ EXIT
END

// -------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 21 // from:
  SAY @35
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWRolganConvicted","GLOBAL",0)~ THEN BEGIN 22 // from:
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: NWIGLAND 1
  SAY @37
  IF ~~ THEN EXTERN ~NWIGLAND~ 2
END

IF ~~ THEN BEGIN 24 // from: NWIGLAND 2
  SAY @38
  IF ~~ THEN EXTERN ~NWIGLAND~ 3
END

IF ~~ THEN BEGIN 25 // from: NWIGLAND 3
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~  Global("NWLodarTalk","GLOBAL",2)~ THEN REPLY @42 GOTO 28
  IF ~~ THEN REPLY @43 GOTO 29
  IF ~~ THEN REPLY @44 DO ~SetGlobal("NWIslandDialogue","GLOBAL",1) ~EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @49
  IF ~~ THEN REPLY @50 DO ~IncrementGlobal("NWJustification","GLOBAL",1)~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 25.4
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY @53
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~  Global("NWLodarTalk","GLOBAL",2)~ THEN REPLY @42 GOTO 28
  IF ~~ THEN REPLY @43 GOTO 29
  IF ~~ THEN REPLY @44 DO ~SetGlobal("NWIslandDialogue","GLOBAL",1) ~EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY @54
  IF ~~ THEN REPLY @40 GOTO 26
  IF ~  Global("NWLodarTalk","GLOBAL",2)~ THEN REPLY @42 GOTO 28
  IF ~~ THEN REPLY @43 GOTO 29
  IF ~~ THEN REPLY @44 DO ~SetGlobal("NWIslandDialogue","GLOBAL",1) ~EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1
  SAY @55
  IF ~~ THEN REPLY @40 GOTO 26
  IF ~  GlobalGT("NWLodarTalk","GLOBAL",0)~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 29
  IF ~~ THEN REPLY @44 DO ~SetGlobal("NWIslandDialogue","GLOBAL",1) ~EXIT
END

