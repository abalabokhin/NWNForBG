// Гнездо Нищих  Маттили  Полурослик Эта практичная женщина из полуросликов никак не может смириться с абсурдом всего происходящего.

BEGIN ~NWMATTIY~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  !Dead("NWALDO")~ THEN GOTO 1
  IF ~  Dead("NWALDO")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~  Global("HectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN REPLY @5 GOTO 6
  IF ~  Dead("NWHECTOR")~ THEN REPLY @6 GOTO 7
  IF ~  !Dead("NWHECTOR")!See("NWHECTOR")~ THEN REPLY @6 GOTO 11
  IF ~  !Dead("NWHECTOR")See("NWHECTOR")~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~  See("NWALDO")~ THEN EXTERN ~NWALDO~ 19 // Не начинай, женщина! Я стараюсь изо всех сил! 9
  IF ~  !See("NWALDO")~ THEN GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @10
  IF ~  Global("HectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN REPLY @5 GOTO 6
  IF ~  Dead("NWHECTOR")~ THEN REPLY @6 GOTO 7
  IF ~  !Dead("NWHECTOR")!See("NWHECTOR")~ THEN REPLY @6 GOTO 11
  IF ~  !Dead("NWHECTOR")See("NWHECTOR")~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @11
  IF ~  Dead("NWHECTOR")~ THEN REPLY @6 GOTO 7
  IF ~  !Dead("NWHECTOR")!See("NWHECTOR")~ THEN REPLY @6 GOTO 11
  IF ~  !Dead("NWHECTOR")See("NWHECTOR")~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @12
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.6
  SAY @13
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~  Global("HectorFollow","GLOBAL",1)See("NWHECTOR")~ THEN REPLY @5 GOTO 6
  IF ~  Dead("NWHECTOR")~ THEN REPLY @6 GOTO 7
  IF ~  !Dead("NWHECTOR")!See("NWHECTOR")~ THEN REPLY @6 GOTO 11
  IF ~  !Dead("NWHECTOR")See("NWHECTOR")~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: NWALDO 19
  SAY @14
  IF ~  !See("NWHECTOR")~ THEN REPLY @15 GOTO 13
  IF ~  See("NWHECTOR")~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY @17
  IF ~  !See("NWHECTOR")~ THEN REPLY @15 GOTO 13
  IF ~  See("NWHECTOR")~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY @18
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY @19
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @20
  IF ~~ THEN REPLY @16 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY @22
  IF ~  !See("NWHECTOR")~ THEN REPLY @15 GOTO 13
  IF ~  See("NWHECTOR")~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY @23
  IF ~~ THEN DO ~AddexperienceParty(20000)ActionOverride("NWHECTOR",EscapeAreaDestroy(60))EscapeAreaDestroy(60)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 17 // from:
  SAY @24
  IF ~~ THEN EXIT
END

