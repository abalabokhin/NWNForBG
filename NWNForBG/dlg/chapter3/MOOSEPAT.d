// Форт Илкард Крепость племени Лося Патрульный племени Лося, Метки на одежде этого мужчины говорят о том, что он - воин племени Лосей из Утгардта.

BEGIN ~MOOSEPAT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Проходите.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Я живу ради охоты... а не ради этой... скуки.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Посторонний!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Скоро мои братья и сестры набросятся на тебя. Твоя смерть неизбежна, чужак...~
  IF ~~ THEN EXIT
END

