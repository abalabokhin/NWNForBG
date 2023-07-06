// Центр Невервинтера  Феб человек женщина из гнезла нищих.  Эта женщина, очевидно, расстроена. Судя по ее изможденному виду, чума перевернула ее жизнь с ног на голову.

BEGIN ~PHOEBE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN 0 // from:
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

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)RandomNum(2,2)~ THEN BEGIN 5 // from:
  SAY @7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @8
  IF ~~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

