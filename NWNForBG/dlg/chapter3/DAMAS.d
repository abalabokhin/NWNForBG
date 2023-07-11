// Форт Илкард Жилище Дамаса  Командир Дамас   Командир форта Илкард ведет себя напыщенно и высокомерно.

BEGIN ~DAMAS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6 
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~  Global("Siege_Is_Lifted","GLOBAL",0)~ THEN REPLY @10 GOTO 11
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~~ THEN REPLY @17 GOTO 15
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @20
  IF ~  GlobalLT("NWCoverlet","GLOBAL",2)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @6 GOTO 8
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @21
  IF ~  GlobalLT("KillElks","GLOBAL",6)GlobalLT("NWCoverlet","GLOBAL",3)~ THEN REPLY @22 GOTO 17
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6 
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY @23
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY @24
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY @25
  IF ~~ THEN DO ~SetGlobal("Siege_Is_Lifted","GLOBAL",1)~ UNSOLVED_JOURNAL @26 EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY @27
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY @28
  IF ~~ THEN DO ~SetGlobal("Siege_Is_Lifted","GLOBAL",5)GiveGoldForce(2000)AddexperienceParty(120000)EraseJournalEntry(@67)EraseJournalEntry(@48)EraseJournalEntry(@64)EraseJournalEntry(@62)~ SOLVED_JOURNAL @29 EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY @30
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6 
END

IF ~~ THEN BEGIN 15 // from: 5.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 5.3
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY @37
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6 
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @38
  IF ~  PartyGoldGT(2999)~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @40 GOTO 23
  IF ~~ THEN REPLY @41 GOTO 24
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @42 
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @44 GOTO 26
  IF ~~ THEN REPLY @36 GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 28.1
  SAY @45
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 28.2
  SAY @46
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY @47
  IF ~~ THEN DO ~SetGlobal("NW_Medicine","GLOBAL",1)TakePartyGold(3000)GiveItem("NWMISC73",LastTalkedToBy)SetGlobal("Siege_Is_Lifted","GLOBAL",4)~ UNSOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.2
  SAY @49
  IF ~  PartyGoldGT(2999)~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @50 DO ~SetGlobal("Hostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.3
  SAY @51
  IF ~~ THEN DO ~SetGlobal("Siege_Is_Lifted","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY @52
  IF ~~ THEN DO ~SetGlobal("NWCoverlet","GLOBAL",3)TakePartyItem("Coverlet")DestroyItem("Coverlet")GiveGoldForce(300)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY @53 
  IF ~~ THEN REPLY @43 GOTO 25 
  IF ~~ THEN REPLY @54 GOTO 29
  IF ~~ THEN REPLY @36 GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 20.1
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 8.1
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 20
  IF ~  GlobalGT("NW3303Vizited","GLOBAL",0)~ THEN REPLY @58 GOTO 21
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY @59 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.1
  SAY @60 
  IF ~~ THEN GOTO 33 
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @61 
  IF ~~ THEN DO ~SetGlobal("Siege_Is_Lifted","GLOBAL",3)GiveGoldForce(1500)AddexperienceParty(80000)EraseJournalEntry(@26)~ UNSOLVED_JOURNAL @62 EXIT
END

IF ~~ THEN BEGIN 34 // from: 12.1
  SAY @63
  IF ~~ THEN DO ~TakePartyItem("ARNESSHD")DestroyItem("ARNESSHD")SetGlobal("Siege_Is_Lifted","GLOBAL",4)GiveGoldForce(1000)AddexperienceParty(40000)EraseJournalEntry(@26)EraseJournalEntry(@62)~ UNSOLVED_JOURNAL @64 EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY @65
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 6
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NW_Medicine","GLOBAL",0)~ THEN BEGIN 31 // from:
  SAY @66
  IF ~  Global("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalLT("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 2
  IF ~  Global("Siege_Is_Lifted","GLOBAL",3)~ THEN REPLY @1 GOTO 3
  IF ~  Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @1 GOTO 4
  IF ~  Global("NWCoverlet","GLOBAL",1)Global("NW_Medicine","GLOBAL",0)~ THEN REPLY @2 GOTO 5
  IF ~  PartyHasItem("ARNESSHD")!PartyHasItem("ZOKANHD")GlobalLT("Siege_Is_Lifted","GLOBAL",5)~ THEN REPLY @12 GOTO 12
  IF ~  PartyHasItem("ZOKANHD")Global("Siege_Is_Lifted","GLOBAL",4)~ THEN REPLY @13 GOTO 13
  IF ~  Global("Siege_Is_Lifted","GLOBAL",2)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 6 
END

