// Форт-Илкард: казармы поселенцев Поселенец Эта женщина - одна из поселенцев, которые были призваны в армию для защиты форта Илкард.

BEGIN ~SETTLERW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~Как можно было мне в этом запутаться? Я даже не знаю толком, как мечом махать!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~Я умоляла командира Дамаса отпустить меня, проверить как там мое хозяйство, но у него каменное сердце.~
  IF ~~ THEN EXIT
END

