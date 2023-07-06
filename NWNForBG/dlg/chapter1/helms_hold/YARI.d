// Крепость Хельма   Яри Нож, Этот полуорк в бешенстве. Он выглядит абсолютно безумным.

BEGIN ~YARI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @9
  IF ~  Global("Talked","LOCALS",0)~ THEN DO ~SetGlobal("Talked","LOCALS",1)~ EXIT
  IF ~  Global("Talked","LOCALS",1)~ THEN DO ~Enemy()~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 5 // from:
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @15
  IF ~~ THEN DO ~Enemy()~ EXIT
END

