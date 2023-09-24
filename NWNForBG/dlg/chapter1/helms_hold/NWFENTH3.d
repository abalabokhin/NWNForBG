// Центр Невервинтера Крепость Хельма   Фентик совершенно сломлен, ведь его мир рассыпался на части у него на глазах. Он почти не осознает, где он находится.

BEGIN ~NWFENTH3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: NWDESTH2 1
  SAY @18
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @23
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @24
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @25
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY @30
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY @31
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

// -------------------------------------------------

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 18 // from:
  SAY @32
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
END

