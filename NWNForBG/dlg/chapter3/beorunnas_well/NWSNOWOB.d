// Колодец Беорунна: Бар 2 этаж, Снежный шар

BEGIN ~NWSNOWOB~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SaveGame(0)ClearAllActions()StartCutSceneMode()StartCutScene("NWTOORB")~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

