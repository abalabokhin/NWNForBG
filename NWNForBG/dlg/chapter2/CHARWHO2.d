// Чарвуд, дом - обыватель мужчина Люди из этого городка выглядят вполне здоровыми, но что-то с ними не так. Их взгляд устремлен куда-то вдаль, и, кажется, ни у кого из них нет никаких дел. Они не работают и не занимаются коммерцией. Все они апатичны, и печать отчаяния лежит на их лицах.

BEGIN ~CHARWHO2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 1
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1 2 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @17
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.1
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.2
  SAY @19
  IF ~~ THEN EXIT
END
