// Чарвуд, замок Джарег, первый этаж  - Книга Карлата.

BEGIN ~BOOKKARL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KarlatBook","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @5
  IF ~~ THEN REPLY @3 DO ~SetGlobal("KarlatBook","MYAREA",0)~ UNSOLVED_JOURNAL @97801 EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KarlatBook","MYAREA",0)~ THEN BEGIN 4 // from:
  SAY @0
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @5
  IF ~~ THEN REPLY @3 EXIT
END
