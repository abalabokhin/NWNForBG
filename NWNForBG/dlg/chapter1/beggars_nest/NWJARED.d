// Гнездо нищих Лабиринты Проклятых Джаред   Этот человек злобно смотрит по сторонам, он явно готов в любой момент взорваться, в лучшем случае разразиться бранью. Он очень раздражен и огорчен тем прискорбным положением, в котором оказался. На его доспехах можно увидеть символ Сирика.

BEGIN ~NWJARED~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("DjaredIsFree","MYAREA",0)!Dead("NWGULNAN")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @21
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @22
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @23
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("DjaredIsFree","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.3
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY @29
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
END

// -------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("DjaredIsFree","MYAREA",2)!Dead("NWGULNAN")~ THEN BEGIN 16 // from:
  SAY @30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

// -------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("DjaredIsFree","MYAREA",1)Dead("NWGULNAN")~ THEN BEGIN 17 // from:
  SAY @31
  IF ~~ THEN DO ~SetGlobal("DjaredIsFree","MYAREA",2)EscapeArea()~ EXIT
END

// -------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("DjaredIsFree","MYAREA",0)Dead("NWGULNAN")~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @33 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.4
  SAY @31
  IF ~~ THEN DO ~SetGlobal("DjaredIsFree","MYAREA",2)EscapeArea()~ EXIT
END

