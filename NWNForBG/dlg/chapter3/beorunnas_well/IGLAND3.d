// Колодец Беорунна: храм Тира Игланд Быстрый Меч Прокурор       m3q01a01igla - диалог прокурора

BEGIN ~IGLAND3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXTERN ~ROLGAN~ 13
END

IF ~~ THEN BEGIN 1 // from: ROLGAN 13.4
  SAY @1
  IF ~~ THEN EXTERN ~ROLGAN~ 18
END

IF ~~ THEN BEGIN 2 // from: ROLGAN 18.1
  SAY @2
  IF ~~ THEN EXTERN ~ROLGAN~ 19
END

IF ~~ THEN BEGIN 3 // from: ROLGAN 13.4
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @4
  IF ~~ THEN GOTO 6
END

// -----------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslandDialogue","GLOBAL",4)~ THEN BEGIN 5 // from:
  SAY @4
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @5
  IF ~~ THEN EXTERN ~NEURIK2~ 40
END

IF ~~ THEN BEGIN 7 // from: NEURIK2 40.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @8 GOTO 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @9 GOTO 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 EXTERN ~NEURIK2~ 47
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @14
  IF ~~ THEN EXTERN ~NEURIK2~ 41
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @15
  IF ~~ THEN EXTERN ~NEURIK2~ 42
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @16
  IF ~~ THEN EXTERN ~NEURIK2~ 43
END

IF ~~ THEN BEGIN 11 // from: 7.4
  SAY @17
  IF ~~ THEN EXTERN ~NEURIK2~ 44
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY @18
  IF ~~ THEN EXTERN ~NEURIK2~ 45
END

IF ~~ THEN BEGIN 13 // from: 7.6
  SAY @19
  IF ~~ THEN EXTERN ~NEURIK2~ 46
END

IF ~~ THEN BEGIN 14 // from: NEURIK2 50
  SAY @20
  IF ~~ THEN EXTERN ~NEURIK2~ 51
END

IF ~~ THEN BEGIN 15 // from: NEURIK2 52
  SAY @20
  IF ~~ THEN EXTERN ~NEURIK2~ 53
END

IF ~~ THEN BEGIN 16 // from: NEURIK2 54
  SAY @21
  IF ~~ THEN EXTERN ~NEURIK2~ 55
END

