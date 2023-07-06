// Чернозерье Хозяин загона   Этот вольнонаемный охранник холодно смотрит на вас. Таких особенно ценят за их крайнюю жестокость. Похоже, он вполне способен постоять за себя, если возникнет необходимость.

BEGIN ~ZOOGUARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN EXIT
END

