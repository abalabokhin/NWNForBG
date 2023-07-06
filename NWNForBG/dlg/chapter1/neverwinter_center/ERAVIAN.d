// Центр Невервинтера  Эравиан - Стражник рядом с трупами. Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~ERAVIAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @13
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @14
   IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY @20
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @21
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY @24
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @25
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @2 GOTO 2
END

// -------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @26
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

