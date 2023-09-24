// Центр Невервинтера Башня Плаща Эльтура    Эльтура Сарптил      Эта дама с глазами, как льдинки, смотрит в небо задумчивым взглядом.

BEGIN ~NWELTUR4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3

END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN DO ~  StartStore("NWELTUR2",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 3
END

