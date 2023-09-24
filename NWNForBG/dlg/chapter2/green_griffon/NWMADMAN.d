// Северная дорога, таверна Зеленый грифон, уровень 1 Придурок (безумец) можно дать имя Этот человек сидит и пялится на женщину. По его подбородку течет слюна.

BEGIN ~NWMADMAN~

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
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @9
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,1)~ THEN BEGIN 7 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(2,2)~ THEN BEGIN 8 // from:
  SAY @12
  IF ~~ THEN EXIT
END
