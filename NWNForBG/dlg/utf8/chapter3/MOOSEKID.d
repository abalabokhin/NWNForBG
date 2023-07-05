// Крепость племени Лося, Ребенок из племени Лося. Это ребенок из племени Лосей из Утгардта.

BEGIN ~MOOSEKID~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Я вас знаю! Моя мама говорит, из-за вас всем больным стало лучше.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY ~Мне плохо. Я хочу маму.~
  IF ~~ THEN EXIT
END

