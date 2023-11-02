// Подвал Зеленого Грифона Распорядитель Джару  Этот энергичный эльф собирает деньги с тех, кто хочет принять участие в соревновании.

BEGIN ~NWJAROO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Vizited","LOCALS",0)GlobalLT("NWKnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("Vizited","LOCALS",1)~ EXIT
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Vizited","LOCALS",1)GlobalLT("NWKnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~  PartyGoldGT(999)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 5.1
  SAY @8
  IF ~~ THEN DO ~TakePartyGold(1000)SetGlobal("NWKnowsAboutMatch","GLOBAL",3)Unlock("Door1")OpenDoor("Door1")EraseJournalEntry(@97572)~ UNSOLVED_JOURNAL @97550 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3
  SAY @11
  IF ~  PartyGoldGT(999)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

// ------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @12
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKnowsAboutMatch","GLOBAL",4)~ THEN BEGIN 9 // from:
  SAY @13
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWKnowsAboutMatch","GLOBAL",4)GlobalLT("NWKnowsAboutMatch","GLOBAL",7)~ THEN BEGIN 10 // from:
  SAY @14
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWKnowsAboutMatch","GLOBAL",6)~ THEN BEGIN 11 // from:
  SAY @15
  IF ~~ THEN EXIT
END

