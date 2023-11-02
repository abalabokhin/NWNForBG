// Северная дорога, Зеленый_Грифон Сержант Лускана

BEGIN ~NWLUSKAT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWGoToLuskan","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("NWGoToLuskan","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWGoToLuskan","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY @10
  IF ~~ THEN EXIT
END
