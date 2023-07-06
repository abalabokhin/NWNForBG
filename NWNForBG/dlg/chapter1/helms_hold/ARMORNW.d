// Глава_1 Крепость Хельма Доспех Стража Это оживленный доспех, украшенный знаками Хельма Бдительного, бога стражей и хранителей.

BEGIN ~ARMORNW~

IF ~  Global("ArmorQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("ArmorQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~SetGlobal("ArmorQuest","GLOBAL",3)~ EXIT
END

