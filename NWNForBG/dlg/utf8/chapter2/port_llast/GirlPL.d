// Порт-Лласт Девочка

BEGIN ~GIRLPL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Моя мама говорит, что тут повсюду бродят преступники.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Моя мама говорит, что в Невервинтере все умерли.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~Вы выглядите смешно!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY ~Девочки лучше ма-альчиков!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY ~Игра моего брата в оборотней така-ая глу-упая!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY ~Мальчики играли в стражников и воров! Джимми играл в "Укради младенца", но не смог придумать ни одной хорошей загадки!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY ~Уходите от меня, я вас боюсь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)~ THEN BEGIN 7 // from:
  SAY ~Мальчишки играли в стражников и воров! Я их видела!~
  IF ~~ THEN EXIT
END
