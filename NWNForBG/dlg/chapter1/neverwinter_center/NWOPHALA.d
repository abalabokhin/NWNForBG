// Центр Невервинтера Маска Лунного Камня  Офала Шелдарсторн - просит собрать произведения искусства. Эта женщина очень уверена в себе. Она следит за всем всезнающим оком - ничто не может укрыться от ее взора.

BEGIN ~NWOPHALA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN GOTO 1
  IF ~  Gender(LastTalkedToBy(Myself),MALE)~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~  IsGabber(Player1)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @13 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @17
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @18
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @19
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @20
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY @21
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.4
  SAY @22
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 6.5
  SAY @23
  IF ~  GlobalLT("MoonstoneMask","GLOBAL",2)~ THEN REPLY @24 GOTO 17
  IF ~  GlobalGT("MoonstoneMask","GLOBAL",1)~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 DO ~SetGlobal("OphalaQuest","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @29
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @30
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY @31
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @32
  IF ~~ THEN REPLY @33 DO ~SetGlobal("OphalaQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @92742 GOTO 22
  IF ~~ THEN REPLY @28 DO ~SetGlobal("OphalaQuest","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @35
  IF ~  PartyHasItem("NWOLEFFT")~ THEN REPLY @36 GOTO 23
  IF ~  Global("MoonstoneMask","GLOBAL",0)~ THEN REPLY @37 GOTO 24
  IF ~  Global("MoonstoneMask","GLOBAL",1)~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY @38
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY @39
  IF ~  GlobalLT("MoonstoneMask","GLOBAL",2)~ THEN REPLY @24 GOTO 17
  IF ~  GlobalGT("MoonstoneMask","GLOBAL",1)~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @40
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 23// from: 17.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("MoonstoneMask","GLOBAL",2)TakePartyItem("NWOLEFFT")~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.2
  SAY @42
  IF ~~ THEN DO ~SetGlobal("MoonstoneMask","GLOBAL",1)GiveItemCreate("NWOPHALT",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.3
  SAY @43
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)IsGabber(Player1)~ THEN BEGIN 26 // from:
  SAY @44
  IF ~  Global("OphalaQuest","GLOBAL",1)OR(3)PartyHasItem("Nwmisc12")PartyHasItem("Nwmisc13")PartyHasItem("Nwmisc14")~ THEN REPLY @45 GOTO 27
  IF ~  PartyHasItem("NWOLEFFT")~ THEN REPLY @46 GOTO 23
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~  Global("OphalaQuest","GLOBAL",0)~ THEN REPLY @48 GOTO 29
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @49
  IF ~  PartyHasItem("Nwmisc12")OR(2)!PartyHasItem("Nwmisc13")!PartyHasItem("Nwmisc14")GlobalLT("OphalaMisc","LOCALS",2)!Dead("NWANDROD")~ THEN REPLY @50 GOTO 30
  IF ~  PartyHasItem("Nwmisc12")OR(2)!PartyHasItem("Nwmisc13")!PartyHasItem("Nwmisc14")GlobalLT("OphalaMisc","LOCALS",2)Dead("NWANDROD")~ THEN REPLY @50 GOTO 31
  IF ~  PartyHasItem("Nwmisc12")OR(2)!PartyHasItem("Nwmisc13")!PartyHasItem("Nwmisc14")Global("OphalaMisc","LOCALS",2)~ THEN REPLY @50 GOTO 32
  IF ~  PartyHasItem("Nwmisc13")OR(2)!PartyHasItem("Nwmisc12")!PartyHasItem("Nwmisc14")GlobalLT("OphalaMisc","LOCALS",2)!Dead("NWTHOMS")~ THEN REPLY @51 GOTO 33
  IF ~  PartyHasItem("Nwmisc13")OR(2)!PartyHasItem("Nwmisc12")!PartyHasItem("Nwmisc14")GlobalLT("OphalaMisc","LOCALS",2)Dead("NWTHOMS")~ THEN REPLY @51 GOTO 34
  IF ~  PartyHasItem("Nwmisc13")OR(2)!PartyHasItem("Nwmisc12")!PartyHasItem("Nwmisc14")Global("OphalaMisc","LOCALS",2)~ THEN REPLY @51 GOTO 35
  IF ~  PartyHasItem("Nwmisc14")OR(2)!PartyHasItem("Nwmisc13")!PartyHasItem("Nwmisc12")GlobalLT("OphalaMisc","LOCALS",2)~ THEN REPLY @52 GOTO 36
  IF ~  PartyHasItem("Nwmisc14")OR(2)!PartyHasItem("Nwmisc13")!PartyHasItem("Nwmisc12")Global("OphalaMisc","LOCALS",2)~ THEN REPLY @52 GOTO 37
  IF ~  PartyHasItem("Nwmisc12")PartyHasItem("Nwmisc13")PartyHasItem("Nwmisc14")!Dead("NWANDROD")!Dead("NWTHOMS")~ THEN REPLY @53 GOTO 38
  IF ~  PartyHasItem("Nwmisc12")PartyHasItem("Nwmisc13")PartyHasItem("Nwmisc14")OR(2)Dead("NWANDROD")Dead("NWTHOMS")~ THEN REPLY @53 GOTO 39
  IF ~~ THEN REPLY @54 GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.3
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.4
  SAY @56
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @13 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 11
  IF ~~ THEN REPLY @15 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY @57
  IF ~~ THEN DO ~TakePartyItem("Nwmisc12")IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(1500)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @58
  IF ~~ THEN DO ~TakePartyItem("Nwmisc12")IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(750)AddexperienceParty(15000)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.3
  SAY @59
  IF ~~ THEN DO ~TakePartyItem("Nwmisc12")SetGlobal("OphalaQuest","GLOBAL",2)IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(1500)AddexperienceParty(40000)GiveItemCreate("NWOPHALR",LastTalkedToBy,1,1,1)EraseJournalEntry(@92742)~ SOLVED_JOURNAL @92799 EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.4
  SAY @61
  IF ~~ THEN DO ~TakePartyItem("Nwmisc13")IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(1500)AddexperienceParty(20000)EraseJournalEntry(@103126)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5
  SAY @62
  IF ~~ THEN DO ~TakePartyItem("Nwmisc13")IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(750)AddexperienceParty(15000)EraseJournalEntry(@103126)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.6
  SAY @63
  IF ~~ THEN DO ~TakePartyItem("Nwmisc13")SetGlobal("OphalaQuest","GLOBAL",2)IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(1500)AddexperienceParty(40000)GiveItemCreate("NWOPHALR",LastTalkedToBy,1,1,1)EraseJournalEntry(@103126)EraseJournalEntry(@92742)~ SOLVED_JOURNAL @92799 EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.7
  SAY @64
  IF ~~ THEN DO ~TakePartyItem("Nwmisc14")IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(1500)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.8
  SAY @65
  IF ~~ THEN DO ~TakePartyItem("Nwmisc14")SetGlobal("OphalaQuest","GLOBAL",2)IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(1500)AddexperienceParty(40000)GiveItemCreate("NWOPHALR",LastTalkedToBy,1,1,1)EraseJournalEntry(@92742)~ SOLVED_JOURNAL @92799 EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.9
  SAY @66
  IF ~~ THEN DO ~TakePartyItem("Nwmisc12")TakePartyItem("Nwmisc13")TakePartyItem("Nwmisc14")SetGlobal("OphalaQuest","GLOBAL",2)IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(4500)AddexperienceParty(80000)GiveItemCreate("NWOPHALR",LastTalkedToBy,1,1,1)EraseJournalEntry(@92742)EraseJournalEntry(@103126)~ SOLVED_JOURNAL @92799 EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.10
  SAY @67
  IF ~~ THEN DO ~TakePartyItem("Nwmisc12")TakePartyItem("Nwmisc13")TakePartyItem("Nwmisc14")SetGlobal("OphalaQuest","GLOBAL",2)IncrementGlobal("OphalaMisc","LOCALS",1)GiveGoldForce(2250)AddexperienceParty(60000)GiveItemCreate("NWOPHALR",LastTalkedToBy,1,1,1)EraseJournalEntry(@92742)EraseJournalEntry(@103126)~ SOLVED_JOURNAL @92799 EXIT
END

IF ~~ THEN BEGIN 40 // from: 27.11
  SAY @68
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!IsGabber(Player1)~ THEN BEGIN 41 // from:
  SAY @69
  IF ~  Global("OphalaQuest","GLOBAL",1)OR(3)PartyHasItem("Nwmisc12")PartyHasItem("Nwmisc13")PartyHasItem("Nwmisc14")~ THEN REPLY @45 GOTO 27
  IF ~  PartyHasItem("NWOLEFFT")~ THEN REPLY @46 GOTO 23
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~  GlobalLT("OphalaQuest","GLOBAL",2)~ THEN REPLY @48 GOTO 29
  IF ~~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 5
END

