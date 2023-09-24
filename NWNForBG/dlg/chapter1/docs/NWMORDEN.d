// Доки Морден - слуга  Мастерсонов   Чопорный дворецкий, которому, похоже, совсем не нравится в порту.

BEGIN ~NWMORDEN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

