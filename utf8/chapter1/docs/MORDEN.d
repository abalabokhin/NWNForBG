// Доки Морден - слуга  Мастерсонов   Чопорный дворецкий, которому, похоже, совсем не нравится в порту.

BEGIN ~MORDEN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Хозяин очень привязан к своим... вещам.~
  IF ~~ THEN EXIT
END

