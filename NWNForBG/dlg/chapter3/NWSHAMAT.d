// Форт Илкард Крепость племени Лося Шаман племени Лося, Метки на одежде этой женщины говорят о том, что она - шаманка племени Лосей из Утгардта.

BEGIN ~NWSHAMAT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("NWCoverlet","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWCoverlet","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NWZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~~ THEN EXIT
END

