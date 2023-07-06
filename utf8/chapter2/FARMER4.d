// Южная дорога 2  Жена фермера 1 Заданий нет

BEGIN ~FARMER4~

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,2)~ THEN BEGIN 0 // from:
  SAY ~Вам лучше поговорить с моим мужем, если хотите разузнать, что здесь творится в округе.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,3)~ THEN BEGIN 2 // from:
  SAY ~Вы, наверное, путешественники, да? Послушайте, что я Вам расскажу! В молодости мне так хотелось стать путешественницей.  Эх...~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,4)~ THEN BEGIN 3 // from:
  SAY ~Моя сестра должна была прибыть из Лускана уже несколько дней назад. Надеюсь, она скоро будет здесь. ~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,5)~ THEN BEGIN 4 // from:
  SAY ~Я бы дала тебе пару кулинарных уроков, но бродяги вроде тебя подолгу на одном месте не эадерживаются.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,6)~ THEN BEGIN 5 // from:
  SAY ~Ох! Вы напугали меня. Не привыкла встречать незнакомцев, ведь путешествовать нынче опасно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,7)~ THEN BEGIN 6 // from:
  SAY ~Я надеюсь, погода вскорости переменится. Без хорошего урожая нам тяжело придется.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,1)~ THEN BEGIN 7 // from:
  SAY ~Ты выглядишь вроде неплохо, но у меня муж скоро придет, так что извиняюсь.~ ~Я вообще-то занята! Вам что-то нужно? Если нет, то оставьте меня в покое, ладно?~
  IF ~~ THEN EXIT
END
