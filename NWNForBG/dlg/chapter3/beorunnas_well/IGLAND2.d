// Колодец Беорунна: храм Тира Игланд Быстрый Меч Прокурор       m3q01a01igla - диалог прокурора

BEGIN ~IGLAND2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXTERN ~VAND~ 12
END

IF ~~ THEN BEGIN 1 // from: VAND 12
  SAY @1
  IF ~~ THEN EXTERN ~NEURIK2~ 37
END

IF ~~ THEN BEGIN 2 // from: NEURIK2 37
  SAY @2
  IF ~~ THEN EXTERN ~VAND~ 13
END

IF ~~ THEN BEGIN 3 // from: VAND 13
  SAY @3
  IF ~~ THEN EXTERN ~VAND~ 14
END

IF ~~ THEN BEGIN 4 // from: VAND 14
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @5
  IF ~~ THEN EXTERN ~NEURIK2~ 38
END

IF ~~ THEN BEGIN 6 // from: NEURIK2 38
  SAY @6
  IF ~~ THEN EXTERN ~VAND~ 15
END

IF ~~ THEN BEGIN 7 // from: VAND 17
  SAY @7
  IF ~~ THEN DO ~IncrementGlobal("Justification","GLOBAL",1)~ EXTERN ~NEURIK2~ 39
END

IF ~~ THEN BEGIN 8 // from: NEURIK2 39
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("IslandDialogue","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @10 DO ~SetGlobal("IslandDialogue","GLOBAL",4)~ EXIT
END

