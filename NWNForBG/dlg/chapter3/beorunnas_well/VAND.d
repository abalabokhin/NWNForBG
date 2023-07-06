// Колодец Беорунна  Улица Ванда   Метки на одежде этой женщины говорят о том, что она - варвар из утгардтского племени Черного Льва.

BEGIN ~VAND~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",0)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @10
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2  4.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("VandJob","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("VandJob","GLOBAL",2)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",5)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 9 // from:
  SAY @16
  IF ~~ THEN DO ~SetGlobal("VandJob","GLOBAL",6)AddexperienceParty(52000)~ EXIT
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",7)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 10 // from:
  SAY @17
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("VandJob","GLOBAL",6)!Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY @16
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY @18
  IF ~~ THEN EXTERN ~IGLAND2~ 1
END

IF ~~ THEN BEGIN 13 // from: IGLAND2 2.1
  SAY @19
  IF ~~ THEN EXTERN ~IGLAND2~ 3
END

IF ~~ THEN BEGIN 14 // from: IGLAND2 3.1
  SAY @20
  IF ~~ THEN EXTERN ~IGLAND2~ 4
END

IF ~~ THEN BEGIN 15 // from: IGLAND2 6.1
  SAY @21
  IF ~  Global("VandJob","GLOBAL",2)Global("WandaAnswers","LOCALS",0)~ THEN REPLY @22 DO ~SetGlobal("WandaAnswers","LOCALS",1)~ GOTO 16
  IF ~  GlobalGT("VandJob","GLOBAL",0)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @26
  IF ~  GlobalGT("VandJob","GLOBAL",0)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @27
  IF ~~ THEN EXTERN ~IGLAND2~ 7
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @28
  IF ~~ THEN EXTERN ~NEURIK2~ 48
END

