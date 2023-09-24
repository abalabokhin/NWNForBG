// Северная дорога, таверна Зеленый грифон, уровень 1 Дидд, эльф Этот высокомерный эльф нетерпеливо ждет, когда же что-нибудь начнется.

BEGIN ~NWDYDD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @3 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1) ~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @3 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @9 DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1) ~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY @21
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY @22
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KnowsAboutMatch","GLOBAL",1) GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY @23
  IF ~~ THEN EXIT
END

