BEGIN ~NWARIBE1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY @12
  IF ~  PartyHasItem("NWCREWT1")~ THEN REPLY @13 GOTO 7
  IF ~  PartyHasItem("NWCREWT2")~ THEN REPLY @14 DO ~SetGlobal("NWBrainworm","GLOBAL",1)~ GOTO 8
  IF ~  PartyHasItem("NWCREWT3")~ THEN REPLY @15 GOTO 9
  IF ~  PartyHasItem("NWCREWT4")~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @18
  IF ~  GlobalLT("NWWtDeepCreature","GLOBAL",3)~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT1")DestroyItem("NWCREWT1")GiveGoldForce(2000)AddexperienceParty(100000)~ EXIT
  IF ~  Global("NWWtDeepCreature","GLOBAL",3)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @19
  IF ~  GlobalLT("NWWtDeepCreature","GLOBAL",3)~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT2")DestroyItem("NWCREWT2")GiveGoldForce(2000)AddexperienceParty(100000)~ EXIT
  IF ~  Global("NWWtDeepCreature","GLOBAL",3)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @20
  IF ~  GlobalLT("NWWtDeepCreature","GLOBAL",3)~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT3")DestroyItem("NWCREWT3")GiveGoldForce(2000)AddexperienceParty(100000)~ EXIT
  IF ~  Global("NWWtDeepCreature","GLOBAL",3)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @21
  IF ~  GlobalLT("NWWtDeepCreature","GLOBAL",3)~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT4")DestroyItem("NWCREWT4")GiveGoldForce(2000)AddexperienceParty(100000)~ EXIT
  IF ~  Global("NWWtDeepCreature","GLOBAL",3)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @26
  IF ~  PartyHasItem("NWCREWT1")~ THEN REPLY @27 GOTO 14
  IF ~  PartyHasItem("NWCREWT2")~ THEN REPLY @27 GOTO 63
  IF ~  PartyHasItem("NWCREWT3")~ THEN REPLY @27 GOTO 64
  IF ~  PartyHasItem("NWCREWT4")~ THEN REPLY @27 GOTO 65
  IF ~  PartyHasItem("NWCREWT1")~ THEN REPLY @28 GOTO 15
  IF ~  PartyHasItem("NWCREWT2")~ THEN REPLY @28 GOTO 66
  IF ~  PartyHasItem("NWCREWT3")~ THEN REPLY @28 GOTO 67
  IF ~  PartyHasItem("NWCREWT4")~ THEN REPLY @28 GOTO 68
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @29
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @30
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)
TakePartyItem("NWCREWT1")DestroyItem("NWCREWT1")GiveGoldForce(2000)AddexperienceParty(100000)SetGlobal("NWMakingMedicine","GLOBAL",1)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 63 // from: 12.2
  SAY @30
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)
TakePartyItem("NWCREWT2")DestroyItem("NWCREWT2")GiveGoldForce(2000)AddexperienceParty(100000)SetGlobal("NWMakingMedicine","GLOBAL",1)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 64 // from: 12.3
  SAY @30
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)
TakePartyItem("NWCREWT3")DestroyItem("NWCREWT3")GiveGoldForce(2000)AddexperienceParty(100000)SetGlobal("NWMakingMedicine","GLOBAL",1)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 65 // from: 12.4
  SAY @30
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)
TakePartyItem("NWCREWT4")DestroyItem("NWCREWT4")GiveGoldForce(2000)AddexperienceParty(100000)SetGlobal("NWMakingMedicine","GLOBAL",1)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.5
  SAY @32
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT1")DestroyItem("NWCREWT1")GiveGoldForce(2000)AddexperienceParty(100000)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 66 // from: 12.6
  SAY @32
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",2)TakePartyItem("NWCREWT2")DestroyItem("NWCREWT1")GiveGoldForce(2000)AddexperienceParty(100000)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 67 // from: 12.7
  SAY @32
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT3")DestroyItem("NWCREWT3")GiveGoldForce(2000)AddexperienceParty(100000)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 68 // from: 12.8
  SAY @32
  IF ~~ THEN DO ~IncrementGlobal("NWWtDeepCreature","GLOBAL",1)TakePartyItem("NWCREWT4")DestroyItem("NWCREWT4")GiveGoldForce(2000)AddexperienceParty(100000)EraseJournalEntry(@89835)EraseJournalEntry(@89836)~ UNSOLVED_JOURNAL @89868 EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 17
  IF ~~ THEN REPLY @35 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @40
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @41
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 60
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 22
  IF ~~ THEN REPLY @46 GOTO 23
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 60 // from: 19.1
  SAY @48
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @49
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 22 // from: 19.3
  SAY @50
  IF ~~ THEN REPLY @43 GOTO 20
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 19.4
  SAY @51
  IF ~~ THEN REPLY @43 GOTO 20
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 19.5
  SAY @52
  IF ~~ THEN REPLY @43 GOTO 20
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 22
  IF ~~ THEN REPLY @46 GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY @53
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~~ THEN REPLY @55 GOTO 27
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 30
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @60
  IF ~~ THEN DO ~SetGlobal("NWNChapter","GLOBAL",1)GiveGoldForce(800)~ UNSOLVED_JOURNAL @89835 EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 31
  IF ~~ THEN REPLY @64 GOTO 32
  IF ~~ THEN REPLY @65 GOTO 33
  IF ~~ THEN REPLY @66 GOTO 34
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @67
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~~ THEN REPLY @55 GOTO 27
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 30
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 25.4
  SAY @68
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~~ THEN REPLY @55 GOTO 27
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @58 GOTO 30
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 25.5
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 36
  IF ~~ THEN REPLY @71 GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY @72
  IF ~~ THEN REPLY @64 GOTO 32
  IF ~~ THEN REPLY @65 GOTO 33
  IF ~~ THEN REPLY @66 GOTO 34
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 38
  IF ~~ THEN REPLY @76 GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 27.3
  SAY @77
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 27.4
  SAY @78
  IF ~~ THEN REPLY @63 GOTO 31
  IF ~~ THEN REPLY @64 GOTO 32
  IF ~~ THEN REPLY @65 GOTO 33
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 27.6
  SAY @79
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.1
  SAY @80
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~~ THEN REPLY @55 GOTO 27
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 30.2
  SAY @81
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 32.1
  SAY @82
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 32.2
  SAY @83
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 33.1
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 42
  IF ~~ THEN REPLY @86 GOTO 43
  IF ~~ THEN REPLY @87 GOTO 44
  IF ~~ THEN REPLY @88 GOTO 45
  IF ~~ THEN REPLY @89 GOTO 46
  IF ~~ THEN REPLY @90 GOTO 47
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY @91
  IF ~~ THEN REPLY @63 GOTO 31
  IF ~~ THEN REPLY @65 GOTO 33
  IF ~~ THEN REPLY @66 GOTO 34
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY @92
  IF ~~ THEN REPLY @86 GOTO 43
  IF ~~ THEN REPLY @87 GOTO 44
  IF ~~ THEN REPLY @88 GOTO 45
  IF ~~ THEN REPLY @89 GOTO 46
  IF ~~ THEN REPLY @90 GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 40.2
  SAY @93
  IF ~~ THEN REPLY @85 GOTO 42
  IF ~~ THEN REPLY @87 GOTO 44
  IF ~~ THEN REPLY @88 GOTO 45
  IF ~~ THEN REPLY @89 GOTO 46
  IF ~~ THEN REPLY @90 GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 40.3
  SAY @94
  IF ~~ THEN REPLY @85 GOTO 42
  IF ~~ THEN REPLY @86 GOTO 43
  IF ~~ THEN REPLY @88 GOTO 45
  IF ~~ THEN REPLY @89 GOTO 46
  IF ~~ THEN REPLY @90 GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 40.4
  SAY @95
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 46 // from: 40.5
  SAY @96
  IF ~~ THEN REPLY @85 GOTO 42
  IF ~~ THEN REPLY @86 GOTO 43
  IF ~~ THEN REPLY @87 GOTO 44
  IF ~~ THEN REPLY @88 GOTO 45
  IF ~~ THEN REPLY @90 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 40.6
  SAY @84
  IF ~~ THEN REPLY @63 GOTO 31
  IF ~~ THEN REPLY @64 GOTO 32
  IF ~~ THEN REPLY @65 GOTO 33
  IF ~~ THEN REPLY @66 GOTO 34
  IF ~~ THEN REPLY @73 GOTO 61
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY @97
  IF ~~ THEN REPLY @85 GOTO 42
  IF ~~ THEN REPLY @86 GOTO 43
  IF ~~ THEN REPLY @89 GOTO 46
  IF ~~ THEN REPLY @90 GOTO 47
