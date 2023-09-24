// Порт-Лласт Таверна Клиент Официантка.

BEGIN ~NWWAITRL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,1)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,2)~ THEN BEGIN 5 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,3)~ THEN BEGIN 6 // from:
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,4)~ THEN BEGIN 7 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,5)~ THEN BEGIN 8 // from:
  SAY @11
  IF ~~ THEN EXIT
END
