// Гнездо Нищих  Таверна Сияющий Змей  Каллахан  Это один из многочисленных в Невервинтере торговцев горячительными напитками. Он одевается просто, желая вызвать симпатию у своих клиентов.
BEGIN ~CALLAHAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
 IF ~~ THEN DO ~StartStore("Callahan",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 3
END

// ----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(2,2)~ THEN BEGIN 7 // from:
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

// ----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY @16
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN EXIT
END

