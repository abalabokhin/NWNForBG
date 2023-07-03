// Лускан Каменная плита в логове Барама

BEGIN ~NWMESS1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Этот камень вибрирует от переполняющей его энергии. Кажется, он обеспечивают чему-то питание.~
  IF ~~ THEN EXIT
END

