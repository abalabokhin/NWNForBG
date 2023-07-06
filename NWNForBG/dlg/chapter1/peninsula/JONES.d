// Полуостров Дом с могилой Джонс Человек   Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~JONES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Trigger1308","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("NWNChapter","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("OleffQuest","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @11
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @10
  IF ~~ THEN DO ~SetGlobal("Trigger1308","MYAREA",1)TriggerActivation("To1308",TRUE)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Trigger1308","MYAREA",0)~ THEN BEGIN 8 // from:
  SAY @13
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @11
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

