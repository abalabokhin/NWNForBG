// Ћунный лес пещеры  јкулатраксас «еленый дракон  «еленые драконы воинственны и склонны нападать без вс€кого повода. ќни устраивают логова в древних лесах, где летают под кронами деревьев.

BEGIN ~NWDRACO2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!PartyHasItem("NWHEAD01")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @13
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @14 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY @15
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @17
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @18
  IF ~  GlobalLT("NWDraco2Job","GLOBAL",2)~ THEN GOTO 10
  IF ~  GlobalGT("NWDraco2Job","GLOBAL",1)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @19
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @20
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @24
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @25
  IF ~~ THEN REPLY @26 DO ~SetGlobal("NWDraco2Job","GLOBAL",1)~ UNSOLVED_JOURNAL @107596 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY @28
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @29
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 5
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("NWHEAD01")~ THEN BEGIN 15 // from:
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)PartyHasItem("NWHEAD01")~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @37 GOTO 20
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @38 GOTO 22
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @39
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @40 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @41
  IF ~~ THEN DO ~TakePartyItem("NWHEAD01")GiveGoldForce(8000)SetGlobal("NWDraco2Job","GLOBAL",2)AddexperienceParty(110000)EraseJournalEntry(@107596)~ SOLVED_JOURNAL @107597 EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY @43
  IF ~~ THEN DO ~TakePartyItem("NWHEAD01")GiveGoldForce(8000)GiveItemCreate("NWAMUL02",LastTalkedToBy,0,0,0)SetGlobal("NWDraco2Job","GLOBAL",2)AddexperienceParty(110000)EraseJournalEntry(@107596)~ SOLVED_JOURNAL @107597 EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY @44
  IF ~~ THEN DO ~TakePartyItem("NWHEAD01")GiveGoldForce(8000)GiveItemCreate("NWAMUL02",LastTalkedToBy,0,0,0)SetGlobal("NWDraco2Job","GLOBAL",2)AddexperienceParty(110000)EraseJournalEntry(@107596)~ SOLVED_JOURNAL @107597 EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4
  SAY @45
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)Enemy()EraseJournalEntry(@107596)~ EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)PartyHasItem("NWHEAD01")~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
END

