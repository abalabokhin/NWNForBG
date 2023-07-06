// Чарвуд, дом - обыватель мужчина Люди из этого городка выглядят вполне здоровыми, но что-то с ними не так. Их взгляд устремлен куда-то вдаль, и, кажется, ни у кого из них нет никаких дел. Они не работают и не занимаются коммерцией. Все они апатичны, и печать отчаяния лежит на их лицах.

BEGIN ~CHARWHOM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 14
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @17
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY @24
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @20 GOTO 4
  IF ~~ THEN REPLY @13 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @27
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 4.2
  SAY @28
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @31
  IF ~~ THEN EXIT
END
