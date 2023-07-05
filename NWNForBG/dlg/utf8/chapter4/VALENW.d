// Центр Невервинтера   Маска Лунного Камня  Вэйл Рэйер Человек, мужчина  Этот мужчина - один из многих беженцев, спасающихся от надвигающейся орды Лускана.

BEGIN ~VALENW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Я думаю, что город обречен, так что хочу провести свои последние дни здесь, в Маске Лунного Камня... У меня полно счастливых воспоминаний об этом месте.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Говорю вам, Офала и ее девочки - просто ангелы! Прекрасные ангелы, которые заботятся о раненых и умирающих в этом месте.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Что такой герой, как вы, делает в Маске Лунного Камня вместо того, чтобы биться с армией Лускана в южной части города?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Вы только посмотрите, сколько здесь раненых! Мне говорили, большинство из них пытались защитить южную часть города.~
  IF ~~ THEN EXIT
END

