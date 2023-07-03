// „ернозерье «оопарк «ме€

BEGIN ~NWSNAKE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~«ме€ злобно шипит и готовитс€ к броску. Ѕыло бы разумно оставить ее в покое.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY ~«ме€ злобно шипит и готовитс€ к броску. ≈е уже не остановить.~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

