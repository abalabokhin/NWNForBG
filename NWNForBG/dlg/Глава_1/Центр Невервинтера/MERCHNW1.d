// Центр Невервинтера  Торговец Это один из многочисленных торговцев Невервинтера. Чума не пощадила торговлю, но они все равно пытаются сохранить широкий ассортимент.

BEGIN ~MERCHNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Подходите! У меня есть именно то, что вы ищете. Мой магазин не тот, что раньше, но, тем не менее, я все еще торговец.~
  IF ~~ THEN REPLY ~Я хочу взглянуть на ваши товары.~ DO ~StartStore("Merchnw1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

