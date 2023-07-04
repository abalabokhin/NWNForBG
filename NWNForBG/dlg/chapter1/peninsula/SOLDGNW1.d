// Полуостров Солдат у ворот   Это эльф-стражник, по его лицу можно прочитать напряжение, обрушившееся на него и его товарищей из городской стражи в эти тяжелые времена.

BEGIN ~SOLDGNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Вы должны поговорить с моим командиром.~
  IF ~~ THEN EXIT
END

