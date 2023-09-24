//  Зона военных действий Стражник у ворот  Это человек - сама бдительность. Он намеревается исполнять свои обязанности стражника, пока ворота в Сердце города не падут.

BEGIN ~NWB02GUR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  !Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~  Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 4
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @12
  IF ~  !Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~  Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @13
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~  !Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~  Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 4
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @19 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @19 GOTO 12
  IF ~  !Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~  Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 4
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @20
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY @21
  IF ~  !Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~  Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 4
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @22
  IF ~  !Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 3
  IF ~  Global("CatepultDestroy","GLOBAL",3)~ THEN REPLY @4 GOTO 4
  IF ~  NumDeadLT("NWGOLEM3",2)~ THEN REPLY @5 GOTO 5
  IF ~  NumDeadGT("NWGOLEM3",1)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

