// Форт Илкард Руины Расы Созидателей Временной раб големов, Человек  Это существо колеблется на грани существования.

BEGIN ~TEMPGOLE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))Global("TempGolemTalk","LOCALS",0)~ THEN BEGIN 2 // from:
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @12
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @13
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @15
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @22
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @14
  IF ~~ THEN DO ~SetGlobal("TempGolemTalk","LOCALS",1)~ EXIT
END

// -----------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))GlobalGT("TempGolemTalk","LOCALS",0)~ THEN BEGIN 12 // from:
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

