// Форт Илкард Крепость племени Лося Зокан, Этот мужчина носит одежды вождя племени Лосей из Утгардта.

BEGIN ~ZOKAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWCoverlet","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~  Global("JusamJob","GLOBAL",1)~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @10
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @12
  IF ~~ THEN DO ~SetGlobal("ZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("ZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @22
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @23
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @24
  IF ~~ THEN DO ~SetGlobal("NWCoverlet","GLOBAL",1)GiveItemCreate("Coverlet",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @25 EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @26
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWCoverlet","GLOBAL",1)PartyHasItem("Coverlet")Global("NW_Medicine","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @27
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @28
  IF ~~ THEN EXIT
END

// -----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWCoverlet","GLOBAL",0)!Global("NW_Medicine","GLOBAL",2)~ THEN BEGIN 14 // from:
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~  Global("JusamJob","GLOBAL",1)~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
END

// -------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWCoverlet","GLOBAL",1)Global("NWCoverlet","GLOBAL",3)!Global("NW_Medicine","GLOBAL",2)~ THEN BEGIN 15 // from:
  SAY @29
  IF ~  PartyHasItem("NWMISC73")~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 16
  IF ~~ THEN REPLY @37 GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @38
  IF ~~ THEN DO ~TakePartyItem("Nwmisc73")DestroyItem("Nwmisc73")SetGlobal("NWCoverlet","GLOBAL",2)SetGlobal("NW_Medicine","GLOBAL",2)GiveItemCreate("Nwmisc72",LastTalkedToBy,1,1,1)
GiveItemCreate("NWMISC37",LastTalkedToBy,1,1,1)AddexperienceParty(84000)EraseJournalEntry(@25)EraseJournalEntry(@44)~ SOLVED_JOURNAL @39 EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY @40
  IF ~~ THEN DO ~TakePartyItem("Nwmisc73")DestroyItem("Nwmisc73")SetGlobal("NWCoverlet","GLOBAL",2)SetGlobal("NW_Medicine","GLOBAL",2)GiveItemCreate("Nwmisc72",LastTalkedToBy,0,0,0)
GiveItemCreate("NWMISC37",LastTalkedToBy,1,1,1)AddexperienceParty(84000)EraseJournalEntry(@25)EraseJournalEntry(@44)~ SOLVED_JOURNAL @39 EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY @41
  IF ~~ THEN GOTO 6
END

// -------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NW_Medicine","GLOBAL",2)~ THEN BEGIN 22 // from:
  SAY @42
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @43
  IF ~~ THEN EXIT
END

