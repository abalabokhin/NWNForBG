// Колодец Беорунна: Бар Аверик, солдат Союза Лордов Присяжный

BEGIN ~NWAVERIC~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWAvericTalk","GLOBAL",0)Gender(LastTalkedToBy,MALE)Global("NWRolganConvicted","GLOBAL",0)Global("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 1
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY @15
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)PartyGoldGT(99)~ THEN REPLY @16 GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)PartyGoldGT(99)~ THEN REPLY @16 GOTO 9
  IF ~  PartyGoldGT(299)~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @19
  IF ~  PartyGoldGT(299)~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @20
  IF ~~ THEN DO ~SetGlobal("NWAvericTalk","GLOBAL",1)IncrementGlobal("NWToAcquitted","GLOBAL",1)TakePartyGold(100)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("NWAvericTalk","GLOBAL",1)IncrementGlobal("NWToAcquitted","GLOBAL",1)TakePartyGold(300)~ EXIT
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWAvericTalk","GLOBAL",0)Gender(LastTalkedToBy,FEMALE)Global("NWRolganConvicted","GLOBAL",0)Global("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWRolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWAvericTalk","GLOBAL",1)Global("NWRolganConvicted","GLOBAL",0)Global("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @22
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @23
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~ GlobalGT("NWRolganConvicted","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~ GlobalGT("NWRolganAcquitted","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY @27
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @28
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN GOTO 18
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @29
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN GOTO 18
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @32 GOTO 21
  IF ~~ THEN REPLY @33 GOTO 22
  IF ~~ THEN REPLY @34 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @35
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 18.2
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY @37
  IF ~~ THEN GOTO 21
END

