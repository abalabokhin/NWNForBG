// Порт-Лласт Кузница Треснувшая Наковальня Хальял Трондор торговец
BEGIN ~NWCHALJL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~ True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN DO ~StartStore("NWCHALJL",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @13
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @15
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY @16
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @19
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.5
  SAY @20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @21 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @21 GOTO 12
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @22
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @23
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 4
END
