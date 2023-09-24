// Колодец Беорунна: храм Тира Присяжный Священник Эдегар человек       m3q01a01igla - диалог прокурора  Игланд Быстрый Меч. Я прокурор

BEGIN ~NWEDEGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @14
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @15
  IF ~~ THEN DO ~SetGlobal("TrialBroken","GLOBAL",2)~ EXIT
END

// ----------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @17
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @18
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @19
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

