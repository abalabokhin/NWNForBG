// Центр Невервинтера  Зал ритуала   Жрец Тира  Этот преданный жрец Тира с гордостью носит символ своей веры.

BEGIN ~NWPRIEST~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Этот жрец находится в глубокой медитации, готовясь к ритуалу. Он вас игнорирует.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Этого жреца до сих пор трясет от того, что только что произошло. Ему не удается выразить свои чувства словами.~
  IF ~~ THEN EXIT
END

