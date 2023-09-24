// Северная дорога, Геррол - фермер человек Этот мещанин озабоченно хмурится, спеша по своим делам.

BEGIN ~NWGERROL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("FarmerQuest","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("FarmerQuest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~  Global("FarmerQuest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN DO ~SetGlobal("FarmerQuest","GLOBAL",2)~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 18
  IF ~~ THEN REPLY @14 GOTO 19
  IF ~~ THEN REPLY @15 GOTO 20
  IF ~~ THEN REPLY @16 GOTO 21
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @18
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @19
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @20
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 3
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @26
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @29
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 9.4
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 10
  SAY @32
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 26
END

IF ~~ THEN BEGIN 16 // from: 14
  SAY @39
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12
  SAY @40
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 4.1
  SAY @41
  IF ~~ THEN REPLY @14 GOTO 19
  IF ~~ THEN REPLY @15 GOTO 20
  IF ~~ THEN REPLY @16 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 4.2
  SAY @42
  IF ~~ THEN REPLY @13 GOTO 18
  IF ~~ THEN REPLY @15 GOTO 20
  IF ~~ THEN REPLY @16 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 4.3
  SAY @43
  IF ~~ THEN REPLY @13 GOTO 18
  IF ~~ THEN REPLY @14 GOTO 19
  IF ~~ THEN REPLY @16 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 4.4
  SAY @44
  IF ~  Global("FarmerQuest","GLOBAL",1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY @45
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY @46
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 15.3
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @49 GOTO 28
  IF ~~ THEN REPLY @50 GOTO 29
  IF ~~ THEN REPLY @51 GOTO 30
  IF ~~ THEN REPLY @52 GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 15.4
  SAY @53
  IF ~~ THEN DO ~SetGlobal("FarmerQuest","GLOBAL",2)EraseJournalEntry(@97247)~ UNSOLVED_JOURNAL @98954 EXIT
END

IF ~~ THEN BEGIN 26 // from: 15.5
  SAY @55
  IF ~~ THEN DO ~SetGlobal("FarmerQuest","GLOBAL",2)EraseJournalEntry(@97247)~ UNSOLVED_JOURNAL @98954 EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @56
  IF ~~ THEN REPLY @49 GOTO 28
  IF ~~ THEN REPLY @50 GOTO 29
  IF ~~ THEN REPLY @51 GOTO 30
  IF ~~ THEN REPLY @52 GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 24.2
  SAY @57
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 29
  IF ~~ THEN REPLY @51 GOTO 30
  IF ~~ THEN REPLY @52 GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 24.3
  SAY @58
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @49 GOTO 28
  IF ~~ THEN REPLY @51 GOTO 30
  IF ~~ THEN REPLY @52 GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 24.4
  SAY @59
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @49 GOTO 28
  IF ~~ THEN REPLY @50 GOTO 29
  IF ~~ THEN REPLY @52 GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 24.5
  SAY @60
  IF ~~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 26
END
// --------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",2)Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN BEGIN 32 // from:
  SAY @61
  IF ~  PartyHasItem("NWHEADDG")Global("DergiabDone","LOCALS",0)~ THEN REPLY @62 GOTO 33
  IF ~  Dead("NWLEAH")PartyHasItem("NWLEAHRG")Global("LeahDead","LOCALS",0)~ THEN REPLY @63 GOTO 34
  IF ~  OR(2)Global("LeahSaved","GLOBAL",1)InMyArea("NWLEAH")GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @66 GOTO 38
  IF ~~ THEN REPLY @67 GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 40
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @70 GOTO 41
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @71 GOTO 69
  IF ~~ THEN REPLY @72 GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 43
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @75 GOTO 44
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @76 GOTO 45
  IF ~~ THEN REPLY @72 GOTO 46
END

IF ~~ THEN BEGIN 35 // from: 32.3
  SAY @77
  IF ~~ THEN REPLY @78 GOTO 47
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @75 GOTO 48
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @71 GOTO 49
  IF ~~ THEN REPLY @72 GOTO 50
END

IF ~~ THEN BEGIN 36 // from: 32.4
  SAY @47
  IF ~  Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",0)Global("LeahSaved","GLOBAL",0)~ THEN REPLY @79 GOTO 51
  IF ~  Global("DergiabDone","LOCALS",0)~ THEN REPLY @48 GOTO 52
  IF ~~ THEN REPLY @49 GOTO 53
  IF ~~ THEN REPLY @50 GOTO 54
  IF ~  Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @51 GOTO 55
  IF ~~ THEN REPLY @52 GOTO 56
END

IF ~~ THEN BEGIN 37 // from: 32.5
  SAY @80
  IF ~~ THEN REPLY @13 GOTO 57
  IF ~~ THEN REPLY @14 GOTO 58
  IF ~~ THEN REPLY @15 GOTO 59
  IF ~~ THEN REPLY @16 GOTO 60
END

IF ~~ THEN BEGIN 38 // from: 32.6
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.7
  SAY @82
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.1
  SAY @83
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @70 GOTO 41
  IF ~~ THEN REPLY @84 GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 33.2
  SAY @85
  IF ~~ THEN DO ~GiveGoldForce(1200)SetGlobal("DergiabDone","LOCALS",1)TakePartyItem("NWHEADDG")AddexperienceParty(30000)EraseJournalEntry(@98952)~ SOLVED_JOURNAL @99035 EXIT
END

IF ~~ THEN BEGIN 42 // from: 33.3
  SAY @87
  IF ~~ THEN DO ~GiveGoldForce(900)SetGlobal("DergiabDone","LOCALS",1)TakePartyItem("NWHEADDG")AddexperienceParty(30000)EraseJournalEntry(@98952)~ SOLVED_JOURNAL @99035 EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.1
  SAY @88
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @75 GOTO 44
  IF ~~ THEN REPLY @84 GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 34.2
  SAY @89
  IF ~~ THEN DO ~GiveGoldForce(1200)
IncrementGlobal("Reputation","LOCALS",-1)
SetGlobal("LeahDead","LOCALS",1)
TakePartyItem("NWLEAHRG")
AddexperienceParty(30000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99039 EXIT
END

IF ~~ THEN BEGIN 45 // from: 34.3
  SAY @91
  IF ~  !Global("Reputation","LOCALS",1)~ THEN DO ~IncrementGlobal("Reputation","LOCALS",1)
SetGlobal("LeahDead","LOCALS",1)
TakePartyItem("NWLEAHRG")
AddexperienceParty(30000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99039 EXIT
  IF ~  Global("Reputation","LOCALS",1)~ THEN DO ~SetGlobal("Reputation","LOCALS",0)
ReputationInc(1)
SetGlobal("LeahDead","LOCALS",1)
TakePartyItem("NWLEAHRG")
AddexperienceParty(30000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99039 EXIT
END

IF ~~ THEN BEGIN 46 // from: 34.4
  SAY @87
  IF ~~ THEN DO ~GiveGoldForce(900)SetGlobal("LeahDead","LOCALS",1)TakePartyItem("NWLEAHRG")AddexperienceParty(30000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99039 EXIT
END


IF ~~ THEN BEGIN 47 // from: 35.1
  SAY @92
  IF ~~ THEN DO ~IncrementGlobal("Reputation","LOCALS",-1)GiveGoldForce(2500)SetGlobal("LeahSaved","GLOBAL",2)AddexperienceParty(45000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99042 EXIT
END

IF ~~ THEN BEGIN 48 // from: 35.2
  SAY @89
  IF ~~ THEN DO ~IncrementGlobal("Reputation","LOCALS",-1)GiveGoldForce(2500)SetGlobal("LeahSaved","GLOBAL",2)AddexperienceParty(45000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99042 EXIT
END

IF ~~ THEN BEGIN 49 // from: 35.3
  SAY @91
  IF ~  !Global("Reputation","LOCALS",1)~ THEN DO ~IncrementGlobal("Reputation","LOCALS",1)
SetGlobal("LeahSaved","GLOBAL",2)
AddexperienceParty(45000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99042 EXIT
  IF ~  Global("Reputation","LOCALS",1)~ THEN DO ~SetGlobal("Reputation","LOCALS",0)
ReputationInc(1)
SetGlobal("LeahSaved","GLOBAL",2)
AddexperienceParty(45000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99042 EXIT
END

IF ~~ THEN BEGIN 50 // from: 35.4
  SAY @87
  IF ~~ THEN DO ~GiveGoldForce(2000)SetGlobal("LeahSaved","GLOBAL",2)AddexperienceParty(45000)EraseJournalEntry(@98954)~ SOLVED_JOURNAL @99042 EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.1
  SAY @94
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 51.1
  SAY @95
  IF ~  Global("DergiabDone","LOCALS",0)~ THEN REPLY @48 GOTO 52
  IF ~~ THEN REPLY @49 GOTO 53
  IF ~~ THEN REPLY @50 GOTO 54
  IF ~  Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @51 GOTO 55
  IF ~~ THEN REPLY @52 GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 36.2
  SAY @56
  IF ~  Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",0)Global("LeahSaved","GLOBAL",0)~ THEN REPLY @79 GOTO 51
  IF ~~ THEN REPLY @49 GOTO 53
  IF ~~ THEN REPLY @50 GOTO 54
  IF ~  Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @51 GOTO 55
  IF ~~ THEN REPLY @52 GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 36.3
  SAY @57
  IF ~  Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",0)Global("LeahSaved","GLOBAL",0)~ THEN REPLY @79 GOTO 51
  IF ~  Global("DergiabDone","LOCALS",0)~ THEN REPLY @48 GOTO 52
  IF ~~ THEN REPLY @50 GOTO 54
  IF ~  Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @51 GOTO 55
  IF ~~ THEN REPLY @52 GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 36.4
  SAY @58
  IF ~  Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",0)Global("LeahSaved","GLOBAL",0)~ THEN REPLY @79 GOTO 51
  IF ~  Global("DergiabDone","LOCALS",0)~ THEN REPLY @48 GOTO 52
  IF ~~ THEN REPLY @49 GOTO 53
  IF ~  Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @51 GOTO 55
  IF ~~ THEN REPLY @52 GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 36.5
  SAY @96
  IF ~  Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",0)Global("LeahSaved","GLOBAL",0)~ THEN REPLY @79 GOTO 51
  IF ~  Global("DergiabDone","LOCALS",0)~ THEN REPLY @48 GOTO 52
  IF ~~ THEN REPLY @49 GOTO 53
  IF ~~ THEN REPLY @50 GOTO 54
  IF ~~ THEN REPLY @52 GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 36.6
  SAY @60
  IF ~  PartyHasItem("NWHEADDG")Global("DergiabDone","LOCALS",0)~ THEN REPLY @62 GOTO 33
  IF ~  Dead("NWLEAH")PartyHasItem("NWLEAHRG")Global("LeahDead","LOCALS",0)~ THEN REPLY @63 GOTO 34
  IF ~  OR(2)Global("LeahSaved","GLOBAL",1)InMyArea("NWLEAH")GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @5 GOTO 38
END

IF ~~ THEN BEGIN 57 // from: 37.1
  SAY @41
  IF ~~ THEN REPLY @14 GOTO 58
  IF ~~ THEN REPLY @15 GOTO 59
  IF ~~ THEN REPLY @16 GOTO 60
END

IF ~~ THEN BEGIN 58 // from: 37.2
  SAY @42
  IF ~~ THEN REPLY @13 GOTO 57
  IF ~~ THEN REPLY @15 GOTO 59
  IF ~~ THEN REPLY @16 GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 37.3
  SAY @43
  IF ~~ THEN REPLY @13 GOTO 57
  IF ~~ THEN REPLY @14 GOTO 58
  IF ~~ THEN REPLY @16 GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 37.4
  SAY @44
  IF ~  PartyHasItem("NWHEADDG")Global("DergiabDone","LOCALS",0)~ THEN REPLY @62 GOTO 33
  IF ~  Dead("NWLEAH")PartyHasItem("NWLEAHRG")Global("LeahDead","LOCALS",0)~ THEN REPLY @63 GOTO 34
  IF ~  OR(2)Global("LeahSaved","GLOBAL",1)InMyArea("NWLEAH")GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @64 GOTO 35
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @5 GOTO 38
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",2)Global("DergiabDone","LOCALS",1)Global("LeahDead","LOCALS",0)GlobalLT("LeahSaved","GLOBAL",2)~ THEN BEGIN 62 // from:
  SAY @97
  IF ~  Dead("NWLEAH")PartyHasItem("NWLEAHRG")Global("LeahDead","LOCALS",0)~ THEN REPLY @63 GOTO 34
  IF ~  OR(2)Global("LeahSaved","GLOBAL",1)InMyArea("NWLEAH")GlobalLT("LeahSaved","GLOBAL",2)~ THEN REPLY @98 GOTO 35
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @5 GOTO 38
END

// --------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",2)Global("DergiabDone","LOCALS",1)Global("LeahSaved","GLOBAL",2)~ THEN BEGIN 63 // from:
  SAY @99
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63
  SAY @100
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @5 GOTO 38
END

// --------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",2)Global("DergiabDone","LOCALS",0)Global("LeahSaved","GLOBAL",2)~ THEN BEGIN 65 // from:
  SAY @99
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65
  SAY @101
  IF ~  PartyHasItem("NWHEADDG")Global("DergiabDone","LOCALS",0)~ THEN REPLY @62 GOTO 33
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @5 GOTO 38
END

// --------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",2)Global("DergiabDone","LOCALS",0)Global("LeahDead","LOCALS",1)~ THEN BEGIN 67 // from:
  SAY @102
  IF ~  PartyHasItem("NWHEADDG")Global("DergiabDone","LOCALS",0)~ THEN REPLY @62 GOTO 33
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @5 GOTO 38
END

// --------------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("FarmerQuest","GLOBAL",2)Global("DergiabDone","LOCALS",1)Global("LeahDead","LOCALS",1)~ THEN BEGIN 68 // from:
  SAY @97
  IF ~~ THEN REPLY @36 GOTO 36
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @5 GOTO 38
END

IF ~~ THEN BEGIN 69 // from: 34.3
  SAY @91
  IF ~  !Global("Reputation","LOCALS",1)~ THEN DO ~IncrementGlobal("Reputation","LOCALS",1)SetGlobal("DergiabDone","LOCALS",1)TakePartyItem("NWHEADDG")AddexperienceParty(30000)EraseJournalEntry(@98952)~ SOLVED_JOURNAL @99035 EXIT
  IF ~  Global("Reputation","LOCALS",1)~ THEN DO ~SetGlobal("Reputation","LOCALS",0)ReputationInc(1)SetGlobal("DergiabDone","LOCALS",1)TakePartyItem("NWHEADDG")AddexperienceParty(30000)EraseJournalEntry(@98952)~ SOLVED_JOURNAL @99035 EXIT
END
