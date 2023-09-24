// Колодец Беорунна: Казармы наемников Джевон, солдат Союза Лордов. Очень надежный юноша      

BEGIN ~NWJEVON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JevonTalk","GLOBAL",0)GlobalLT("RolgansTrial","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @12
  IF ~  CheckStatGT(LastTalkedToBy,8,CHR)PartyGoldGT(199)~ THEN REPLY @13 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,9,CHR)PartyGoldGT(199)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @16
  IF ~~ THEN DO ~TakePartyGold(300)SetGlobal("JevonTalk","GLOBAL",1)IncrementGlobal("ToAcquitted","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY @18
  IF ~~ THEN EXIT
END

// --------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JevonTalk","GLOBAL",1)GlobalLT("RolgansTrial","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY @19
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @20
  IF ~~ THEN EXIT
END

// --------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolgansTrial","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @21
  IF ~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN GOTO 14
  IF ~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @23
  IF ~~ THEN EXIT
END

