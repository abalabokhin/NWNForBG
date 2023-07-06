// Северная дорога, таверна Зеленый грифон, уровень 1 Касма, Женщина гном Этот карлик смущенно улыбается практически всем, на кого смотрит

BEGIN ~KASMA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @9
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @6 GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @7 GOTO 6
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @14
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @15
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY @16
  IF ~~ THEN EXIT
END