END

IF ~~ THEN BEGIN 61 // from: 45.1
  SAY @97
  IF ~  Global("NWNChapter","GLOBAL",0)~ THEN REPLY @54 GOTO 26
  IF ~~ THEN REPLY @55 GOTO 27
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 30
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @59 GOTO 35
END


// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("NWWtDeepCreature","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 49 // from:
  SAY @98
  IF ~~ THEN REPLY @99 GOTO 50
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @8 GOTO 5
  IF ~  OR(3)PartyHasItem("NWANONY1")PartyHasItem("NWANONY2")PartyHasItem("NWANONY3")~ THEN REPLY @100 GOTO 51
  IF ~~ THEN REPLY @101 DO ~StartStore("NWARIBE1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @102 GOTO 52
  IF ~~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 50 // from: 49.1
  SAY @103
  IF ~~ THEN REPLY @55 GOTO 27
  IF ~~ THEN REPLY @56 GOTO 28
  IF ~~ THEN REPLY @57 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 30
  IF ~~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 51 // from: 49.3
  SAY @104
  IF ~~ THEN REPLY @99 GOTO 50
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @101 DO ~StartStore("NWARIBE1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @102 GOTO 52
  IF ~~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 52 // from: 49.5
  SAY @105
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),1607)~ EXIT // CLERIC_HEAL
END

