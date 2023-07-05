// Чернозерье Зоопарк Салли   Этой девочке явно не очень нравится в зоопарке. Вид животных в клетках расстраивает ее.

BEGIN ~NWSALLY~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Мне здесь не нравится. Животным плохо. Я это чувствую. Может, я помогу им, когда вырасту.~
  IF ~~ THEN EXIT
END

