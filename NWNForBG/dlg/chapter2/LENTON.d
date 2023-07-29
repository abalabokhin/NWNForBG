// Восточная дорога, казармы Джакса, уровень 1 Лентон - человек. Это крепкий злобный человек. В его глазах прячется едва сдерживаемая ярость.

BEGIN ~LENTON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowLenton","LOCALS",0)Global("LentonQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @22
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @23
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @31
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1
  SAY @32
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("LentonQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @99482 EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3 13.3
  SAY @35
  IF ~~ THEN DO ~SetGlobal("KnowLenton","LOCALS",1)~ EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowLenton","LOCALS",1)Global("LentonQuest","GLOBAL",0)~ THEN BEGIN 17 // from:
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 18
  IF ~  PartyHasItem("HeadTrol")~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 15
  IF ~~ THEN REPLY @40 GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 4
  IF ~~ THEN REPLY @43 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 22
  IF ~~ THEN REPLY @46 GOTO 23
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 17.4
  SAY @48
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 15
  IF ~~ THEN REPLY @51 GOTO 20
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @52
  IF ~~ THEN DO ~TakePartyItem("HeadTrol")SetGlobal("LentonQuest","GLOBAL",2)AddexperienceParty(30000)ReputationInc(1)EraseJournalEntry(@99482) ~ SOLVED_JOURNAL @99528 EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY @54
  IF ~~ THEN DO ~TakePartyItem("HeadTrol")SetGlobal("LentonQuest","GLOBAL",2)AddexperienceParty(30000)GiveGoldForce(600)EraseJournalEntry(@99482) ~ SOLVED_JOURNAL @99528 EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY @55
  IF ~~ THEN DO ~TakePartyItem("HeadTrol")SetGlobal("LentonQuest","GLOBAL",3)AddexperienceParty(30000)GiveGoldForce(600)EraseJournalEntry(@99482) ~ SOLVED_JOURNAL @99528 EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("LentonQuest","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 26
  IF ~  PartyHasItem("HeadTrol")~ THEN REPLY @58 GOTO 19
  IF ~~ THEN REPLY @59 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.2
  SAY @60
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.3
  SAY @61
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("LentonQuest","GLOBAL",2)~ THEN BEGIN 28 // from:
  SAY @62
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("LentonQuest","GLOBAL",3)~ THEN BEGIN 29 // from:
  SAY @63
  IF ~~ THEN EXIT
END
