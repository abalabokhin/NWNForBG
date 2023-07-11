// Центр города Маска Лунного Камня   Люс   Человек   Люс сидит в своем маленьком уголке и не шевелится.

BEGIN ~LUCE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("LuceJob","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @19
  IF ~  Dead("Lees")~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY @21
  IF ~~ THEN DO ~SetGlobal("LuceJob","GLOBAL",1)~ UNSOLVED_JOURNAL @22 EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY @23
  IF ~~ THEN DO ~EraseJournalEntry(@22)EraseJournalEntry(@37)~ SOLVED_JOURNAL @24 GOTO 2
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~ Global("LuceJob","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY @25
  IF ~  Dead("Lees")~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @26 GOTO 9
  IF ~~ THEN REPLY @27 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @28
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~ Global("LuceJob","GLOBAL",2)~ THEN BEGIN 13 // from:
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("LuceJob","GLOBAL",3)GiveItemCreate("CLCKNW5",LastTalkedToBy,1,1,1)EraseJournalEntry(@22)EraseJournalEntry(@37)~ SOLVED_JOURNAL @33 EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @34
  IF ~~ THEN DO ~SetGlobal("LuceJob","GLOBAL",3)AddexperienceParty(80000)EraseJournalEntry(@22)EraseJournalEntry(@37)~ SOLVED_JOURNAL @33 EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~ Global("LuceJob","GLOBAL",3)~ THEN BEGIN 16 // from:
  SAY @35
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @36
  IF ~~ THEN EXIT
END

