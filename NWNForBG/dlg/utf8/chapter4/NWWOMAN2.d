// Центр Невервинтера   Сердце города  Страж замка Невервинтер Человек, мужчина  Это один из многих солдат, которые еще сражаются, чтобы спасти Невервинтер.

BEGIN ~NWWOMAN2~

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
  SAY ~Вся южная часть города занята врагом. Городской центр - единственное безопасное место в Невервинтере... Пока.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Вы - тот самый герой, который спас нас от Воющей Смерти! Вы здесь, чтобы еще раз спасти город, или вы просто попались в ловушку, как и все остальные?~
  IF ~~ THEN EXIT
END

