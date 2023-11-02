// Центр Невервинтера  Лидия полурослик женщина из гнезла нищих.  Эта женщина, очевидно, расстроена. Судя по ее изможденному виду, чума перевернула ее жизнь с ног на голову.

BEGIN ~NWLYDIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWBeggarsNestDone","GLOBAL",0)RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @6
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWBeggarsNestDone","GLOBAL",0)RandomNum(3,2)~ THEN BEGIN 4 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWBeggarsNestDone","GLOBAL",0)RandomNum(3,3)~ THEN BEGIN 5 // from:
  SAY @7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @8
  IF ~~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

