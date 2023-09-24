// Чарвуд, Квинт - полуэльф. У этого человека постоянно бегают глаза и дергаются мышцы лица. С ним явно что-то нечисто.

BEGIN ~NWQUINT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.4 0.5
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Talked_with_Quint","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN DO ~SetGlobal("Talked_with_Quint","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 7 // from:
  SAY @17
  IF ~~ THEN EXIT
END
