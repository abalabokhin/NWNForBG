// Центр Невервинтера   Сердце города  Страж замка Невервинтер Человек, мужчина  Это один из многих солдат, которые еще сражаются, чтобы спасти Невервинтер.

BEGIN ~NWMAN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Сначала Воющая Смерть, а теперь захватчики из Лускана... Кажется, что Невервинтер кто-то проклял!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Солдаты, которые выжили в битве за южную часть города, говорят, что лусканцы не берут пленных! Они убьют нас всех, когда доберутся сюда!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Вы - тот самый герой, который спас нас от Воющей Смерти! Вы здесь, чтобы еще раз спасти город, или вы просто попались в ловушку, как и все остальные?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Солдаты недолго еще смогут удерживать центр города! Скоро враг прорвется, и нас всех поубивают!!!~
  IF ~~ THEN EXIT
END

