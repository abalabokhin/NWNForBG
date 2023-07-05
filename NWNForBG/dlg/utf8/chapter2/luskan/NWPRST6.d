// Лускан  Храм Тира  Служитель Тира  Этот человек очень нервный и резкий: работа в Лускане часто делает людей такими.

BEGIN ~NWPRST6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Да ниспошлет на вас Тир покой и справедливость.~
  IF ~~ THEN EXIT
END

