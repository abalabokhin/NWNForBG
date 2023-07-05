// Восточная дорога, Руины рас созидателей уровень 3, Голем.

BEGIN ~GOLEM3~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Две печати были пройдены. Я защищу третью ценой своей жизни. Умри, чужак!~
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END
