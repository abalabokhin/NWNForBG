// Колодец Беорунна: Бар 2 этаж, Снежный шар

BEGIN ~SNOWORB~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Вы хотите войти в снежный шар?~
  IF ~~ THEN REPLY ~Да~ DO ~SaveGame(0)ClearAllActions()StartCutSceneMode()StartCutScene("ToOrb")~ EXIT
  IF ~~ THEN REPLY ~Нет~ EXIT
END

