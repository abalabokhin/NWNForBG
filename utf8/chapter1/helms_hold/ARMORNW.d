// Глава_1 Крепость Хельма Доспех Стража Это оживленный доспех, украшенный знаками Хельма Бдительного, бога стражей и хранителей.

BEGIN ~ARMORNW~

IF ~  Global("ArmorQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Судя по виду, эти оживленные доспехи готовы к бою, однако они не двигаются. Они пристально смотрят на алтарь в центре зала.~
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("ArmorQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Под твоим командованием мы отправляемся на битву с врагами Хельма.~
  IF ~~ THEN DO ~SetGlobal("ArmorQuest","GLOBAL",3)~ EXIT
END

