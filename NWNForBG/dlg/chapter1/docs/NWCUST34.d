// Доки Невервинтера Золотое яблоко клиент Человек мужчина Заданий нет Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.

BEGIN ~NWCUST34~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Class(Player1,MAGE_ALL)~ THEN BEGIN 7 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Class(Player1,CLERIC_ALL)~ THEN BEGIN 8 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)!Class(Player1,CLERIC_ALL)!Class(Player1,MAGE_ALL)~ THEN BEGIN 9 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)~ THEN BEGIN 10 // from:
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)~ THEN BEGIN 11 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)~ THEN BEGIN 12 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,11)~ THEN BEGIN 13 // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,12)~ THEN BEGIN 14 // from:
  SAY @13
  IF ~~ THEN EXIT
END

