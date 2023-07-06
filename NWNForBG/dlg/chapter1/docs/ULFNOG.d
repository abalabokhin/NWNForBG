// Доки Таверна Сиди 2 этаж Ульфног  гном  дает пароль   Этот гном выглядит очень дружелюбно.

BEGIN ~ULFNOG~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @18
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("KnowPasswordNW","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("KnowPasswordNW","GLOBAL",1)~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @27
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY @28
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @29
  IF ~~ THEN EXIT
END

