// ѕорт-Ћласт Ћазарет Ёльтура    Ёльтура —арптил      Ёта дама с глазами, как льдинки, смотрит в небо задумчивым взгл€дом.

BEGIN ~NWELTUR2~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  OR(2)Global("NWElturaQuest","GLOBAL",0)Global("NWElturaQuest","GLOBAL",6)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")
OR(5)
!PartyHasItem("NWBOOK37")
!PartyHasItem("NWBOOK34")
!PartyHasItem("NWBOOK32")
!PartyHasItem("NWBOOK36")
!PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 35
  IF ~  Global("NWElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~  PartyHasItem("NWBOOK37")~ THEN REPLY @8 GOTO 6
  IF ~  PartyHasItem("NWBOOK34")~ THEN REPLY @9 GOTO 7
  IF ~  PartyHasItem("NWBOOK32")~ THEN REPLY @10 GOTO 8
  IF ~  PartyHasItem("NWBOOK36")~ THEN REPLY @11 GOTO 9
  IF ~  PartyHasItem("NWBOOK38")~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @14
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")
OR(5)
!PartyHasItem("NWBOOK37")
!PartyHasItem("NWBOOK34")
!PartyHasItem("NWBOOK32")
!PartyHasItem("NWBOOK36")
!PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 35
  IF ~  Global("NWElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @15
  IF ~  GlobalGT("NWCloakTower","GLOBAL",3)~ THEN DO ~  StartStore("NWELTUR3",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalLT("NWCloakTower","GLOBAL",4)~ THEN DO ~  StartStore("NWELTUR2",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~  Global("NWElturaQuest","GLOBAL",0)~ THEN REPLY @18 GOTO 13
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN REPLY @18 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN REPLY @20 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @22
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK37")GiveGoldForce(2000)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @23
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK34")GiveGoldForce(2000)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @24
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK32")GiveGoldForce(2000)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY @25
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK36")GiveGoldForce(2000)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.5
  SAY @26
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK38")GiveGoldForce(2000)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.6
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY @29
  IF ~  Global("NWElturaQuest","GLOBAL",0)~ THEN REPLY @18 GOTO 13
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN REPLY @18 GOTO 16
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 4.4
  SAY @35
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~  Global("NWElturaQuest","GLOBAL",0)~ THEN REPLY @18 GOTO 13
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN REPLY @18 GOTO 16
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN REPLY @30 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY @36
  IF ~~ THEN DO ~SetGlobal("NWElturaQuest","GLOBAL",6)TakePartyItem("NWBOOK37")
TakePartyItem("NWBOOK34")TakePartyItem("NWBOOK32")TakePartyItem("NWBOOK36")TakePartyItem("NWBOOK38")
GiveItemCreate("NWELTURM",LastTalkedToBy,1,0,0)GiveGoldForce(10000)AddexperienceParty(200000)EraseJournalEntry(@96442)~ SOLVED_JOURNAL @96476 EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY @38
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")
OR(5)
!PartyHasItem("NWBOOK37")
!PartyHasItem("NWBOOK34")
!PartyHasItem("NWBOOK32")
!PartyHasItem("NWBOOK36")
!PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 35
  IF ~  Global("NWElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @39 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY @48
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 17.6
  SAY @49
  IF ~  Global("NWElturaQuest","GLOBAL",0)~ THEN DO ~SetGlobal("NWElturaQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @96442 EXIT
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY @51
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY @52
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 17.3
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 31
  IF ~~ THEN REPLY @55 GOTO 32
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 17.4
  SAY @56
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 17.5
  SAY @57
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 19.1
  SAY @51
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 19.2
  SAY @52
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 19.3
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 33
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 29 // from: 19.4
  SAY @56
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 19.5
  SAY @57
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @43 GOTO 28
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY @59
  IF ~~ THEN REPLY @55 GOTO 32
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 23.2
  SAY @60
  IF ~~ THEN REPLY @54 GOTO 31
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 24
  IF ~~ THEN REPLY @45 GOTO 25
  IF ~~ THEN REPLY @46 GOTO 20
  IF ~~ THEN REPLY @47 GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY @59
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 28.2
  SAY @60
  IF ~~ THEN REPLY @54 GOTO 33
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
  IF ~~ THEN REPLY @44 GOTO 29
  IF ~~ THEN REPLY @45 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @58 GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 0.2
  SAY @7
  IF ~  PartyHasItem("NWBOOK37")~ THEN REPLY @8 GOTO 36
  IF ~  PartyHasItem("NWBOOK34")~ THEN REPLY @9 GOTO 37
  IF ~  PartyHasItem("NWBOOK32")~ THEN REPLY @10 GOTO 38
  IF ~  PartyHasItem("NWBOOK36")~ THEN REPLY @11 GOTO 39
  IF ~  PartyHasItem("NWBOOK38")~ THEN REPLY @12 GOTO 40
  IF ~~ THEN REPLY @13 GOTO 11
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @61
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK37")GiveGoldForce(2000)GiveItemCreate("NWELTURM",LastTalkedToBy,1,0,0)AddexperienceParty(40000)EraseJournalEntry(@96442)~ SOLVED_JOURNAL @96476 EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @62
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK34")GiveGoldForce(2000)GiveItemCreate("NWELTURM",LastTalkedToBy,1,0,0)AddexperienceParty(40000)EraseJournalEntry(@96442)~ SOLVED_JOURNAL @96476 EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY @63
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK32")GiveGoldForce(2000)GiveItemCreate("NWELTURM",LastTalkedToBy,1,0,0)AddexperienceParty(40000)EraseJournalEntry(@96442)~ SOLVED_JOURNAL @96476 EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.4
  SAY @64
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK36")GiveGoldForce(2000)GiveItemCreate("NWELTURM",LastTalkedToBy,1,0,0)AddexperienceParty(40000)EraseJournalEntry(@96442)~ SOLVED_JOURNAL @96476 EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.5
  SAY @65
  IF ~~ THEN DO ~IncrementGlobal("NWElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK38")GiveGoldForce(2000)GiveItemCreate("NWELTURM",LastTalkedToBy,1,0,0)AddexperienceParty(40000)EraseJournalEntry(@96442)~ SOLVED_JOURNAL @96476 EXIT
END

// --------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",6)~ THEN BEGIN 41 // from:
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 42
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")
OR(5)
!PartyHasItem("NWBOOK37")
!PartyHasItem("NWBOOK34")
!PartyHasItem("NWBOOK32")
!PartyHasItem("NWBOOK36")
!PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 35
  IF ~  Global("NWElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @68 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY @69
  IF ~  GlobalGT("NWElturaQuest","GLOBAL",0)GlobalLT("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")
OR(5)
!PartyHasItem("NWBOOK37")
!PartyHasItem("NWBOOK34")
!PartyHasItem("NWBOOK32")
!PartyHasItem("NWBOOK36")
!PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWElturaQuest","GLOBAL",5)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @1 GOTO 35
  IF ~  Global("NWElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY @2 GOTO 15
  IF ~~ THEN REPLY @68 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
END

