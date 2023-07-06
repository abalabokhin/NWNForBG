// Гнездо нищих Таверна Сияющий Змей Завсегдатай Человек Мужчина Заданий нет Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.
BEGIN ~PATRON1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,11)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,12)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY @13
  IF ~~ THEN EXIT
END

