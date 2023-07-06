// Форт Илкард логово орков, Ункас Челвек_Утгарт Метки на одежде этого мужчины говорят о том, что он - шаман племени Лосей из Утгардта.

BEGIN ~UNCAS~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN REPLY @2 GOTO 2
  IF ~  Dead("Zokan")~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Dead("Zokan")~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN DO ~AddexperienceParty(30000)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @12
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN REPLY @2 GOTO 2
  IF ~  Dead("Zokan")~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @13
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

