// Доки Таверна Сиди Клиент Дварф  Этот грубоватый посетитель таверны Сиди ласково оглядывает зал. Похоже, он чувствует себя тут уютно, как постоянный клиент.

BEGIN ~CUSTOME6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @19 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @19 GOTO 14
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN REPLY @20 GOTO 15
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @22
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @23
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @26
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY @27
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 5.4
  SAY @28
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY @32
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN REPLY @20 GOTO 15
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY @33
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 16 // from: 6.4
  SAY @34
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 13.2
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @39
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 22
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @42
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @43
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 24 // from:
  SAY @44
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 25 // from:
  SAY @45
  IF ~~ THEN EXIT
END

