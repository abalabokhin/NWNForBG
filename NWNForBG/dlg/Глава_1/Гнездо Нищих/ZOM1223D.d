// Гнездо нищих Лабиринты Проклятых Зомби
BEGIN ~ZOM1223D~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 3 // from:
  SAY ~Вы не можете отрицать, что чешуйчатые будут править миром! Видите мою силу?! Она невероятна, больше, чем у самого Мерршаулка!~ [GULNAN53]
  IF ~~ THEN DO ~Wait(1)Kill(Myself)~ EXIT
END

