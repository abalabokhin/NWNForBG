// Ћускан Suspicious type ѕодозрительный тип- вор-торговец на улице   Ётот подозрительный полурослик с неподдельным ужасом наблюдает за хаосом, твор€щимс€ на улице.

BEGIN ~NWSUSPTE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN DO ~StartStore("NWSUSPTE",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @17
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @18
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @20
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 5
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 10 // from:
  SAY @21
  IF ~~ THEN EXIT
END

