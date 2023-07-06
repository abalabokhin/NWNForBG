// Сердце города Зал Справедливости  Дизил Гуин Гном, женщина  Гуин

BEGIN ~DIZIL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Мне едва удалось спасти свою жизнь, когда армия Лускана сожгла мой дом. Теперь я здесь, потому что мне больше некуда пойти.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Каждый день я молюсь Тиру о спасении душ солдат, которые пали у южных ворот.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Эй, а я вас знаю! Вы - тот самый герой, который спас нас всех от Воющей Смерти! Вы здесь, чтобы еще раз спасти город, или вы просто попались в ловушку, как и все остальные?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Здешние солдаты говорят, что в армии Лускана не берут пленных. Они убьют нас всех, как только проломят южные ворота!~
  IF ~~ THEN EXIT
END

