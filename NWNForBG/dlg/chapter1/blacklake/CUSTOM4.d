// Невервинтер Чернозерье Голая Доска  Завсегдатай Непримечательный посетитель, который пытается расслабиться. Хотя тут довольно много бойцов.

BEGIN ~CUSTOM4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 9 // from:
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY @11
  IF ~~ THEN EXIT
END

