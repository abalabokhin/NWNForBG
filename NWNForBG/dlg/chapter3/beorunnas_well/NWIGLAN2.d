// Колодец Беорунна: храм Тира Игланд Быстрый Меч Прокурор       m3q01a01igla - диалог прокурора

BEGIN ~NWIGLAN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWIslandDialogue","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXTERN ~NWVAND~ 12
END

IF ~~ THEN BEGIN 1 // from: NWVAND 12
  SAY @1
  IF ~~ THEN EXTERN ~NWNEURI2~ 37
END

IF ~~ THEN BEGIN 2 // from: NWNEURI2 37
  SAY @2
  IF ~~ THEN EXTERN ~NWVAND~ 13
END

IF ~~ THEN BEGIN 3 // from: NWVAND 13
  SAY @3
  IF ~~ THEN EXTERN ~NWVAND~ 14
END

IF ~~ THEN BEGIN 4 // from: NWVAND 14
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @5
  IF ~~ THEN EXTERN ~NWNEURI2~ 38
END

IF ~~ THEN BEGIN 6 // from: NWNEURI2 38
  SAY @6
  IF ~~ THEN EXTERN ~NWVAND~ 15
END

IF ~~ THEN BEGIN 7 // from: NWVAND 17
  SAY @7
  IF ~~ THEN DO ~IncrementGlobal("NWJustification","GLOBAL",1)~ EXTERN ~NWNEURI2~ 39
END

IF ~~ THEN BEGIN 8 // from: NWNEURI2 39
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("NWIslandDialogue","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @10 DO ~SetGlobal("NWIslandDialogue","GLOBAL",4)~ EXIT
END

