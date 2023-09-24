// Чернозерье Зоопарк   Лорд Элдан   Стареющий аристократ, который живет своими прежними подвигами.

// DysplayString

// Пора уходить. У стражников есть приказ... "Разбираться" с любым, кто попробует забраться в служебные помещения.

BEGIN ~NWELDAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN EXIT
END

