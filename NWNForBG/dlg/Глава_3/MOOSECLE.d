// Крепость племени Лося, Благочестивый из племени Лося. Эта женщина - член племени Лосей из Утгардта.

BEGIN ~MOOSECLE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Ты великий герой! Из поколения в поколение будет передаваться история о том, как ты спас людей Лося от Воющей Смерти.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY ~Мне очень жаль, но мне нужно сконцентрироваться на духах моих предков и молиться, чтобы они спасли нас от этой чумы.~
  IF ~~ THEN EXIT
END

