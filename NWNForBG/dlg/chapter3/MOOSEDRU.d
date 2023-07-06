// Крепость племени Лося, Друид племени Лося. У этого человека есть племенные знаки Лосей из Утгардта.

BEGIN ~MOOSEDRU~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)!Dead("Zokan")~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

