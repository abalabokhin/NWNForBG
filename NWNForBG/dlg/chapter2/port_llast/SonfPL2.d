// Порт-Лласт Сын фермера Задание - Помочь фермеру за городом

BEGIN ~SONFPL2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @15
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.4
  SAY @20
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @23
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY @24
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @25
  IF ~~ THEN DO ~SetGlobal("FarmerQuest","GLOBAL",1)EscapeArea()~ UNSOLVED_JOURNAL @26 EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY @27
  IF ~~ THEN EXIT
END
