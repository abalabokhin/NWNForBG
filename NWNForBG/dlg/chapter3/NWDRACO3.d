// Лунный лес пещеры  Горгота Золотой дракон  Золотые драконы грациозны, мудры и обладают изощренным умом. Они ненавидят несправедливость и нечестную игру, и часто пускаются в приключения, назначив самих себя поборниками добра.

BEGIN ~NWDRACO3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!PartyHasItem("HEADDR1")Global("Draco4Job","GLOBAL",0)GlobalLT("Draco3Job","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Dead("Klaut")~ THEN REPLY @1 GOTO 1
  IF ~  !Dead("Klaut")~ THEN REPLY @1 GOTO 2
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 3
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  Dead("Klaut")~ THEN REPLY @12 GOTO 1
  IF ~  !Dead("Klaut")~ THEN REPLY @12 GOTO 2
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  Dead("Klaut")~ THEN REPLY @12 GOTO 1
  IF ~  !Dead("Klaut")~ THEN REPLY @12 GOTO 2
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY @17
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY @18
  IF ~  !Dead("Klaut")~ THEN REPLY @9 GOTO 10
  IF ~  Dead("Klaut")~ THEN REPLY @6 GOTO 8
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY @11
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 2.3
  SAY @23
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @24
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY @26
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @29 GOTO 18
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("Draco3Job","GLOBAL",1)~ UNSOLVED_JOURNAL @31 EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @32
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 11
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 12
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!PartyHasItem("HEADDR1")Global("Draco4Job","GLOBAL",1)GlobalLT("Draco3Job","GLOBAL",2)~ THEN BEGIN 19 // from:
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 20
  IF ~  Dead("Klaut")~ THEN REPLY @1 GOTO 1
  IF ~  !Dead("Klaut")~ THEN REPLY @1 GOTO 2
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 3
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @35
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~  Dead("Klaut")~ THEN REPLY @36 GOTO 1
  IF ~  !Dead("Klaut")~ THEN REPLY @36 GOTO 2
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!PartyHasItem("HEADDR1")GlobalLT("Draco3Job","GLOBAL",2)~ THEN BEGIN 21 // from:
  SAY @37
  IF ~  Dead("Klaut")~ THEN REPLY @1 GOTO 1
  IF ~  !Dead("Klaut")~ THEN REPLY @1 GOTO 2
  IF ~  !Dead("Klaut")~ THEN REPLY @2 GOTO 3
  IF ~  Dead("Klaut")~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~  GlobalLT("Draco3Job","GLOBAL",2)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN REPLY @4 GOTO 7
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  PartyHasItem("HEADDR1")GlobalLT("Draco3Job","GLOBAL",2)~ THEN BEGIN 22 // from:
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @42 GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @42 GOTO 26
  IF ~  Dead("Klaut")~ THEN REPLY @43 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @44
  IF ~~ THEN DO~TakePartyItem("HEADDR1")GiveGoldForce(8000)AddexperienceParty(120000)EraseJournalEntry(@31)~ SOLVED_JOURNAL @45 EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY @46
  IF ~~ THEN DO~TakePartyItem("HEADDR1")GiveGoldForce(8000)GiveItemCreate("Drac3Itm",LastTalkedToBy,1,1,1)AddexperienceParty(120000)EraseJournalEntry(@31)~ SOLVED_JOURNAL @45 EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY @47
  IF ~~ THEN DO~TakePartyItem("HEADDR1")GiveGoldForce(8000)AddexperienceParty(120000)EraseJournalEntry(@31)~ SOLVED_JOURNAL @45 EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4
  SAY @48
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),DRAGON_WING_BUFFET)Enemy()EraseJournalEntry(@31)EraseJournalEntry(@45)~ SOLVED_JOURNAL @49 EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Draco3Job","GLOBAL",1)~ THEN BEGIN 28 // from:
  SAY @50
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 7
END

