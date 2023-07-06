// Центр Невервинтера  Дом   Девочка человек   Эта девочка выглядит вполне счастливой. Похоже, ее оберегали от ужасов чумы.

BEGIN ~GIRLCOM3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @18
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @19
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @21
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3 3.4
  SAY @22
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 8
END

// --------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalGT("NWNChapter","GLOBAL",3)~ THEN BEGIN 13 // from:
  SAY @23
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 11 // from:
  SAY @24
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 12 // from:
  SAY @25
  IF ~~ THEN EXIT
END

