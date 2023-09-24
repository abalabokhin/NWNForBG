// Восточная дорога, Лагерь археологов, археолог - человек. Этот человек трясется от страха при малейшем шорохе. Его тело бьет мелкая дрожь.

BEGIN ~NWARCHE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("JaxQuest","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY @21
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @22
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 9
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @27
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 13
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @31
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @36
  IF ~~ THEN REPLY @28 GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("JaxQuest","GLOBAL",2)~ THEN BEGIN 17 // from:
  SAY @37
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("JaxQuest","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY @38
  IF ~~ THEN EXIT
END
