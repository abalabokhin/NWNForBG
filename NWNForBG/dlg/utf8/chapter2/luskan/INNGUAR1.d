// Лускан Тесак Страж "Тесака"  Этот стражник выполняет свой долг учтиво, но твердо.

BEGIN ~INNGUAR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Мы не хотим, чтобы сражения с улиц просочились и сюда, понимаете? Не создавайте никаких проблем, и все будет в порядке.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 1 // from:
  SAY ~Если у вас есть вопросы, обратитесь к мистеру Громовому Кулаку. Он владелец таверны.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 2 // from:
  SAY ~Эти люди здесь лишь потому, что здесь безопасно. А моя работа - смотреть, чтобы тут на них никто не напал.~
  IF ~~ THEN EXIT
END

