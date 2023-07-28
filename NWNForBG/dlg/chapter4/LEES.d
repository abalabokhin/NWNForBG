// Зона военных действий   Лииса   девочка   Эта маленькая девочка смотрится очень странно посреди опустошенного войной города.

// Спасибо за то, что тебе удалось найти меня. Здесь намного теплее. На улицах все время приходилось мерзнуть.

// Здесь тепло. А на улицах всегда было холодно. [LEES050]

// У нас получилось! У нас получилось! Я снова буду со своей сестрой Люс! [LEES054]

BEGIN ~LEES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("LeesQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("LuceJob","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~  GlobalGT("LuceJob","GLOBAL",0)~ THEN REPLY @7 GOTO 6
  IF ~  Global("LuceJob","GLOBAL",0)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~  GlobalGT("LuceJob","GLOBAL",0)~ THEN REPLY @7 GOTO 6
  IF ~  Global("LuceJob","GLOBAL",0)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~  GlobalGT("LuceJob","GLOBAL",0)~ THEN REPLY @7 GOTO 6
  IF ~  Global("LuceJob","GLOBAL",0)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @11
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),15)SetGlobal("LeesQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("LeesQuest","GLOBAL",1)EscapeArea()~ UNSOLVED_JOURNAL @1074441 EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @14
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @15 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @8 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("LeesQuest","GLOBAL",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @18
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~ Global("LeesQuest","GLOBAL",9)~ THEN BEGIN 11 // from:
  SAY @19
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @20
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~ RandomNum(2,1)GlobalGT("LeesQuest","GLOBAL",0)!Global("LeesQuest","GLOBAL",9)~ THEN BEGIN 13 // from:
  SAY @21
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~ RandomNum(2,2)GlobalGT("LeesQuest","GLOBAL",0)!Global("LeesQuest","GLOBAL",9)~ THEN BEGIN 11 // from:
  SAY @22
  IF ~~ THEN EXIT
END

