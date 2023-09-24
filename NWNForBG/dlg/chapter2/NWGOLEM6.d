// Восточная дорога, Руины рас созидателей уровень 3, Голем.

BEGIN ~NWGOLEM6~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END
