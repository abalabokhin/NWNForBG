// Лускан Двор Башни Хозяина Охранник

BEGIN ~ISLUND2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Если вам что-то нужно, обращайтесь к капитану..~
  IF ~~ THEN EXIT
END

