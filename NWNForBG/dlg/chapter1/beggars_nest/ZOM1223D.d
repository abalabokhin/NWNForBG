// Гнездо нищих Лабиринты Проклятых Зомби
BEGIN ~ZOM1223D~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 3 // from:
  SAY @0
  IF ~~ THEN DO ~Wait(1)Kill(Myself)~ EXIT
END

