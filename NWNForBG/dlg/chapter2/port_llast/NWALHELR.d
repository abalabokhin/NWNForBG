// ����-����� ���� ����� ������� (�������� - ���������)

BEGIN ~NWALHELR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
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

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN DO ~StartStore("NWALHELR",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @19
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @20
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~ GlobalGT("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY @22
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY @23
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)~ THEN REPLY @24 GOTO 23
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~ GlobalGT("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.3
  SAY @27
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~ GlobalGT("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 4.4
  SAY @28
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~ GlobalGT("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 10.1
  SAY @31
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNeurikQuest","GLOBAL",6)~ THEN BEGIN 15 // from:
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 17
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @37
  IF ~~ THEN REPLY @34 GOTO 17
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @38
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 20
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @36 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 15.4
  SAY @42
  IF ~~ THEN DO ~SetGlobal("WerewolfChange","LOCALS",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @43
  IF ~~ THEN DO ~GiveItemCreate("NWELTOOH",LastTalkedToBy(Myself),1,0,0)SetGlobal("SPRITE_IS_DEADALHELOR1","GLOBAL",1)ReputationInc(-2)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2
  SAY @44
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 17
  IF ~~ THEN REPLY @36 GOTO 19
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",4)~ THEN BEGIN 22 // from:
  SAY @45
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN WER01 // from: NWANDER 1.0
  SAY @46
  IF ~  Global("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @47 EXTERN ~NWANDER~ 7
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)~ THEN REPLY @47 EXTERN ~NWANDER~ 8
END
