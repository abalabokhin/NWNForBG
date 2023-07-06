// Центр Невервинтера   Стражник у ворот Черного озера Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~NWGUARD3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BlackLakeGate","MYAREA",0)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 DO ~SetGlobal("BlackLakeGate","MYAREA",1)~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 16
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 DO ~SetGlobal("BlackLakeGate","MYAREA",1)~ GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @1 DO ~SetGlobal("BlackLakeGate","MYAREA",1)~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @26
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @28
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @29
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @30
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @31
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @32
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 1.1
  SAY @33
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN REPLY @34 GOTO 17
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN REPLY @34 GOTO 18
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN REPLY @35 GOTO 19
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN REPLY @35 GOTO 20
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @38
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @39
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @40
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 16.4
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 16.5
  SAY @43
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN REPLY @34 GOTO 17
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN REPLY @34 GOTO 18
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN REPLY @35 GOTO 19
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

// ----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BlackLakeGate","MYAREA",0)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 22 // from:
  SAY @44
  IF ~~ THEN REPLY @6 GOTO 16
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

// -------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BlackLakeGate","MYAREA",0)GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @45
  IF ~~ THEN REPLY @6 GOTO 16
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

