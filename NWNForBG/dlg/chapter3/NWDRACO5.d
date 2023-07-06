// Ћунный лес подземелье драконов —иний дракон  —иние драконы тщеславны и территориальны. ќни предпочитают охотитьс€ в безоблачные дни, когда их син€€ чешу€ позвол€ет сливатьс€ с открытым небом.

BEGIN ~NWDRACO5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

