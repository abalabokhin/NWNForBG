// Чернозерье Хозяин загона   Этот вольнонаемный охранник холодно смотрит на вас. Таких особенно ценят за их крайнюю жестокость. Похоже, он вполне способен постоять за себя, если возникнет необходимость.

BEGIN ~ZOOGUARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Вам нельзя здесь находиться, это служебные помещения. Вернитесь в зал с животными.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Уйдите, это служебные помещения. В противном случае вам не поздоровится.~
  IF ~~ THEN EXIT
END

