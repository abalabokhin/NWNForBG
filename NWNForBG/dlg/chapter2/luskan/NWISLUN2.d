// Ћускан ƒвор Ѕашни ’оз€ина ќхранник

BEGIN ~NWISLUN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

