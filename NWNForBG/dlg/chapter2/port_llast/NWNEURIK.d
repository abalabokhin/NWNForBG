// ����-����� ���� ���� ��������� ������ ������� - ����� ���������

BEGIN ~NWNEURIK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~ Global("KnowNeurik","LOCALS",0)IsGabber(Player1)~ THEN REPLY @1 DO ~SetGlobal("KnowNeurik","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~ Global("KnowNeurik","LOCALS",0)IsGabber(Player1)~ THEN REPLY @1 DO ~SetGlobal("KnowNeurik","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY @12
  IF ~ Global("KnowNeurik","LOCALS",0)IsGabber(Player1)~ THEN REPLY @1 DO ~SetGlobal("KnowNeurik","LOCALS",1)~ GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN DO ~StartStore("NWNEURIK",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @14
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN REPLY @17 DO ~SetGlobal("NWNeurikQuest","GLOBAL",1)
GiveItemCreate("NWAMULNU",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("NWAMULNU",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("NWAMULNU",LastTalkedToBy(Myself),1,0,0)
GiveItemCreate("NWAMULNU",LastTalkedToBy(Myself),1,0,0)~ UNSOLVED_JOURNAL @96006 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.5
  SAY @32
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @33
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY @34
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY @35
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 12.2
  SAY @36
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.3
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 44
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 44 // from: 17.1
  SAY @39
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.4
  SAY @40
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNeurikQuest","GLOBAL",0)GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN BEGIN 20 // from:
  SAY @41
  IF ~  Global("NWNeurikQuest","GLOBAL",8)PartyHasItem("NWELTOOH")~ THEN REPLY @42 GOTO 21
  IF ~  OR(2)Global("NWNeurikQuest","GLOBAL",7)Global("NWNeurikQuest","GLOBAL",8)!PartyHasItem("NWELTOOH")~ THEN REPLY @43 GOTO 22
  IF ~  Global("NWNeurikQuest","GLOBAL",6)~ THEN REPLY @44 GOTO 23
  IF ~  Global("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @45 GOTO 24
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @46 GOTO 25
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 20.6
  SAY @14
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 26.1
  SAY @15
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.1
  SAY @48
  IF ~  Global("NWNeurikQuest","GLOBAL",8)PartyHasItem("NWELTOOH")~ THEN REPLY @42 GOTO 21
  IF ~  OR(2)Global("NWNeurikQuest","GLOBAL",7)Global("NWNeurikQuest","GLOBAL",8)!PartyHasItem("NWELTOOH")~ THEN REPLY @43 GOTO 22
  IF ~  Global("NWNeurikQuest","GLOBAL",6)~ THEN REPLY @44 GOTO 23
  IF ~  Global("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @45 GOTO 24
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @49
  IF ~~ THEN REPLY @50 DO ~SetGlobal("NWNeurikQuest","GLOBAL",10)
GiveItemCreate("NWNEURIL",LastTalkedToBy(Myself),1,1,1)TakePartyItem("NWELTOOH")AddexperienceParty(90000)EraseJournalEntry(@96863)~ SOLVED_JOURNAL @96914 GOTO 27
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @52 GOTO 28
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @52 GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 21.1
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.2
  SAY @54
  IF ~~ THEN REPLY @50 DO ~SetGlobal("NWNeurikQuest","GLOBAL",10)
GiveItemCreate("NWNEURIL",LastTalkedToBy(Myself),1,1,1)
GiveGoldForce(1000)TakePartyItem("NWELTOOH")AddexperienceParty(90000)EraseJournalEntry(@96863)~ SOLVED_JOURNAL @96914 GOTO 27
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY @55
  IF ~~ THEN REPLY @50 DO ~SetGlobal("NWNeurikQuest","GLOBAL",10)
GiveItemCreate("NWNEURIL",LastTalkedToBy(Myself),1,1,1)TakePartyItem("NWELTOOH")AddexperienceParty(90000)EraseJournalEntry(@96863)~ SOLVED_JOURNAL @96914 GOTO 27
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @56
  IF ~  Global("NWNeurikQuest","GLOBAL",7)~ THEN REPLY @57 GOTO 30
  IF ~  Global("NWNeurikQuest","GLOBAL",7)~ THEN REPLY @58 GOTO 31
  IF ~  Global("NWNeurikQuest","GLOBAL",7)~ THEN REPLY @59 GOTO 32
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 20.3
  SAY @60
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 31
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY @61
  IF ~~ THEN DO ~SetGlobal("NWNeurikQuest","GLOBAL",8)EraseJournalEntry(@96864)~ UNSOLVED_JOURNAL @96863 EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2
  SAY @63
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 23.3
  SAY @64
  IF ~~ THEN DO ~SetGlobal("NWNeurikQuest","GLOBAL",7) ~EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.4
  SAY @65
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 20.5
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 33
  IF ~  OR(3)PartyHasItem("NWURTRIG")PartyHasItem("NWBRUNRG")PartyHasItem("NWGETRIG")~ THEN REPLY @68 GOTO 34
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 25.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 35
  IF ~~ THEN REPLY @24 GOTO 36
  IF ~~ THEN REPLY @25 GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY @33
  IF ~~ THEN REPLY @23 GOTO 35
  IF ~~ THEN REPLY @25 GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY @34
  IF ~~ THEN REPLY @23 GOTO 35
  IF ~~ THEN REPLY @24 GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 38
  IF ~~ THEN REPLY @28 GOTO 39
  IF ~~ THEN REPLY @29 GOTO 40
  IF ~~ THEN REPLY @30 GOTO 41
  IF ~~ THEN REPLY @69 GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 35.5
  SAY @70
  IF ~  OR(3)PartyHasItem("NWURTRIG")PartyHasItem("NWBRUNRG")PartyHasItem("NWGETRIG")~ THEN REPLY @68 GOTO 34
  IF ~~ THEN REPLY @24 GOTO 36
  IF ~~ THEN REPLY @25 GOTO 37
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @71
  IF ~~ THEN REPLY @28 GOTO 39
  IF ~~ THEN REPLY @29 GOTO 40
  IF ~~ THEN REPLY @30 GOTO 41
  IF ~~ THEN REPLY @69 GOTO 42
END

IF ~~ THEN BEGIN 39 // from: 35.2
  SAY @36
  IF ~~ THEN REPLY @27 GOTO 38
  IF ~~ THEN REPLY @29 GOTO 40
  IF ~~ THEN REPLY @30 GOTO 41
  IF ~~ THEN REPLY @69 GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 35.3
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 43
  IF ~~ THEN REPLY @27 GOTO 38
  IF ~~ THEN REPLY @28 GOTO 39
  IF ~~ THEN REPLY @30 GOTO 41
  IF ~~ THEN REPLY @69 GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 35.4
  SAY @40
  IF ~~ THEN REPLY @27 GOTO 38
  IF ~~ THEN REPLY @28 GOTO 39
  IF ~~ THEN REPLY @29 GOTO 40
  IF ~~ THEN REPLY @69 GOTO 42
END

IF ~~ THEN BEGIN 43 // from: 40.1
  SAY @39
  IF ~~ THEN REPLY @27 GOTO 38
  IF ~~ THEN REPLY @28 GOTO 39
  IF ~~ THEN REPLY @30 GOTO 41
  IF ~~ THEN REPLY @69 GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 25.2
  SAY @72
  IF ~  !Dead("NWURT")!Dead("NWBRUN")!Dead("NWGETH")PartyHasItem("NWURTRIG")PartyHasItem("NWBRUNRG")PartyHasItem("NWGETRIG")~ THEN REPLY @73 DO ~SetGlobal("NWNeurikQuest","GLOBAL",4)
TakePartyItem("NWURTRIG")
TakePartyItem("NWBRUNRG")
TakePartyItem("NWGETRIG")
SetGlobal("NWUrtIsSaved","GLOBAL",1)
AddexperienceParty(90000)~ GOTO 45
  IF ~  OR(3)Dead("NWURT")Dead("NWBRUN")Dead("NWGETH")PartyHasItem("NWURTRIG")PartyHasItem("NWBRUNRG")PartyHasItem("NWGETRIG")~ THEN REPLY @73 DO ~SetGlobal("NWNeurikQuest","GLOBAL",4)
TakePartyItem("NWURTRIG")
TakePartyItem("NWBRUNRG")
TakePartyItem("NWGETRIG")
SetGlobal("NWUrtIsSaved","GLOBAL",1)
AddexperienceParty(30000)~ GOTO 46
  IF ~  PartyHasItem("NWURTRIG")GlobalLT("NWNeurikQuest","GLOBAL",3)!Dead("NWURT")~ THEN REPLY @74 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWURTRIG")SetGlobal("NWUrtIsSaved","GLOBAL",1)~ GOTO 47
  IF ~  PartyHasItem("NWURTRIG")GlobalLT("NWNeurikQuest","GLOBAL",3)Dead("NWURT")~ THEN REPLY @74 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWURTRIG")SetGlobal("NWUrtIsSaved","GLOBAL",1)~ GOTO 48
  IF ~  PartyHasItem("NWURTRIG")Global("NWNeurikQuest","GLOBAL",3)!Dead("NWURT")!Dead("NWBRUN")!Dead("NWGETH")~ THEN REPLY @74 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWURTRIG")AddexperienceParty(90000)SetGlobal("NWUrtIsSaved","GLOBAL",1)~ GOTO 49
  IF ~  PartyHasItem("NWURTRIG")Global("NWNeurikQuest","GLOBAL",3)OR(3)Dead("NWURT")Dead("NWBRUN")Dead("NWGETH")~ THEN REPLY @74 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWURTRIG")AddexperienceParty(30000)SetGlobal("NWUrtIsSaved","GLOBAL",1)~ GOTO 46
//-------------------------------------
  IF ~  PartyHasItem("NWBRUNRG")GlobalLT("NWNeurikQuest","GLOBAL",3)!Dead("NWBRUN")~ THEN REPLY @75 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWBRUNRG")~ GOTO 50
  IF ~  PartyHasItem("NWBRUNRG")GlobalLT("NWNeurikQuest","GLOBAL",3)Dead("NWBRUN")~ THEN REPLY @75 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWBRUNRG")~ GOTO 51
  IF ~  PartyHasItem("NWBRUNRG")Global("NWNeurikQuest","GLOBAL",3)!Dead("NWURT")!Dead("NWBRUN")!Dead("NWGETH")~ THEN REPLY @75 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWBRUNRG")AddexperienceParty(90000)~ GOTO 52
  IF ~  PartyHasItem("NWBRUNRG")Global("NWNeurikQuest","GLOBAL",3)OR(3)Dead("NWURT")Dead("NWBRUN")Dead("NWGETH")~ THEN REPLY @75 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWBRUNRG")AddexperienceParty(30000)~ GOTO 46
//----------------------------------------
  IF ~  PartyHasItem("NWGETRIG")GlobalLT("NWNeurikQuest","GLOBAL",3)!Dead("NWGETH")~ THEN REPLY @76 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWGETRIG")~ GOTO 53
  IF ~  PartyHasItem("NWGETRIG")GlobalLT("NWNeurikQuest","GLOBAL",3)Dead("NWGETH")~ THEN REPLY @76 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWGETRIG")~ GOTO 54
  IF ~  PartyHasItem("NWGETRIG")Global("NWNeurikQuest","GLOBAL",3)!Dead("NWURT")!Dead("NWBRUN")!Dead("NWGETH")~ THEN REPLY @76 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWGETRIG")AddexperienceParty(90000)~ GOTO 55
  IF ~  PartyHasItem("NWGETRIG")Global("NWNeurikQuest","GLOBAL",3)OR(3)Dead("NWURT")Dead("NWBRUN")Dead("NWGETH")~ THEN REPLY @76 DO ~IncrementGlobal("NWNeurikQuest","GLOBAL",1)TakePartyItem("NWGETRIG")AddexperienceParty(30000)~ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 34.1
  SAY @77
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 45.1
  SAY @78
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 34.2
  SAY @79
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 47 // from: 34.3
  SAY @80
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from: 34.4
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 34.5
  SAY @82
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 34.7
  SAY @83
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 34.8
  SAY @84
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from: 34.9
  SAY @85
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 34.11
  SAY @86
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from: 34.12
  SAY @87
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.13
  SAY @88
  IF ~~ THEN GOTO 56
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNeurikQuest","GLOBAL",4)GlobalLT("NWNeurikQuest","GLOBAL",7)~ THEN BEGIN 57 // from:
  SAY @89
  IF ~  Global("NWNeurikQuest","GLOBAL",8)PartyHasItem("NWELTOOH")~ THEN REPLY @42 GOTO 21
  IF ~  OR(2)Global("NWNeurikQuest","GLOBAL",7)Global("NWNeurikQuest","GLOBAL",8)!PartyHasItem("NWELTOOH")~ THEN REPLY @43 GOTO 22
  IF ~  Global("NWNeurikQuest","GLOBAL",6)~ THEN REPLY @44 GOTO 23
  IF ~  Global("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @45 GOTO 24
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @46 GOTO 25
  IF ~  GlobalGT("NWNeurikQuest","GLOBAL",0)GlobalLT("NWNeurikQuest","GLOBAL",4)~ THEN REPLY @47 GOTO 26
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",7)~ THEN BEGIN 58 // from:
  SAY @90
  IF ~  OR(2)Global("NWNeurikQuest","GLOBAL",7)Global("NWNeurikQuest","GLOBAL",8)PartyHasItem("NWELTOOH")~ THEN REPLY @42 GOTO 21
  IF ~  OR(2)Global("NWNeurikQuest","GLOBAL",7)Global("NWNeurikQuest","GLOBAL",8)!PartyHasItem("NWELTOOH")~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",8)~ THEN BEGIN 59 // from:
  SAY @91
  IF ~  PartyHasItem("NWELTOOH")~ THEN REPLY @42 GOTO 21
  IF ~  !PartyHasItem("NWELTOOH")~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",4)~ THEN BEGIN 60 // from:
  SAY @92
  IF ~~ THEN REPLY @45 GOTO 24
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNeurikQuest","GLOBAL",10)~ THEN BEGIN 63 // from:
  SAY @93
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END
