// Чернозерье Зоопарк Змея

BEGIN ~NWSNAKE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Змея злобно шипит и готовится к броску. Было бы разумно оставить ее в покое.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY ~Змея злобно шипит и готовится к броску. Ее уже не остановить.~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

