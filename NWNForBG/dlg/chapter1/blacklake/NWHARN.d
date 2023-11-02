// Полуостров Капитан-привратник Харн   Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~NWHARN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWBlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @19
  IF ~  GlobalGT("NWFormosaQuest","GLOBAL",1)~ THEN REPLY @20 GOTO 11
  IF ~  GlobalLT("NWFormosaQuest","GLOBAL",2)~ THEN REPLY @20 GOTO 30
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 27
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY @34
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 26
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 13 // from: 6.4
  SAY @38
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @39
  IF ~~ THEN REPLY @25 GOTO 27
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @40
  IF ~~ THEN REPLY @25 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 16 // from: 1.5
  SAY @41
  IF ~~ THEN DO ~SetGlobal("GateOpened","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY @42
  IF ~  GlobalGT("NWFormosaQuest","GLOBAL",1)~ THEN GOTO 28
  IF ~  GlobalLT("NWFormosaQuest","GLOBAL",2)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY @43
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY @44
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY @45
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY @46
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 22 // from: 11.3
  SAY @38
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 30.1
  SAY @47
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 30.2
  SAY @48
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 25 // from: 30.3
  SAY @49
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 12.1
  SAY @50
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 27 // from: 15.1
  SAY @51
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 28 // from: 17.1
  SAY @52
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 17.2
  SAY @53
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 21
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 6.2
  SAY @54
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @55 GOTO 23
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @55 GOTO 24
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @56 GOTO 25
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @35 GOTO 22
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY @57
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  GlobalGT("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 8
  IF ~  Global("GateOpened","MYAREA",0)~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)!NumTimesTalkedTo(0)GlobalGT("NWBlackLakeDone","GLOBAL",0)~ THEN BEGIN 32 // from:
  SAY @58
  IF ~  GlobalGT("NWBlackLakeDone","GLOBAL",0)GlobalGT("NWFormosaQuest","GLOBAL",1)~ THEN GOTO 33
  IF ~  OR(2)Global("NWBlackLakeDone","GLOBAL",0)GlobalLT("NWFormosaQuest","GLOBAL",2)GlobalGT("GateOpened","MYAREA",0)~ THEN GOTO 34
  IF ~  OR(2)Global("NWBlackLakeDone","GLOBAL",0)GlobalLT("NWFormosaQuest","GLOBAL",2)Global("GateOpened","MYAREA",0)~ THEN GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @59
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY @60
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 32.3
  SAY @61
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 16
 IF ~~ THEN REPLY @4 GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.4
  SAY @62
  IF ~~ THEN EXIT
END

