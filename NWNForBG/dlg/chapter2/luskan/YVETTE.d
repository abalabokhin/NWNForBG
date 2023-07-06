// Лускан Подмигни и ущипни, 2-й уровень Иветт Эта прекрасная молодая куртизанка выглядит так, словно ее что-то беспокоит.

//   IF ~~ THEN REPLY ~Пойдет.~ DO ~StartStore("Innkeep1",LastTalkedToBy(Myself))~ EXIT

BEGIN ~YVETTE~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @20
  IF ~  OR(2)Global("YvetteQuest","GLOBAL",1)Global("MyJob","LOCALS",1)~ THEN REPLY @21 GOTO 17
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @23
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN GOTO 19
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN GOTO 20
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @24
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @25
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 7
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @8 GOTO 21
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @28 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 24
  IF ~~ THEN REPLY @30 GOTO 25
END

IF ~~ THEN BEGIN 10 // from: 0.2
  SAY @31
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  Global("YvetteQuest","GLOBAL",0)~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 0.2
  SAY @32
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 0.2
  SAY @33
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("YvetteQuest","GLOBAL",0)~ THEN REPLY @15 GOTO 13
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 29
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~~ THEN REPLY @36 GOTO 30
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY @37
  IF ~~ THEN DO ~SetGlobal("MyJob","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY @38
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 1.2
  SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.3
  SAY @40
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 0.1
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.1
  SAY @43
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @21 GOTO 17
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 0.1
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 21
  IF ~~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @46
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY @47
  IF ~~ THEN DO ~SetGlobal("YvetteQuest","GLOBAL",3)TakePartyItem("Nwmisc60")GiveGoldForce(780)AddexperienceParty(20000)IncrementGlobal("EvilNW1","GLOBAL",1)EraseJournalEntry(@59)EscapeArea()~ SOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 23 // from: 0.2
  SAY @49
  IF ~~ THEN DO ~SetGlobal("YvetteQuest","GLOBAL",3)TakePartyItem("Nwmisc60")GiveGoldForce(780)AddexperienceParty(20000)IncrementGlobal("EvilNW1","GLOBAL",1)EraseJournalEntry(@59)EscapeArea()~ SOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 25
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~  PartyGoldGT(249)~ THEN REPLY @53 GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY @54
  IF ~~ THEN DO ~SetGlobal("YvetteQuest","GLOBAL",3)TakePartyItem("Nwmisc60")GiveGoldForce(500)AddexperienceParty(30000)EraseJournalEntry(@59)EscapeArea()~ SOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.3
  SAY @55
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 12
  IF ~  !Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @56
  IF ~~ THEN DO ~SetGlobal("YvetteQuest","GLOBAL",3)TakePartyItem("Nwmisc60")AddexperienceParty(30000)ReputationInc(1)EraseJournalEntry(@59)EscapeArea()~ SOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY @57
  IF ~~ THEN DO ~SetGlobal("YvetteQuest","GLOBAL",3)TakePartyItem("Nwmisc60")TakePartyGold(250)AddexperienceParty(40000)ReputationInc(1)EraseJournalEntry(@59)EscapeArea()~ SOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY @58
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 14
  IF ~~ THEN REPLY @36 GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 0.2
  SAY @42
  IF ~~ THEN DO ~SetGlobal("YvetteQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @59 EXIT
END

// ---------------------------------------

IF ~  !NumTimesTalkedTo(0)Global("YvetteQuest","GLOBAL",0)Global("MyJob","LOCALS",0)~ THEN BEGIN 31 // from:
  SAY @60
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------

IF ~  !NumTimesTalkedTo(0)Global("YvetteQuest","GLOBAL",0)Global("MyJob","LOCALS",1)~ THEN BEGIN 32 // from:
  SAY @61
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @62 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------

IF ~  Global("YvetteQuest","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @63
  IF ~  PartyHasItem("Nwmisc60")~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 18
END























