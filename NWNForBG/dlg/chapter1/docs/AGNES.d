// Доки Агнес  Мастерсон   Эта женщина отвечает вам холодным взглядом, полностью отторгая ваше присутствие. Она явно не намерена с вами разговаривать.

BEGIN ~AGNES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~Мне нечего вам сказать. Поговорите с моим мужем.~
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~Хеммел - такой ребенок. Он будет годами стоять здесь и ждать, когда же ему вернут наследственную реликвию. Пф!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: HEMMEL 0
  SAY ~Забыл? Я ГОВОРИЛА тебе, что ему нельзя доверять.~
  IF ~~ THEN EXTERN ~HEMMEL~ 2
END

IF ~~ THEN BEGIN 3 // from: HEMMEL 4
  SAY ~Хеммел, я могу сколько угодно клясться, что ты умен, но от этого ты умнее не станешь.~
  IF ~~ THEN REPLY ~Кто был этот человек?~ EXTERN ~HEMMEL~ 10
  IF ~~ THEN REPLY ~Вы заплатили этим амулетом?~ EXTERN ~HEMMEL~ 17
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ EXTERN ~HEMMEL~ 18
  IF ~~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: HEMMEL 6
  SAY ~О, чудесно, Хеммел. Так ты распрощаешься с фамильным амулетом Мастерсонов.~
  IF ~~ THEN EXTERN ~HEMMEL~ 12
END

IF ~~ THEN BEGIN 5 // from: 3.4
  SAY ~Пожалуйста, надеюсь, ты передумаешь. Этот Каллик воспользовался мной, и я ничего не могу сделать, кроме того, как подсказать тебе, где он.~
  IF ~~ THEN EXTERN ~HEMMEL~ 19
END

IF ~~ THEN BEGIN 6 // from: HEMMEL 5
  SAY ~И корабль тоже наверняка краденый. Правда, Хеммел, как ты мог вести себя так глупо.~
  IF ~~ THEN EXTERN ~HEMMEL~ 21
END

IF ~~ THEN BEGIN 7 // from: HEMMEL 17
  SAY ~Я говорила тебе, что это просто хитрость. Но этот Каллик раздавал свои завуалированные обещания, а ты был готов отдать ему все.~
  IF ~~ THEN EXTERN ~HEMMEL~ 23
END

IF ~~ THEN BEGIN 8 // from: HEMMEL 26
  SAY ~Только потому, что ты слишком большой трус, чтобы пользоваться им, Хеммел.~
  IF ~~ THEN EXTERN ~HEMMEL~ 27
END


