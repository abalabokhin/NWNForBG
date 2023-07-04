// Северная дорога, пещеры гоблинов и орков - Гоблин

BEGIN ~GOBLIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~Мы говорим, мы не сражаемся с тобой. Так что мой не говорит, нет. Ты говори с вождем.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~Наша не убивать твоя, друг <RACE>. Говорить с вождь.~
  IF ~~ THEN EXIT
END
