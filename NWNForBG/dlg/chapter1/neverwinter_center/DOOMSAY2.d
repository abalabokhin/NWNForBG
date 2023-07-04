// Центр Невервинтера Вещун - 4 шт.  Заданий нет

BEGIN ~DOOMSAY2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)~ THEN BEGIN 0 // from:
  SAY ~Примиритесь со своими богами! Как и Фалорм, что перед вами, мы все обречены!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 1 // from:
  SAY ~Воющая Смерть объявляет конец света!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 2 // from:
  SAY ~Скорбите о нераскаявшихся, ибо они будут повержены!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 3 // from:
  SAY ~Конец близок! Как и высокомерные из Нетерила, мы обратимся в прах!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 4 // from:
  SAY ~Смерть - вот цена, которую мы заплатим за свое высокомерие!~
  IF ~~ THEN EXIT
END
