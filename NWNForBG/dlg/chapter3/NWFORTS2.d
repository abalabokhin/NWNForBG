// Форт Илкард, Рыцарь. Этот мужчина - один из защитников форта Илкард.

BEGIN ~NWFORTS2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GuardsKnowPlayer","MYAREA",1)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GuardsKnowPlayer","MYAREA",0)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("GuardsKnowPlayer","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @7
  IF ~~ THEN DO ~Shout(HELPME)Enemy()~ EXIT
END

