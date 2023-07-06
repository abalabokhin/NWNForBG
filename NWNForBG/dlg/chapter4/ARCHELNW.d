//  Пещеры замка Невер Мастер Форд   Человек  Ненасытная жажда знаний зажигает огоньки в глазах этого пожилого археолога, хотя за этим блеском скрываются темные и зловещие тени.

BEGIN ~ARCHELNW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @15
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 3.5
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @21
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @22
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @24
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

// -----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @25
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

