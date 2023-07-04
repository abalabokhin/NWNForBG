// Северная дорога, таверна Зеленый грифон, уровень 1 Знатный господин.

BEGIN ~NOBLEMAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Люди в здешних местах знать не знают, какого обращения заслуживает избранные <RACE>, знаете ли.~ ~Я богатый человек. И вы разбогатеете, если проведете со мной немного времени, моя леди.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Эй, ты, <RACE>, ты здесь, прислуживаешь, вроде. Принеси мне выпить.~ ~Неплохо выглядите, дамочка... хотите присоединиться ко мне?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~Дождаться не могу, когда же в Лускане откроют ворота. Мечтаю уйти отсюда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Отстаньте от меня, не то я напущу на вас слугу. Я здесь в ожидании открытия ворот, видите ли.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Сколько в этом грязном трактире бродяг из низших классов, просто сил нет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Ой, оставьте меня в покое. Не люблю, когда ко мне пристают такие, как вы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~(вздыхает) Что только людям не приходится делать, чтобы других развлекать... Лично я вернусь в Лускан, как только они откроют ворота.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~А вы идете в Лускан? Говорят в Лускане  от магов прямо не продохнуть, они все в Башне Хозяина собираются.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~Я не стану разговаривать с человеком, не одетым соответствующим образом!~ ~Боже, какая красотка! Иди сюда, посиди со мной, девочка!~
  IF ~~ THEN EXIT
END
