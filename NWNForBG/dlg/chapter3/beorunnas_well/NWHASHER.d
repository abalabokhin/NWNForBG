// Колодец Беорунна: торговый пост   Хашер Глина  Человек   У этого торговца средних лет глаза хитрого и удачливого дельца. Ищет того, кто сможет принести ему Звездный Сапфир

BEGIN ~NWHASHER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWHasherJob","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("NWChapter3AarinJob","GLOBAL",0)~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("NWChapter3AarinJob","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN DO ~  StartStore("NWHASHER",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~  Global("NWHasherJob","GLOBAL",0)~ THEN GOTO 5
  IF ~  GlobalGT("NWHasherJob","GLOBAL",0)~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @12
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @15
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("NWChapter3AarinJob","GLOBAL",0)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @16
 IF ~~ THEN REPLY @17 GOTO 10
 IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @20
 IF ~  PartyHasItem("NWGEM08")~ THEN REPLY @21 GOTO 13
 IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @23
 IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @24
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @25
 IF ~~ THEN REPLY @26 GOTO 15
 IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @27 GOTO 16
 IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @29
 IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @30
  IF ~~ THEN DO ~  TakePartyItem("Nwgem08")SetGlobal("NWHasherJob","GLOBAL",2)GiveGoldForce(4000)AddexperienceParty(122000)EraseJournalEntry(@104941)~ SOLVED_JOURNAL @104969 EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @32
  IF ~~ THEN DO ~  TakePartyItem("Nwgem08")SetGlobal("NWHasherJob","GLOBAL",2)GiveGoldForce(4400)AddexperienceParty(122000)EraseJournalEntry(@104941)~ SOLVED_JOURNAL @104969 EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @33
 IF ~~ THEN REPLY @34 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY @35
  IF ~~ THEN DO ~  TakePartyItem("Nwgem08")SetGlobal("NWHasherJob","GLOBAL",2)GiveGoldForce(4400)AddexperienceParty(102000)EraseJournalEntry(@104941)~ SOLVED_JOURNAL @104969 EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY @36
 IF ~  PartyHasItem("NWGEM08")~ THEN REPLY @21 GOTO 13
 IF ~~ THEN REPLY @37 GOTO 20
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY @38
 IF ~~ THEN REPLY @39 GOTO 21
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @40
  IF ~~ THEN DO ~  SetGlobal("NWHasherJob","GLOBAL",1)~ UNSOLVED_JOURNAL @104941 EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWHasherJob","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY @42
 IF ~  PartyHasItem("NWGEM08")~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @44 GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY @45
 IF ~  PartyHasItem("NWGEM08")~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @44 GOTO 4
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWHasherJob","GLOBAL",1)~ THEN BEGIN 24 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 25
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("NWChapter3AarinJob","GLOBAL",0)~ THEN REPLY @3 GOTO 26
  IF ~~ THEN REPLY @44 GOTO 4
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  GlobalGT("NWChapter3AarinJob","GLOBAL",0)~ THEN REPLY @3 GOTO 26
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @46
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
END

