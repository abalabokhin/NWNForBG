// Чернозерье Перчатка Юноша Этот человек явно в восторге от боя. Он восхищается любым храбрецом, кто может показать свои способности на арене.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~NWARENA2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWArena","GLOBAL",1)Global("NWArena","GLOBAL",2)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~  Global("NWArena","GLOBAL",1)~ THEN REPLY @8 GOTO 5
  IF ~  Global("NWArena","GLOBAL",2)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @12
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 7
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 10 // from:
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @21
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY @23
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY @24
  IF ~~ THEN EXIT
END

