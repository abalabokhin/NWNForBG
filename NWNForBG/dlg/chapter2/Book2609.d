// Чарвуд Покои Карлата Книга

BEGIN ~BOOK2609~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @2 DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @2 DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~  Global("KarlatBook","MYAREA",0)~ THEN REPLY @2 DO ~SetGlobal("KarlatBook","MYAREA",1)DestroySelf()~ UNSOLVED_JOURNAL @7 EXIT
  IF ~  Global("KarlatBook","MYAREA",1)~ THEN REPLY @2 DO ~DestroySelf()~ EXIT
END

