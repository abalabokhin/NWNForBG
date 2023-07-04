// Порт-Лласт Казармы Кендрака Наемник Заданий нет

BEGIN ~MERCENAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 0 // from:
  SAY ~Много невинных людей погибло от этой чумы. Культ должен заплатить!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 1 // from:
  SAY ~Я надеюсь, вы найдете этот культ и убьете их всех!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 2 // from:
  SAY ~Наконец-то истинный герой, что поможет нам наказать этих сектантов! Они пожалеют, что встретили вас!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 3 // from:
  SAY ~У меня были друзья, которые умерли от Воющей Смерти, и я собираюсь убить всех сектантов, которых встречу... медленно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 4 // from:
  SAY ~Члены культа проклянут тот день, когда связались с Невервинтером!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 5 // from:
  SAY ~Увидев столько боли и страдания в Невервинтере, я не могу думать ни о чем, кроме мести. Культ должен быть уничтожен!~
  IF ~~ THEN EXIT
END
