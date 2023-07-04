// Лускан Тесак Ребенок-беженец  Похоже, этот бедный ребенок очень давно не ел как следует и не получал новой одежды.

BEGIN ~CUSTOM18~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 0 // from:
  SAY ~Все! Хана тебе!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 1 // from:
  SAY ~Мамочка сказала, надо оставаться здесь, а иначе мы умрем.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 2 // from:
  SAY ~Капитан Курт - ужасная злюка! Он ударил Билли.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 3 // from:
  SAY ~Я не могу пойти домой потому что мой дом сгорел.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 4 // from:
  SAY ~Война это здорово, потому что можно не ложиться рано спать!~
  IF ~~ THEN EXIT
END 

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 5 // from:
  SAY ~От капитана Барама пахнет канализацией. Если ты ему об этом скажешь, он разозлится.~
  IF ~~ THEN EXIT
END

