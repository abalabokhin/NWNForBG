// Форт Илкард, Волшебник Союза Лордов. Это один из многих волшебников, которые сражаются вместе с солдатами Союза Лордов.

BEGIN ~FORTMAGE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

