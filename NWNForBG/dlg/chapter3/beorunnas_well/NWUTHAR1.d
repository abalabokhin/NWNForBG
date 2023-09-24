// Колодец Беорунна: улица Член племени Утгардтов Мужчина Метки на одежде этого мужчины говорят о том, что он - варвар из утгардтского племени Черного Льва.

BEGIN ~NWUTHAR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)Global("RolganConvicted","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

