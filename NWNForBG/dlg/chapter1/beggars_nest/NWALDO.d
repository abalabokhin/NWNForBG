// ������ �����  �����  ���������� ���� ���������� ������� �� ��� ���������� ��������. �� ���� �� �������� �� ����� ����� ���� ������, ��� ��� ����������.

BEGIN ~NWALDO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  OR(2)Global("NWHectorFollow","GLOBAL",0)!See("NWHECTOR")~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWHectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN REPLY @1 GOTO 2
  IF ~  OR(2)Global("NWHectorFollow","GLOBAL",0)!See("NWHECTOR")~ THEN REPLY @2 GOTO 1
  IF ~  Global("NWHectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN REPLY @2 GOTO 2
  IF ~  OR(2)Global("NWHectorFollow","GLOBAL",0)!See("NWHECTOR")~ THEN REPLY @3 GOTO 1
  IF ~  Global("NWHectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~  Global("NWKnowHector","GLOBAL",1)~ THEN REPLY @6 GOTO 4
  IF ~  Global("NWHectorFollow","GLOBAL",1)!See("NWHECTOR")~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN EXTERN ~NWHECTOR~ 2 // � ��������, ����! �� ����� ��� ������� ������. �������!
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @20
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @22
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("NWAldoQuest","GLOBAL",3)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("NWAldoQuest","GLOBAL",3)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.4
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @27
  IF ~~ THEN DO ~SetGlobal("NWAldoQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @107605 EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY @29
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 4.3
  SAY @30
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 14 // from: NWHECTOR 2
  SAY @31
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("NWAldoQuest","GLOBAL",2)
AddexperienceParty(30000)ActionOverride("NWHECTOR",EscapeAreaDestroy(60))ActionOverride("NWMATTIY",EscapeAreaDestroy(60))EscapeAreaDestroy(60)EraseJournalEntry(@107605)~ SOLVED_JOURNAL @107606 EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 16 // from:
  SAY @34
  IF ~  OR(2)Global("NWHectorFollow","GLOBAL",0)!See("NWHECTOR")~ THEN GOTO 17
  IF ~  Global("NWHectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~  Global("NWKnowHector","GLOBAL",1)~ THEN REPLY @6 GOTO 4
  IF ~  Global("NWHectorFollow","GLOBAL",1)!See("NWHECTOR")~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 18 // from:
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: NWMATTIY 3.1
  SAY @37
  IF ~~ THEN EXTERN ~NWMATTIY~ 9 // ������, �����! ��� ��� ������� ����� ������ �� ������� �� �����, ������� �����!
END

