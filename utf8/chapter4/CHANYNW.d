// Центр Невервинтера   Маска Лунного Камня  Чани Вэйнольт Человек, Эта женщина - одна из многих беженцев, спасающихся от надвигающейся орды Лускана.

BEGIN ~CHANYNW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Никогда бы не подумала, что смогу прийти в такое место, но когда лусканцы сожгли мой дом, оказалось, что мне больше некуда идти. А этот юноша, Танит, который здесь работает, такой красивый...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Раньше мне совершенно не нравились люди, которые работают здесь, но, похоже, это неправильно. По крайней мере, Офала и ее девочки и впрямь приносят некоторое облегчение умирающим солдатам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Я знаю - вы спасли всех от Воющей Смерти! И от захватчиков из Лускана вы нас тоже спасете, да?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Вы только посмотрите, сколько здесь раненых. Мне говорили, большинство из них пытались защитить южную часть города.~
  IF ~~ THEN EXIT
END

