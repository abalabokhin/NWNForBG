// Северная дорога, пещеры гоблинов и орков - Вождь гоблинов.

BEGIN ~GOBKING~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @10
  IF ~~ THEN DO ~SetGlobal("GoblinHostile","MYAREA",1)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("GoblinQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @12 EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("GoblinHostile","MYAREA",1)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @18
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 3
END

// ---------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GoblinQuest","GLOBAL",1)~ THEN BEGIN 9 // from:
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~  PartyHasItem("HeadBugb")~ THEN REPLY @21 GOTO 11
  IF ~  PartyHasItem("HeadOrc")~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 6
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @14 GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @27
  IF ~  Global("OrcDead","LOCALS",1)~ THEN GOTO 16
  IF ~  Global("OrcDead","LOCALS",0)~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY @28
  IF ~~ THEN DO ~SetGlobal("BugbeerDead","LOCALS",1)
SetGlobal("GoblinQuest","GLOBAL",2)
GiveGoldForce(1200)
TakePartyItem("HeadBugb")
AddexperienceParty(12000)
EraseJournalEntry(@12)~ SOLVED_JOURNAL @29 EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("BugbeerDead","LOCALS",1)GiveGoldForce(1200)TakePartyItem("HeadBugb")~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @31
  IF ~  Global("BugbeerDead","LOCALS",1)~ THEN GOTO 18
  IF ~  Global("BugbeerDead","LOCALS",0)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY @28
  IF ~~ THEN DO ~SetGlobal("OrcDead","LOCALS",1)
SetGlobal("GoblinQuest","GLOBAL",2)
GiveGoldForce(1200)
TakePartyItem("HeadOrc")
AddexperienceParty(12000)
EraseJournalEntry(@12)~ SOLVED_JOURNAL @32 EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("OrcDead","LOCALS",1)GiveGoldForce(1200)TakePartyItem("HeadOrc")~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.5
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @34
  IF ~~ THEN REPLY @14 GOTO 15
  IF ~  PartyHasItem("HeadBugb")~ THEN REPLY @21 GOTO 11
  IF ~  PartyHasItem("HeadOrc")~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 6
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @35
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~  PartyHasItem("HeadBugb")~ THEN REPLY @21 GOTO 11
  IF ~  PartyHasItem("HeadOrc")~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 6
  IF ~~ THEN REPLY @24 GOTO 13
END

// ---------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GoblinQuest","GLOBAL",2)~ THEN BEGIN 20 // from:
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 6
  IF ~~ THEN REPLY @38 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.2
  SAY @39
  IF ~~ THEN EXIT
END
