// Колодец Беорунна: храм Тира Игланд Быстрый Меч Прокурор       m3q01a01igla - диалог прокурора

BEGIN ~IGLAND~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",2)Global("IslandDialogue","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN EXTERN ~LODAR~ 23
END

IF ~~ THEN BEGIN 2 // from: LODAR 23
  SAY @2
  IF ~~ THEN EXTERN ~LODAR~ 24
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @3
  IF ~~ THEN EXTERN ~LODAR~ 25
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",1)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXTERN ~ZED~ 27
END

IF ~~ THEN BEGIN 5 // from: ZED 27
  SAY @5
  IF ~~ THEN EXTERN ~ZED~ 28
END

IF ~~ THEN BEGIN 6 // from: ZED 28.5
  SAY @6
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",2)~ EXIT
END

