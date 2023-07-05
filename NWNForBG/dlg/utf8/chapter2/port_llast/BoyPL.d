// Порт-Лласт Мальчик Заданий нет

BEGIN ~BOYPL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,1)~ THEN BEGIN 0 // from:
  SAY ~Мне нельзя разговаривать с незнакомцами.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,2)~ THEN BEGIN 1 // from:
  SAY ~А ты знаешь леди Арибет? Она правда красавица?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,3)~ THEN BEGIN 2 // from:
  SAY ~Ты из Невервинтера? У вас там чума?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,4)~ THEN BEGIN 3 // from:
  SAY ~Папа говорит, Лускан скоро на нас нападет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,5)~ THEN BEGIN 4 // from:
  SAY ~Аааах! Каратис - оборотень!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,6)~ THEN BEGIN 5 // from:
  SAY ~Мы играем в оборотней!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(7,7)~ THEN BEGIN 6 // from:
  SAY ~Мой брат говорит, что здесь полно преступников и волков-оборотней, но вы наверняка им всем покажете.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: FARMWIF1
  SAY ~Сию минуту, ма.~
  IF ~~ THEN EXIT
END
