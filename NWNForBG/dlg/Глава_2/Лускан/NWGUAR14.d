// Невервинтер Чернозерье Голая Доска  Завсегдатай Непримечательный посетитель, который пытается расслабиться. Хотя тут довольно много бойцов.

BEGIN ~NWGUAR14~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 0 // from:
  SAY ~Это поместье лорда Джедейла. Непрошенным гостям здесь делать нечего.  Уходите немедленно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 1 // from:
  SAY ~Если вы пришли к лорду  Джедейлу, то он сейчас в отъезде, приходите в другой день.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 2 // from:
  SAY ~Убирайтесь, таким как вы здесь делать нечего.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 3 // from:
  SAY ~Лорда Джедейла сейчас нет, а леди Джадейл никого не принимает.~
  IF ~~ THEN EXIT
END

