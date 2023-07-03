// Лускан Подмигни и ущипни, 2-й уровень Благородный посетитель Этот господин выглядит так, словно он бессчетное количество раз пользовался услугами этого заведения в прошлом.

BEGIN ~CUSTOM12~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Убирайся отсюда!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 1 // from:
  SAY ~Эй! Это мое время! Подожди своего!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 2 // from:
  SAY ~Нельзя оставить человека в покое? Найди себе другою девушку!~
  IF ~~ THEN EXIT
END

