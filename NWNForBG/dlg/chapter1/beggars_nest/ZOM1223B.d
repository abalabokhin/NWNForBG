// Гнездо нищих Лабиринты Проклятых Зомби
BEGIN ~ZOM1223B~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY ~Вы присоединитесь к моим легионам смерти! У меня были видения! Чешуйчатые будут здесь править! Я захвачу все!~ [GULNAN51]
  IF ~~ THEN DO ~Wait(1)Kill(Myself)~ EXIT
END

