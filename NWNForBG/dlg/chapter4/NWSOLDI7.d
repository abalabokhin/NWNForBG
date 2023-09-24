// Центр Невервинтера Ярмарка Мечей   Солдат  Человек   Это один из многих солдат, которые еще сражаются, чтобы спасти Невервинтер.

BEGIN ~NWSOLDI7~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",0)Global("TrankarGolem","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",0)Global("TrankarGolem","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",1)Global("TrankarGolem","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TrankarCatapult","GLOBAL",1)Global("TrankarGolem","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @3
  IF ~~ THEN EXIT
END

