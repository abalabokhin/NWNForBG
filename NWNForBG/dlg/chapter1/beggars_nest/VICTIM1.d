// Гнездо нищих Горожанин Человек Женщина Заданий нет Эта женщина, очевидно, расстроена. Судя по ее изможденному виду, чума перевернула ее жизнь с ног на голову.

BEGIN ~VICTIM1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Не приближайтесь ко мне.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Как боги могут быть настолько жестоки.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Пожалуйста, не причиняйте мне вреда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Я не хочу умирать.~
  IF ~~ THEN EXIT
END

