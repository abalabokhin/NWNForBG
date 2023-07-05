// Лускан Подмигни и ущипни, 2-й уровень Куртизанка Лицо этой молодой прекрасной куртизанки усталое, но как только она замечает, что кто-то смотрит на нее, она тут же становится веселой и внимательной.

BEGIN ~ESCORT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Тебе придется подождать своей очереди, дорогуша. Выходи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 1 // from:
  SAY ~Тебя что, приглашали в мою комнату? Не приглашали. Пожалуйста, уходите.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 2 // from:
  SAY ~Что вы делаете, зачем пришли?! Вон отсюда! Вон!!!~
  IF ~~ THEN EXIT
END

