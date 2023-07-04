// Центр Невервинтера   Маска Лунного Камня  Терен Мирниман Человек, Эта женщина - одна из многих беженцев, спасающихся от надвигающейся орды Лускана.

BEGIN ~TERENNW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Вы слышали все эти истории о том, что солдаты Лускана делают с пленными? Наверное, было бы лучше, если бы мне пришлось умереть от чумы!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Раньше меня восхищала Арибет, но ее предательство обрекло нас всех на гибель! Надеюсь, она будет гореть в Девяти Преисподних за то, что она сделала!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Вы - тот самый герой, который спас нас от Воющей Смерти! Вы здесь, чтобы еще раз спасти город, или вы просто попались в ловушку, как и все остальные?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Солдаты недолго смогут удерживать центр города! Скоро враг прорвется, и нас всех поубивают!!!~
  IF ~~ THEN EXIT
END

