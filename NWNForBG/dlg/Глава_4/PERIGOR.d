// Сердце города Зал Справедливости  Перигор Шва Человек  Этот мужчина - один из многих беженцев, спасающихся от надвигающейся орды Лускана.

BEGIN ~PERIGOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Это место и так переполнено, но Олефф никого не прогонит. А теперь, когда южная часть города взята, беженцы так и будут стекаться сюда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Мне казалось, что храм это подходящее место, куда можно прийти после того, как армия Лускана сожгла мой дом. Но, возможно, стоило пойти в Маску Лунного Камня... Тамошние девушки всегда были добры ко мне.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Эй, а я вас знаю! Вы тот самый герой, который спас нас всех от Воющей Смерти! Вы здесь, чтобы еще раз спасти город, или вы просто попались в ловушку, как и все остальные?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Здешние солдаты говорят, что в армии Лускана не берут пленных. Они убьют нас всех, как только проломят южные ворота!~
  IF ~~ THEN EXIT
END

