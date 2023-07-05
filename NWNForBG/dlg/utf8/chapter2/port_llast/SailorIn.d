// Порт-Лласт Таверна Моряк Заданий нет

BEGIN ~SAILORIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Надо тебя пошадить на кол, на шлучай, ешли ты волколак... или так ш мумиями делают? (вздыхает) Надо ешшо пива.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Мамуля вшегда говорила, што поишки прключений - дуратшкая игра. Пошмотреть токо на тебя - шейчаш опрокинешься. (ик) Ой! Шо-то пол качаетша.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Ж-жаешь, не пйми мня непрально, но люди вроде наш ш тобой шожданы для жижни матрошов. Я тте говорю. Тут думать не о чем, ежли ты - ик! - пнимаешь, о чем я.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Я шкажал, жижнь матроша как раж по мне - йо-хо-хо, йо-ха-ха.~
  IF ~~ THEN EXIT
END
