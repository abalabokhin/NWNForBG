// ����-����� ������� �������� ������� �������1 - �������� ��� �������� �������2 - ������ ���� ��������� 

BEGIN ~NWKENDRK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Dead("NWSHALD1")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1.2.3.4.5
  SAY @9
  IF ~  Global("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~  Global("NWKendrackQuest","GLOBAL",1)PartyHasItem("NWEARBAD")~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @16
  IF ~  IsGabber(Player1)~ THEN REPLY @17 GOTO 12
  IF ~  IsGabber(Player1)~ THEN REPLY @18 GOTO 12
  IF ~  !IsGabber(Player1)~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 6.1.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 13 // from: 6.3
  SAY @25
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 DO ~SetGlobal("NWKendrackQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @96692 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @33
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 DO ~SetGlobal("NWKendrackQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @96692 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @34
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 DO ~SetGlobal("NWKendrackQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @96692 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 17.3
  SAY @35
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @31 DO ~SetGlobal("NWKendrackQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @96692 GOTO 21
  IF ~~ THEN REPLY @24 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 17.4
  SAY @36
  IF ~  Global("ZorEar","LOCALS",0)~ THEN REPLY @37 GOTO 23
  IF ~  Global("StirgeEar","LOCALS",0)~ THEN REPLY @38 GOTO 24
  IF ~  Global("WyvernEar","LOCALS",0)~ THEN REPLY @39 GOTO 25
  IF ~  Global("DelilahEar","LOCALS",0)~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.5
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY @43
  IF ~  Global("StirgeEar","LOCALS",0)~ THEN REPLY @38 GOTO 24
  IF ~  Global("WyvernEar","LOCALS",0)~ THEN REPLY @39 GOTO 25
  IF ~  Global("DelilahEar","LOCALS",0)~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.2
  SAY @44
  IF ~  Global("ZorEar","LOCALS",0)~ THEN REPLY @37 GOTO 23
  IF ~  Global("WyvernEar","LOCALS",0)~ THEN REPLY @39 GOTO 25
  IF ~  Global("DelilahEar","LOCALS",0)~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.3
  SAY @45
  IF ~  Global("ZorEar","LOCALS",0)~ THEN REPLY @37 GOTO 23
  IF ~  Global("StirgeEar","LOCALS",0)~ THEN REPLY @38 GOTO 24
  IF ~  Global("DelilahEar","LOCALS",0)~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.4
  SAY @46
  IF ~  Global("ZorEar","LOCALS",0)~ THEN REPLY @37 GOTO 23
  IF ~  Global("StirgeEar","LOCALS",0)~ THEN REPLY @38 GOTO 24
  IF ~  Global("WyvernEar","LOCALS",0)~ THEN REPLY @39 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.5
  SAY @47
  IF ~  Global("ZorEar","LOCALS",0)~ THEN REPLY @37 GOTO 23
  IF ~  Global("StirgeEar","LOCALS",0)~ THEN REPLY @38 GOTO 24
  IF ~  Global("WyvernEar","LOCALS",0)~ THEN REPLY @39 GOTO 25
  IF ~  Global("DelilahEar","LOCALS",0)~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 15
  IF ~~ THEN REPLY @50 GOTO 16
  IF ~~ THEN REPLY @51 GOTO 28
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @52
  IF ~~ THEN REPLY @50 GOTO 16
  IF ~~ THEN REPLY @51 GOTO 28
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY @53
  IF ~~ THEN REPLY @49 GOTO 15
  IF ~~ THEN REPLY @51 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 7.3
  SAY @54
  IF ~  Global("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @10 GOTO 6
  IF ~  Global("NWKendrackQuest","GLOBAL",1)PartyHasItem("NWEARBAD")~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @55
  IF ~  Dead("NWZOR")PartyHasItem("NWEARBAD")Global("ZorEar","LOCALS",0)~ THEN REPLY @56 GOTO 29
  IF ~  Dead("NWSTIRGE")PartyHasItem("NWEARBAD")Global("StirgeEar","LOCALS",0)~ THEN REPLY @57 GOTO 30
  IF ~  Dead("NWWYVERB")PartyHasItem("NWEARBAD")Global("WyvernEar","LOCALS",0)~ THEN REPLY @58 GOTO 31
  IF ~  Dead("NWDELILH")PartyHasItem("NWEARBAD")Global("DelilahEar","LOCALS",0)~ THEN REPLY @59 GOTO 32
  IF ~  !PartyHasItem("NWEARBAD")~ THEN REPLY @60 GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 8.1
  SAY @61
  IF ~~ THEN DO ~SetGlobal("ZorEar","LOCALS",1)TakePartyItem("NWEARBAD")AddexperienceParty(30000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.2
  SAY @61
  IF ~~ THEN DO ~SetGlobal("StirgeEar","LOCALS",1)TakePartyItem("NWEARBAD")AddexperienceParty(30000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 8.3
  SAY @61
  IF ~~ THEN DO ~SetGlobal("WyvernEar","LOCALS",1)TakePartyItem("NWEARBAD")AddexperienceParty(30000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 8.4
  SAY @61
  IF ~~ THEN DO ~SetGlobal("DelilahEar","LOCALS",1)TakePartyItem("NWEARBAD")AddexperienceParty(30000)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 8.5
  SAY @62
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 34
  IF ~~ THEN REPLY @65 GOTO 35
  IF ~  Global("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @66 GOTO 36
  IF ~  Global("NWKendrackQuest","GLOBAL",1)~ THEN REPLY @67 GOTO 37
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 37 // from: 9.4
  SAY @68
  IF ~  Global("ZorEar","LOCALS",0)~ THEN REPLY @37 GOTO 23
  IF ~  Global("StirgeEar","LOCALS",0)~ THEN REPLY @38 GOTO 24
  IF ~  Global("WyvernEar","LOCALS",0)~ THEN REPLY @39 GOTO 25
  IF ~  Global("DelilahEar","LOCALS",0)~ THEN REPLY @40 GOTO 26
  IF ~~ THEN REPLY @41 GOTO 27
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.1
  SAY @69
  IF ~~ THEN REPLY @65 GOTO 35
  IF ~  Global("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @66 GOTO 36
  IF ~  Global("NWKendrackQuest","GLOBAL",1)~ THEN REPLY @67 GOTO 37
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 35 // from: 9.2
  SAY @70
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY @71
  IF ~~ THEN REPLY @64 GOTO 34
  IF ~  Global("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @66 GOTO 36
  IF ~  Global("NWKendrackQuest","GLOBAL",1)~ THEN REPLY @67 GOTO 37
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 36 // from: 9.3
  SAY @72
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.5
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 39
  IF ~~ THEN REPLY @75 GOTO 40
  IF ~~ THEN REPLY @76 GOTO 41
  IF ~~ THEN REPLY @77 GOTO 42
  IF ~~ THEN REPLY @78 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 39 // from: 10.1
  SAY @79
  IF ~~ THEN REPLY @75 GOTO 40
  IF ~~ THEN REPLY @76 GOTO 41
  IF ~~ THEN REPLY @77 GOTO 42
  IF ~~ THEN REPLY @78 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 40 // from: 10.2
  SAY @80
  IF ~~ THEN REPLY @74 GOTO 39
  IF ~~ THEN REPLY @76 GOTO 41
  IF ~~ THEN REPLY @77 GOTO 42
  IF ~~ THEN REPLY @78 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 41 // from: 10.3
  SAY @81
  IF ~~ THEN REPLY @74 GOTO 39
  IF ~~ THEN REPLY @75 GOTO 40
  IF ~~ THEN REPLY @77 GOTO 42
  IF ~~ THEN REPLY @78 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 42 // from: 10.4
  SAY @82
  IF ~~ THEN REPLY @74 GOTO 39
  IF ~~ THEN REPLY @75 GOTO 40
  IF ~~ THEN REPLY @76 GOTO 41
  IF ~~ THEN REPLY @78 GOTO 28
  IF ~~ THEN REPLY @15 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.6
  SAY @83
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWKendrackQuest","GLOBAL",0)!Dead("NWSHALD1")~ THEN BEGIN 43 // from:
  SAY @84
  IF ~  Global("NWKendrackQuest","GLOBAL",0)~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~  Global("NWKendrackQuest","GLOBAL",1)PartyHasItem("NWEARBAD")~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",1)!Dead("NWSHALD1")OR(4)!Dead("NWZOR")!Dead("NWSTIRGE")!Dead("NWWYVERB")!Dead("NWDELILH")~ THEN BEGIN 44 // from:
  SAY @85
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~  PartyHasItem("NWEARBAD")~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",1)Dead("NWZOR")Dead("NWSTIRGE")Dead("NWWYVERB")Dead("NWDELILH")!Dead("NWSHALD1")~ THEN BEGIN 45 // from:
  SAY @86
  IF ~~ THEN REPLY @87 GOTO 46
  IF ~~ THEN REPLY @88 GOTO 47
  IF ~~ THEN REPLY @89 GOTO 48
  IF ~~ THEN REPLY @90 GOTO 49
  IF ~~ THEN REPLY @91 GOTO 50
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @92
  IF ~~ THEN REPLY @88 GOTO 47
  IF ~~ THEN REPLY @89 GOTO 48
  IF ~~ THEN REPLY @90 GOTO 49
  IF ~~ THEN REPLY @91 GOTO 50
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY @93
  IF ~~ THEN REPLY @87 GOTO 46
  IF ~~ THEN REPLY @89 GOTO 48
  IF ~~ THEN REPLY @90 GOTO 49
  IF ~~ THEN REPLY @91 GOTO 50
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY @94
  IF ~~ THEN REPLY @87 GOTO 46
  IF ~~ THEN REPLY @88 GOTO 47
  IF ~~ THEN REPLY @89 GOTO 48
  IF ~~ THEN REPLY @90 GOTO 49
  IF ~~ THEN REPLY @91 GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY @95
  IF ~  NumItemsParty("NWEARBAD",4)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",3)TakePartyItemNum("NWEARBAD",4)GiveGoldForce(4000)AddexperienceParty(120000)EraseJournalEntry(@96692)~ UNSOLVED_JOURNAL @96693 EXIT
  IF ~  NumItemsParty("NWEARBAD",3)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",3)TakePartyItemNum("NWEARBAD",3)GiveGoldForce(3000)AddexperienceParty(90000)EraseJournalEntry(@96692)~ UNSOLVED_JOURNAL @96693 EXIT
  IF ~  NumItemsParty("NWEARBAD",2)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",3)TakePartyItemNum("NWEARBAD",2)GiveGoldForce(2000)AddexperienceParty(60000)EraseJournalEntry(@96692)~ UNSOLVED_JOURNAL @96693 EXIT
  IF ~  NumItemsParty("NWEARBAD",1)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",3)TakePartyItemNum("NWEARBAD",1)GiveGoldForce(1000)AddexperienceParty(30000)EraseJournalEntry(@96692)~ UNSOLVED_JOURNAL @96693 EXIT
  IF ~  !PartyHasItem("NWEARBAD")~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",3)EraseJournalEntry(@96692)~ UNSOLVED_JOURNAL @96693 EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY @97
  IF ~  NumItemsParty("NWEARBAD",4)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",2)TakePartyItemNum("NWEARBAD",4)AddexperienceParty(120000)GiveGoldForce(4000)~ EXIT
  IF ~  NumItemsParty("NWEARBAD",3)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",2)TakePartyItemNum("NWEARBAD",3)AddexperienceParty(90000)GiveGoldForce(3000)~ EXIT
  IF ~  NumItemsParty("NWEARBAD",2)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",2)TakePartyItemNum("NWEARBAD",2)AddexperienceParty(60000)GiveGoldForce(2000)~ EXIT
  IF ~  NumItemsParty("NWEARBAD",1)~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",2)TakePartyItemNum("NWEARBAD",1)AddexperienceParty(30000)GiveGoldForce(1000)~ EXIT
  IF ~  !PartyHasItem("NWEARBAD")~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",2)~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",2)!Dead("NWSHALD1")~ THEN BEGIN 51 // from:
  SAY @98
  IF ~~ THEN REPLY @87 GOTO 46
  IF ~~ THEN REPLY @88 GOTO 47
  IF ~~ THEN REPLY @89 GOTO 48
  IF ~~ THEN REPLY @90 GOTO 52
  IF ~~ THEN REPLY @91 GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 51.4
  SAY @99
  IF ~~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",3)EraseJournalEntry(@96692)~ UNSOLVED_JOURNAL @96693 EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",3)~ THEN BEGIN 53 // from:
  SAY @100
  IF ~~ THEN REPLY @101 GOTO 54
  IF ~~ THEN REPLY @102 GOTO 55
  IF ~Dead("NWSHALD2")~ THEN REPLY @103 GOTO 56
  IF ~~ THEN REPLY @104 GOTO 57
  IF ~~ THEN REPLY @105 GOTO 58
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY @106
  IF ~~ THEN REPLY @102 GOTO 55
  IF ~Dead("NWSHALD2")~ THEN REPLY @103 GOTO 56
  IF ~~ THEN REPLY @104 GOTO 57
  IF ~~ THEN REPLY @105 GOTO 58
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY @107
  IF ~~ THEN REPLY @101 GOTO 54
  IF ~Dead("NWSHALD2")~ THEN REPLY @103 GOTO 56
  IF ~~ THEN REPLY @104 GOTO 57
  IF ~~ THEN REPLY @105 GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY @108
  IF ~~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",66)EraseJournalEntry(@96693)~ SOLVED_JOURNAL @96790 EXIT
END

IF ~~ THEN BEGIN 57 // from: 53.4
  SAY @110
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 53.5
  SAY @111
  IF ~~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",66)~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",66)!Dead("NWSHALD2")~ THEN BEGIN 59 // from:
  SAY @112
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",66)Dead("NWSHALD2")~ THEN BEGIN 60 // from:
  SAY @113
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",4)~ THEN BEGIN 61 // from:
  SAY @114
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.1
  SAY @115
  IF ~~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",5)TakePartyItem("NWEARBAD")AddexperienceParty(100000)GiveGoldForce(1000)ReputationInc(1)EraseJournalEntry(@96693)~ SOLVED_JOURNAL @96797 EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWKendrackQuest","GLOBAL",5)~ THEN BEGIN 63 // from:
  SAY @117
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWSHALD1")~ THEN BEGIN 64 // from:
  SAY @118
  IF ~~ THEN DO ~Enemy()~ EXIT
END
