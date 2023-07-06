// Чернозерье Патруль Чернозерья   Не носящие форму стражи Невервинтера, члены Патруля Чернозерья нанимаются жителями квартала в частном порядке.

BEGIN ~PATROL01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @1 GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @2 GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @2 GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @11
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @16
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  GlobalGT("FormosaQuest","GLOBAL",1)~ THEN REPLY @22 GOTO 13
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @22 GOTO 14
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)Dead("Formosa")~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @24
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN REPLY @25 GOTO 15
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @29
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY @30
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY @31
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 16 // from: 11.2
  SAY @32
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 17 // from: 11.3
  SAY @33
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY @34
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY @35
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~  GlobalGT("FormosaQuest","GLOBAL",1)~ THEN REPLY @22 GOTO 13
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @22 GOTO 14
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)Dead("Formosa")~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 7
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 20 // from:
  SAY @36
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @1 GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @2 GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

// -------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 21 // from:
  SAY @37
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

