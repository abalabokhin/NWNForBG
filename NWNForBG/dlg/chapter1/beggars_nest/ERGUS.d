// Гнездо нищих Капитан-привратник Эргус   Это красиво одетый и аккуратный капитан городской стражи. Он так же устал, как и его подчиненные. Чума высосала силы из всех.

BEGIN ~ERGUS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("ErgusQuest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("ErgusQuest","GLOBAL",2)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~  Global("ErgusQuest","GLOBAL",0)~ THEN REPLY @7 DO ~SetGlobal("ErgusQuest","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 17
  IF ~~ THEN REPLY @12 GOTO 18
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~  GlobalGT("ErgusQuest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("ErgusQuest","GLOBAL",2)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @18
  IF ~  Global("ErgusQuest","GLOBAL",0)~ THEN REPLY @7 DO ~SetGlobal("ErgusQuest","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @19
  IF ~  GlobalGT("ErgusQuest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("ErgusQuest","GLOBAL",2)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY @20
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 3.1
  SAY @21
  IF ~~ THEN REPLY @12 GOTO 18
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 3.2
  SAY @22
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @23
  IF ~~ THEN REPLY @11 GOTO 17
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @24
  IF ~  GlobalGT("ErgusQuest","GLOBAL",1)~ THEN GOTO 11
  IF ~  GlobalLT("ErgusQuest","GLOBAL",2)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @28
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @29
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY @30
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY @31
  IF ~~ THEN EXIT
END

