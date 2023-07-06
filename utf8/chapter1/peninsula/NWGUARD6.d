// Полуостров Стражник в штаб-квартире ополчения

BEGIN ~NWGUARD6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Мне нечего сказать, поговорите с Седос.~
  IF ~~ THEN EXIT
END

