// Лунный лес подземелье драконов Синий дракон  Синие драконы тщеславны и территориальны. Они предпочитают охотиться в безоблачные дни, когда их синяя чешуя позволяет сливаться с открытым небом.

BEGIN ~NWDRACO5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Голодный. Еда. Еда? Голодный.~
  IF ~~ THEN REPLY ~Кто вы? Что вы тут делаете?~ GOTO 1
  IF ~~ THEN REPLY ~Готовься к смерти, червь!~ GOTO 1
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Еда? Накорми меня. Голодный. Еда?~
  IF ~~ THEN REPLY ~Мда, по-моему, у тебя только одна извилина.~ GOTO 3
  IF ~~ THEN REPLY ~Ты не слишком умен для дракона, да?~ GOTO 3
  IF ~~ THEN REPLY ~Ладно, я накормлю тебя. Где твоя еда?~ GOTO 4
  IF ~~ THEN REPLY ~Надо было сразу сжалиться и убить тебя.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY ~Голодный. Еда. Голодный.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Голодный! Еда! Еда! Еда!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Еда? Еда? Голодный. Еда?~
  IF ~~ THEN REPLY ~Совершенно ясно, что с тобой что-то не в порядке. Я лучше пойду.~ GOTO 2
  IF ~~ THEN REPLY ~В первый раз вижу такого тупого дракона! Я ухожу отсюда!~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 2
END