// ---------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("NWWtDeepCreature","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 53 // from:
  SAY @106
  IF ~~ THEN REPLY @99 GOTO 50
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @8 GOTO 5
  IF ~  OR(3)PartyHasItem("NWANONY1")PartyHasItem("NWANONY2")PartyHasItem("NWANONY3")~ THEN REPLY @100 GOTO 51
  IF ~~ THEN REPLY @101 DO ~StartStore("NWARIBE1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @102 GOTO 52
  IF ~~ THEN REPLY @59 GOTO 35
END

// ---------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("NWWtDeepCreature","GLOBAL",2)IsGabber(Player1)~ THEN BEGIN 54 // from:
  SAY @107
  IF ~~ THEN REPLY @99 GOTO 50
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @8 GOTO 5
  IF ~  OR(3)PartyHasItem("NWANONY1")PartyHasItem("NWANONY2")PartyHasItem("NWANONY3")~ THEN REPLY @100 GOTO 51
  IF ~~ THEN REPLY @101 DO ~StartStore("NWARIBE1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @102 GOTO 52
  IF ~~ THEN REPLY @59 GOTO 35
END

// ---------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("NWWtDeepCreature","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 55 // from:
  SAY @108
  IF ~~ THEN REPLY @99 GOTO 50
  IF ~  OR(4)PartyHasItem("NWCREWT1")PartyHasItem("NWCREWT2")PartyHasItem("NWCREWT3")PartyHasItem("NWCREWT4")~ THEN REPLY @109 GOTO 56
  IF ~  OR(3)PartyHasItem("NWANONY1")PartyHasItem("NWANONY2")PartyHasItem("NWANONY3")~ THEN REPLY @100 GOTO 51
  IF ~~ THEN REPLY @101 DO ~StartStore("NWARIBE1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @102 GOTO 52
  IF ~~ THEN REPLY @59 GOTO 35
END

IF ~~ THEN BEGIN 56 // from: 55.2
  SAY @110
  IF ~  PartyHasItem("NWCREWT1")~ THEN REPLY @13 GOTO 7
  IF ~  PartyHasItem("NWCREWT2")~ THEN REPLY @14 GOTO 8
  IF ~  PartyHasItem("NWCREWT3")~ THEN REPLY @15 GOTO 9
  IF ~  PartyHasItem("NWCREWT4")~ THEN REPLY @16 GOTO 10
END

// ---------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("NWWtDeepCreature","GLOBAL",4)Global("NWMakingMedicine","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 57 // from:
  SAY @111
  IF ~~ THEN REPLY @27 GOTO 58
  IF ~~ THEN REPLY @28 GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("NWMakingMedicine","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.2
  SAY @32
  IF ~~ THEN REPLY @101 DO ~StartStore("NWARIBE1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @102 GOTO 52
  IF ~~ THEN REPLY @112 EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 62 // from:
  SAY @113
  IF ~~ THEN EXIT
END

