// �������� ������, ������ ��������, ��� ���� ������� - �������

// IF ~~ THEN DO ~SetGlobal("NWLeahSaved","GLOBAL",1)EscapeArea()~ EXIT -  �������� ������� ������ � ������� �� �� ������

BEGIN ~NWLEAH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2103")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  Global("NWFarmerQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  GlobalLT("NWFarmerQuest","GLOBAL",2)~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN DO ~SetGlobal("NWLeahSaved","GLOBAL",1)SetGlobal("Pause","LOCALS",0)EscapeArea()~ EXIT // �������� ������� ������ � ������� �� �� ������
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @18
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @19
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @20 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @20 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
END

// --------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",2)~ THEN BEGIN 11 // from:
  SAY @24
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  Global("NWFarmerQuest","GLOBAL",2)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  GlobalLT("NWFarmerQuest","GLOBAL",2)~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 12 // from:
  SAY @25
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  GlobalLT("NWFarmerQuest","GLOBAL",2)~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @26 GOTO 7
END

// --------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWLeahSaved","GLOBAL",0)AreaCheck("NW2100")~ THEN BEGIN 13 // from:
  SAY @27
  IF ~~ THEN EXIT
END
