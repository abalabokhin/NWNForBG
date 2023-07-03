// Форт Илкард Руины Расы Созидателей Раб во времени. Это существо колеблется на грани существования.  Slave in time 

BEGIN ~SLAVETIM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Похоже, это видение не может общаться с вами.~
  IF ~~ THEN EXIT
END

