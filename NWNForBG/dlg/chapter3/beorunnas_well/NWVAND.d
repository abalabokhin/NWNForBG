// ������� ��������  ����� �����   ����� �� ������ ���� ������� ������� � ���, ��� ��� - ������ �� ������������ ������� ������� ����.

BEGIN ~NWVAND~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWVandJob","GLOBAL",0)!Global("NWIslandDialogue","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWRolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
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
  IF ~~ THEN DO ~SetGlobal("NWVandJob","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("NWVandJob","GLOBAL",2)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWVandJob","GLOBAL",5)!Global("NWIslandDialogue","GLOBAL",2)~ THEN BEGIN 9 // from:
  SAY @16
  IF ~~ THEN DO ~SetGlobal("NWVandJob","GLOBAL",6)AddexperienceParty(52000)~ EXIT
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWVandJob","GLOBAL",7)!Global("NWIslandDialogue","GLOBAL",2)~ THEN BEGIN 10 // from:
  SAY @17
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWVandJob","GLOBAL",6)!Global("NWIslandDialogue","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY @16
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWIslandDialogue","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY @18
  IF ~~ THEN EXTERN ~NWIGLAN2~ 1
END

IF ~~ THEN BEGIN 13 // from: NWIGLAN2 2.1
  SAY @19
  IF ~~ THEN EXTERN ~NWIGLAN2~ 3
END

IF ~~ THEN BEGIN 14 // from: NWIGLAN2 3.1
  SAY @20
  IF ~~ THEN EXTERN ~NWIGLAN2~ 4
END

IF ~~ THEN BEGIN 15 // from: NWIGLAN2 6.1
  SAY @21
  IF ~  Global("NWVandJob","GLOBAL",2)Global("WandaAnswers","LOCALS",0)~ THEN REPLY @22 DO ~SetGlobal("WandaAnswers","LOCALS",1)~ GOTO 16
  IF ~  GlobalGT("NWVandJob","GLOBAL",0)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 EXTERN ~NWIGLAN2~ 8
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @26
  IF ~  GlobalGT("NWVandJob","GLOBAL",0)~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 EXTERN ~NWIGLAN2~ 8
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @27
  IF ~~ THEN EXTERN ~NWIGLAN2~ 7
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @28
  IF ~~ THEN EXTERN ~NWNEURI2~ 48
END

