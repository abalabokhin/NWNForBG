// Порт-Лласт таверна Герб союза Элайт квест найти камни

BEGIN ~NWAELAIH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~ IsGabber(Player1)~ THEN REPLY @2 GOTO 2
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
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1 2 3
  SAY @9
  IF ~  Race(LastTalkedToBy(Myself),ELF)~ THEN REPLY @10 GOTO 6
  IF ~  !Race(LastTalkedToBy(Myself),ELF)~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @14
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @15
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6 7
  SAY @16
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 5.5
  SAY @22
  IF ~  Global("AelaithStore","LOCALS",0)~ THEN REPLY @23 GOTO 16
  IF ~  Global("AelaithStore","LOCALS",1)~ THEN REPLY @24 GOTO 26
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 8
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 18
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 12.2 12.3
  SAY @30
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY @31
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 18
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 22
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @37
  IF ~~ THEN REPLY @13 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY @38
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY @39
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 23
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @43 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.1
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @46 DO ~SetGlobal("AelaithStore","LOCALS",1)~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 16.2
  SAY @47
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 16.3 23.2
  SAY @48
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @49
  IF ~  Global("AelaithStore","LOCALS",0)~ THEN DO ~SetGlobal("AelaithStore","LOCALS",1)StartStore("NWAELAIH",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("AelaithStore","LOCALS",0)~ THEN DO ~StartStore("NWAELAIH",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.2
  SAY @50
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 21.1 21.2
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @53 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 22.2
  SAY @54
  IF ~~ THEN DO ~SetGlobal("KnowAboutQuest","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 31
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @59 GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY @60
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29
  SAY @61
  IF ~~ THEN REPLY @57 GOTO 31
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @59 GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @62
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @59 GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 27.3
  SAY @63
  IF ~ ~ THEN GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 27.4
  SAY @64
  IF ~~ THEN DO ~SetGlobal("KnowAboutQuest","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32
  SAY @65
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34
  SAY @66
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35
  SAY @67
  IF ~  Global("AelaithQuest","GLOBAL",0)~ THEN DO ~SetGlobal("AelaithQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @95860 EXIT
  IF ~  GlobalGT("AelaithQuest","GLOBAL",0)~ THEN EXIT
END

// ----------------------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AelaithQuest","GLOBAL",0)~ THEN BEGIN 37 // from:
  SAY @69
  IF ~  Global("KnowAboutQuest","LOCALS",1)~ THEN REPLY @70 GOTO 38
  IF ~  Global("AelaithStore","LOCALS",1)~ THEN REPLY @71 GOTO 26
  IF ~  Global("KnowAboutQuest","LOCALS",0)~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @72
  IF ~~ THEN REPLY @56 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 31
  IF ~~ THEN REPLY @58 GOTO 32
  IF ~~ THEN REPLY @59 GOTO 33
END

// --------------------------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN BEGIN 39 // from:
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 34
  IF ~  GlobalLT("AelaithQuest","GLOBAL",3)
OR(3)PartyHasItem("NWVGEM")PartyHasItem("NWZGEM")PartyHasItem("NWSGEM")
OR(3)!PartyHasItem("NWVGEM")!PartyHasItem("NWZGEM")!PartyHasItem("NWSGEM")~ THEN REPLY @75 GOTO 40
  IF ~  Global("AelaithQuest","GLOBAL",1)
PartyHasItem("NWVGEM")PartyHasItem("NWZGEM")PartyHasItem("NWSGEM")~ THEN REPLY @76 GOTO 54
  IF ~  Global("AelaithQuest","GLOBAL",3)
OR(3)PartyHasItem("NWVGEM")PartyHasItem("NWZGEM")PartyHasItem("NWSGEM")~ THEN REPLY @77 GOTO 41
  IF ~  Global("AelaithStore","LOCALS",1)~ THEN REPLY @71 GOTO 26
  IF ~  Global("AelaithStore","LOCALS",0)~ THEN REPLY @23 GOTO 62
  IF ~~ THEN REPLY @78 GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 39.7
  SAY @79
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.2
  SAY @80
  IF ~  PartyHasItem("NWVGEM")~ THEN REPLY @81 GOTO 43
  IF ~  PartyHasItem("NWZGEM")~ THEN REPLY @82 GOTO 44
  IF ~  PartyHasItem("NWSGEM")~ THEN REPLY @83 GOTO 45
END

IF ~~ THEN BEGIN 41 // from: 39.4
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 46
  IF ~~ THEN REPLY @86 GOTO 47
  IF ~~ THEN REPLY @87 GOTO 48
END

IF ~~ THEN BEGIN 43 // from: 40.1
  SAY @88
  IF ~~ THEN DO ~IncrementGlobal("AelaithQuest","GLOBAL",1)TakePartyItem("NWVGEM")GiveGoldForce(1500)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 40.2
  SAY @89
  IF ~~ THEN DO ~IncrementGlobal("AelaithQuest","GLOBAL",1)TakePartyItem("NWZGEM")GiveGoldForce(1500)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 40.3
  SAY @90
  IF ~~ THEN DO ~IncrementGlobal("AelaithQuest","GLOBAL",1)TakePartyItem("NWSGEM")GiveGoldForce(1500)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.1
  SAY @91
  IF ~~ THEN DO ~IncrementGlobal("AelaithQuest","GLOBAL",1)
TakePartyItem("NWZGEM")
TakePartyItem("NWVGEM")
TakePartyItem("NWSGEM")
AddexperienceParty(60000)
GiveGoldForce(3000)
GiveItemCreate("NWAELITM",LastTalkedToBy,1,1,1)
EraseJournalEntry(@95860)
EscapeArea()~ SOLVED_JOURNAL @95947 EXIT
END

IF ~~ THEN BEGIN 47 // from: 41.2
  SAY @93
  IF ~~ THEN REPLY @85 GOTO 49
  IF ~~ THEN REPLY @94 GOTO 50
END

IF ~~ THEN BEGIN 48 // from: 41.3
  SAY @95
  IF ~~ THEN REPLY @85 GOTO 46
  IF ~~ THEN REPLY @96 GOTO 51
  IF ~~ THEN REPLY @97 GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY @98
  IF ~~ THEN DO ~IncrementGlobal("AelaithQuest","GLOBAL",1)
TakePartyItem("NWZGEM")
TakePartyItem("NWVGEM")
TakePartyItem("NWSGEM")
AddexperienceParty(60000)
GiveGoldForce(4000)
GiveItemCreate("NWAELITM",LastTalkedToBy,1,1,1)
EraseJournalEntry(@95860)
EscapeArea()~ SOLVED_JOURNAL @95947 EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2
  SAY @95
  IF ~~ THEN REPLY @85 GOTO 49
  IF ~~ THEN REPLY @97 GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY @99
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY @100
  IF ~~ THEN DO ~IncrementGlobal("AelaithQuest","GLOBAL",1)
TakePartyItem("NWZGEM")
TakePartyItem("NWVGEM")
TakePartyItem("NWSGEM")
AddexperienceParty(30000)
GiveGoldForce(5000)
GiveItemCreate("NWAELITM",LastTalkedToBy,1,1,1)
ReputationInc(-1)
EraseJournalEntry(@95860)
EscapeArea()~ SOLVED_JOURNAL @95947 EXIT
END

IF ~~ THEN BEGIN 52 // from: 48.3 50.2
  SAY @101
  IF ~~ THEN DO ~Enemy()EraseJournalEntry(@95860)Attack(Player1)~ SOLVED_JOURNAL @95957 EXIT
END

IF ~~ THEN BEGIN 54 // from: 39.3
  SAY @103
  IF ~~ THEN REPLY @104 GOTO 61
  IF ~~ THEN REPLY @86 GOTO 55
  IF ~~ THEN REPLY @87 GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 54.1
  SAY @91
  IF ~~ THEN DO ~SetGlobal("AelaithQuest","GLOBAL",4)
TakePartyItem("NWZGEM")
TakePartyItem("NWVGEM")
TakePartyItem("NWSGEM")
AddexperienceParty(60000)
GiveGoldForce(6000)
GiveItemCreate("NWAELITM",LastTalkedToBy,1,1,1)
EraseJournalEntry(@95860)
EscapeArea()~ SOLVED_JOURNAL @95947 EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY @93
  IF ~~ THEN REPLY @85 GOTO 57
  IF ~~ THEN REPLY @94 GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY @98
  IF ~~ THEN DO ~SetGlobal("AelaithQuest","GLOBAL",4)
TakePartyItem("NWZGEM")
TakePartyItem("NWVGEM")
TakePartyItem("NWSGEM")
AddexperienceParty(60000)
GiveGoldForce(7000)
GiveItemCreate("NWAELITM",LastTalkedToBy,1,1,1)
EraseJournalEntry(@95860)
EscapeArea()~ SOLVED_JOURNAL @95947 EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY @95
  IF ~~ THEN REPLY @85 GOTO 57
  IF ~~ THEN REPLY @97 GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY @95
  IF ~~ THEN REPLY @85 GOTO 61
  IF ~~ THEN REPLY @96 GOTO 59
  IF ~~ THEN REPLY @97 GOTO 52
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY @105
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @100
  IF ~~ THEN DO ~SetGlobal("AelaithQuest","GLOBAL",4)
TakePartyItem("NWZGEM")
TakePartyItem("NWVGEM")
TakePartyItem("NWSGEM")
GiveGoldForce(7000)
AddexperienceParty(30000)
GiveItemCreate("NWAELITM",LastTalkedToBy,1,1,1)
ReputationInc(-1)
EraseJournalEntry(@95860)
EscapeArea()~ SOLVED_JOURNAL @95947 EXIT
END

IF ~~ THEN BEGIN 62 // from: 39.6
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 63
  IF ~~ THEN REPLY @42 GOTO 64
  IF ~~ THEN REPLY @43 GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @46 DO ~SetGlobal("AelaithStore","LOCALS",1)~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 62.2
  SAY @47
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 65 // from: 62.3 63.2
  SAY @106
  IF ~~ THEN REPLY @74 GOTO 34
  IF ~  GlobalLT("AelaithQuest","GLOBAL",3)
OR(3)PartyHasItem("NWVGEM")PartyHasItem("NWZGEM")PartyHasItem("NWSGEM")
OR(3)!PartyHasItem("NWVGEM")!PartyHasItem("NWZGEM")!PartyHasItem("NWSGEM")~ THEN REPLY @75 GOTO 40
  IF ~  Global("AelaithQuest","GLOBAL",1)
PartyHasItem("NWVGEM")PartyHasItem("NWZGEM")PartyHasItem("NWSGEM")~ THEN REPLY @76 GOTO 54
  IF ~  Global("AelaithQuest","GLOBAL",3)
OR(3)PartyHasItem("NWVGEM")PartyHasItem("NWZGEM")PartyHasItem("NWSGEM")~ THEN REPLY @77 GOTO 41
  IF ~~ THEN REPLY @78 GOTO 42
END
