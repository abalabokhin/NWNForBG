// Чернозерье Голая Доска Служанка   Человек Обычная служанка в таверне. Она выглядит очень уставшей от того, что приходится все время обслуживаться клиентов, хотя снаружи, похоже, близится конец света.

BEGIN ~NWHANDMD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(4)Global("NWArena","GLOBAL",1)Global("NWArena","GLOBAL",2)Global("NWArena","GLOBAL",3)PartyHasItem("Nwkey05")~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWArena","GLOBAL",0)!PartyHasItem("Nwkey05")~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

