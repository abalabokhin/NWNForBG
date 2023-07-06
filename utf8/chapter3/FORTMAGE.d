// Форт Илкард, Волшебник Союза Лордов. Это один из многих волшебников, которые сражаются вместе с солдатами Союза Лордов.

BEGIN ~FORTMAGE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Скоро орды завоевателей захватят это место. А наши кости? Они станут пищей для падальщиков, вот и все.~
  IF ~~ THEN EXIT
END

