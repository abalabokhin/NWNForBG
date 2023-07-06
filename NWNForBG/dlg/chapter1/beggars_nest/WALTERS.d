// Гнездо нищих Склад Уолтерс пропавший стражник полуэльф   Этот стражник-полуэльф явно знавал и лучшие дни. Его тюремщик не был с ним слишком ласков.

BEGIN ~WALTERS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Drawl")Global("WaltersIsFree","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("Drawl")Global("WaltersIsFree","GLOBAL",0)Global("Pause","LOCALS",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~ Global("WaltersIsFree","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~ GlobalGT("WaltersIsFree","GLOBAL",0)~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY @34
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 7.1
  SAY @35
  IF ~ Global("WaltersIsFree","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~ GlobalGT("WaltersIsFree","GLOBAL",0)~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 7.2
  SAY @36
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @37
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 8.1
  SAY @38
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("WaltersIsFree","GLOBAL",1)EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY @39
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY @40
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY @41
  IF ~~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 11.1
  SAY @42
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @10 GOTO 9
END

// --------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("Drawl")Global("WaltersIsFree","GLOBAL",0)Global("Pause","LOCALS",1)~ THEN BEGIN 22 // from:
  SAY @43
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @18 GOTO 12
END

// --------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("WaltersIsFree","GLOBAL",2)~ THEN BEGIN 23 // from:
  SAY @44
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @45
  IF ~~ THEN DO ~SetGlobal("WaltersIsFree","GLOBAL",3)AddexperienceParty(20000)~ EXIT
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("WaltersIsFree","GLOBAL",3)~ THEN BEGIN 25 // from:
  SAY @44
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @45
  IF ~~ THEN EXIT
END

