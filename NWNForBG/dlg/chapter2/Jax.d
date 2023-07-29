// Восточная дорога, Лагерь археологов, Джакс - человек. Этот старик, похоже, забывчив и раздражителен.

BEGIN ~JAX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("JaxQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  IsGabber(Player1)~ THEN REPLY @4 GOTO 3
  IF ~  !IsGabber(Player1)~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @11 GOTO 6
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY @11 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @12
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY @27
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 12
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @35
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @39
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 19.1 7.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~~ THEN REPLY @42 GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 19.2 7.2
  SAY @43
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~~ THEN REPLY @42 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 10.1 11.1
  SAY @44
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @45 GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @46 GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 10.2 11.2
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",1)GiveGoldForce(300)SetGlobal("Prepayment","LOCALS",1)~ UNSOLVED_JOURNAL @99363 EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY @50
  IF ~~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @99363 EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY @51
  IF ~~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @99363 EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("JaxQuest","GLOBAL",0)!PartyHasItem("StoryRac")~ THEN BEGIN 25 // from:
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 1
  IF ~~ THEN REPLY @54 GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.2
  SAY @55
  IF ~~ THEN GOTO 3
END

// --------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("JaxQuest","GLOBAL",0)PartyHasItem("StoryRac")~ THEN BEGIN 27 // from:
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 28
  IF ~~ THEN REPLY @58 GOTO 20
  IF ~  PartyHasItem("StoryRac")~ THEN REPLY @59 GOTO 29
  IF ~~ THEN REPLY @60 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @61
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 27.3
  SAY @62
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @63 GOTO 31
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @63 GOTO 32
  IF ~~ THEN REPLY @64 GOTO 33
  IF ~~ THEN REPLY @65 GOTO 34
  IF ~~ THEN REPLY @66 GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 27.4
  SAY @67
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY @68
  IF ~~ THEN REPLY @65 GOTO 36
  IF ~~ THEN REPLY @69 GOTO 38
END

IF ~~ THEN BEGIN 32 // from: 29.2
  SAY @70
  IF ~~ THEN REPLY @64 GOTO 33
  IF ~~ THEN REPLY @71 GOTO 34
  IF ~~ THEN REPLY @69 GOTO 38
END

IF ~~ THEN BEGIN 33 // from: 29.3
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 36
  IF ~~ THEN REPLY @69 GOTO 38
END

IF ~~ THEN BEGIN 34 // from: 29.4
  SAY @74
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 34
  SAY @75
  IF ~  Global("Prepayment","LOCALS",0)~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",2)AddexperienceParty(80000)GiveGoldForce(1500)TakePartyItem("StoryRac")EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99436 EXIT
  IF ~  Global("Prepayment","LOCALS",1)~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",2)AddexperienceParty(80000)GiveGoldForce(1200)TakePartyItem("StoryRac")EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99436 EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.5
  SAY @77
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @63 GOTO 31
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @63 GOTO 32
  IF ~~ THEN REPLY @64 GOTO 33
  IF ~~ THEN REPLY @65 GOTO 34
  IF ~~ THEN REPLY @69 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 29.4
  SAY @78
  IF ~  Global("Prepayment","LOCALS",0)~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",2)AddexperienceParty(80000)GiveGoldForce(1750)TakePartyItem("StoryRac")EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99436 EXIT
  IF ~  Global("Prepayment","LOCALS",1)~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",2)AddexperienceParty(80000)GiveGoldForce(1450)TakePartyItem("StoryRac")EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99436 EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.2 32.3 33.2 35.5
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 39
  IF ~~ THEN REPLY @81 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @82
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39
  SAY @75
  IF ~  Global("Prepayment","LOCALS",0)~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",2)AddexperienceParty(80000)GiveGoldForce(2000)TakePartyItem("StoryRac")EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99436 EXIT
  IF ~  Global("Prepayment","LOCALS",1)~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",2)AddexperienceParty(80000)GiveGoldForce(1700)TakePartyItem("StoryRac")EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99436 EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY @83
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 40
  SAY @75
  IF ~~ THEN DO ~SetGlobal("JaxQuest","GLOBAL",6)EraseJournalEntry(@99363)EscapeArea()~ SOLVED_JOURNAL @99444 EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("JaxQuest","GLOBAL",1)~ THEN BEGIN 43 // from:
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 44
  IF ~  PartyHasItem("StoryRac")~ THEN REPLY @87 GOTO 29
  IF ~~ THEN REPLY @88 GOTO 45
  IF ~  Global("Prepayment","LOCALS",1)~ THEN REPLY @89 GOTO 46
  IF ~  Global("Prepayment","LOCALS",0)~ THEN REPLY @89 GOTO 47
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 43.3
  SAY @92
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.4
  SAY @93
  IF ~~ THEN REPLY @86 GOTO 44
  IF ~~ THEN REPLY @91 GOTO 45
END

IF ~~ THEN BEGIN 47 // from: 43.5
  SAY @94
  IF ~~ THEN REPLY @86 GOTO 44
  IF ~~ THEN REPLY @91 GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY @95
  IF ~~ THEN EXIT
END
