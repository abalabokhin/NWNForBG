// Невервинтер Чернозерье Зритель Хоть этот человек и выглядит озабоченным, его лицо не выглядит так измождено, как лица жителей других кварталов. Его, изолированного в Чернозерье, чума напрямую не коснулась.

BEGIN ~NWLISTER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)!Race(LastTalkedToBy(Myself),DWARF)!Race(LastTalkedToBy(Myself),HALFORC)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)OR(2)Race(LastTalkedToBy(Myself),DWARF)Race(LastTalkedToBy(Myself),HALFORC)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)!Dead("NWMELDAN")~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)Dead("NWMELDAN")~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Dead("NWFORMOA")~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)!Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)!Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 8 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 9 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)Dead("NWFORMOA")~ THEN BEGIN 10 // from:
  SAY @9
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)Dead("NWFORMOA")~ THEN BEGIN 11 // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)!Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 12 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 13 // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)Dead("NWFORMOA")~ THEN BEGIN 14 // from:
  SAY @13
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)!Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 15 // from:
  SAY @14
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)Dead("NWMELDAN")!Dead("NWFORMOA")~ THEN BEGIN 16 // from:
  SAY @15
  IF ~~ THEN EXIT
END

IF WEIGHT #17 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)~ THEN BEGIN 17 // from:
  SAY @16
  IF ~~ THEN EXIT
END

