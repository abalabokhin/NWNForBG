// Невервинтер Святая святых Камня-Источника Мораг (проекция), Рептилоид  Даже на проекции видно, какая властная и жестокая эта Мораг, королева Древних.

// Убить теплокровных! Уничтожить рабов! [NWMORA70]

BEGIN ~NWMORAG3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN EXTERN ~NWANCIEC~ 1
END

IF ~~ THEN BEGIN 2 // from: NWANCIEC.1
  SAY @2
  IF ~~ THEN EXTERN ~NWANCIEC~ 2
END

IF ~~ THEN BEGIN 3 // from: NWANCIEC.2
  SAY @3
  IF ~~ THEN EXTERN ~NWANCIEC~ 3
END

IF ~~ THEN BEGIN 4 // from: NWANCIEC.3
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @5
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @6
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("LiizardHostile","MYAREA",1)ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

