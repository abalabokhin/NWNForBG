// Чарвуд, дом - обыватель мужчина Люди из этого городка выглядят вполне здоровыми, но что-то с ними не так. Их взгляд устремлен куда-то вдаль, и, кажется, ни у кого из них нет никаких дел. Они не работают и не занимаются коммерцией. Все они апатичны, и печать отчаяния лежит на их лицах.

BEGIN ~CHARWMAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Charwood_Is_Saved","GLOBAL",0)Global("Charwood_Is_Cursed","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @21
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @26
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @27
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @29
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY @30
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @31
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @32
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @33
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 13
  SAY @34
  IF ~~ THEN REPLY @22 GOTO 3
  IF ~~ THEN REPLY @25 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 17 // from:
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 18
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @37
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18
  SAY @38
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END
