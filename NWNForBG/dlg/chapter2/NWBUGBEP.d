// �������� ������, ������ �������� � �����, ������� ������

BEGIN ~NWBUGBEP~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 3
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @18
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @22
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY @25
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @28
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @29
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @30
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
END
