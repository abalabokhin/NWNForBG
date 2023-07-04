// Форт Илкард, Арбалетчик форта Илкард. Это один из многих солдат, защищающих форт Илкард.

BEGIN ~FORTBOW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Мне нужно вернуться к своим делам.~
  IF ~~ THEN EXIT
END

