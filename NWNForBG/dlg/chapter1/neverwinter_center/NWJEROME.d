// Центр Невервинтера  Иероним Карлик  - просит очистить Доки.  Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~NWJEROME~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)!Class(Player1,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @3 DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @7
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)Class(Player1,THIEF_ALL)~ THEN BEGIN 5 // from:
  SAY @8
  IF ~~ THEN GOTO 1
END

// --------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @9
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @10
  IF ~  Global("MyQuest","LOCALS",0)~ THEN DO ~AddexperienceParty(4000)EscapeArea()~ EXIT
  IF ~  Global("MyQuest","LOCALS",1)~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

