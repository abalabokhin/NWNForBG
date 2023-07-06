// Южная дорога 2 - Инго  В его доме можно спать Этот добродушный фермер энергично идет по своим делам.  Ingo  ErikNW  Constanc Mary

BEGIN ~INGO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~  GlobalGT("ErikQuest","GLOBAL",1)~ THEN REPLY @15 GOTO 11
  IF ~  GlobalLT("ErikQuest","GLOBAL",2)~ THEN REPLY @15 DO ~SetGlobal("KnowAboutErik","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END


IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @25
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 19
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 10
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY @30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 22
  IF ~  GlobalGT("ErikQuest","GLOBAL",1)~ THEN REPLY @15 GOTO 11
  IF ~  GlobalLT("ErikQuest","GLOBAL",2)~ THEN REPLY @15 DO ~SetGlobal("KnowAboutErik","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY @33
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.3
  SAY @34
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 4.4
  SAY @35
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~  GlobalGT("ErikQuest","GLOBAL",1)~ THEN REPLY @15 GOTO 11
  IF ~  GlobalLT("ErikQuest","GLOBAL",2)~ THEN REPLY @15 DO ~SetGlobal("KnowAboutErik","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY @36
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 5.2
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 16 // from: 5.3
  SAY @39
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 6.1
  SAY @40
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY @41
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 7.1
  SAY @42
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 7.2
  SAY @43
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 10.1
  SAY @44
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @45
  IF ~  GlobalGT("ErikQuest","GLOBAL",1)~ THEN REPLY @15 GOTO 11
  IF ~  GlobalLT("ErikQuest","GLOBAL",2)~ THEN REPLY @15 DO ~SetGlobal("KnowAboutErik","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   RandomNum(2,1)~ THEN BEGIN 24 // from:
  SAY @46
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   RandomNum(2,2)~ THEN BEGIN 25 // from:
  SAY @47
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

