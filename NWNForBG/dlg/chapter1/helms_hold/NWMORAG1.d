// Дорога в Крепость Хельма  Странное видение     Эта женщина выглядит как-то... странно. Воздух вокруг нее холоден, и никак не получается рассмотреть черты ее лица. Возможно, это просто иллюзия.

BEGIN ~NWMORAG1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @12
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

