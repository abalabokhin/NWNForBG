// Центр Невервинтера  Борлан - просит очистить Гнездо нищих. Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~NWBORLAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWBeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWBeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @8
  IF ~  Global("MyQuest","LOCALS",0)~ THEN DO ~AddexperienceParty(4000)EscapeArea()~ EXIT
  IF ~  Global("MyQuest","LOCALS",1)~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

