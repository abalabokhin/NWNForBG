// Чернозерье Зоопарк Губерт   Несносный ребенок, который, искренне наслаждаясь, дразнит животных в клетках.

// DysplayString

// Ааа, я не хочу уходить! Хочу посмотреть, как стражники убьют кого-то за то, что он здесь так поздно!

BEGIN ~HUBERT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

