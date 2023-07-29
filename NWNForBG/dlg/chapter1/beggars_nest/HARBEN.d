// Гнездо Нищих  Таверна Сияющий Змей  Харбен Ашенсмит  Полурослик Похоже, этот полурослик хорошо контролирует себя и ситуацию вокруг. Он ведет себя как предводитель, и его спутники ведут себя соответственно.
BEGIN ~HARBEN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~ IsGabber(Player1)Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~ IsGabber(Player1)GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("KnowBandit","GLOBAL",0)Global("KnowKult","GLOBAL",0)~ THEN GOTO 5
  IF ~  Global("KnowBandit","GLOBAL",1)Global("KnowKult","GLOBAL",0)~ THEN GOTO 6
  IF ~  Global("KnowBandit","GLOBAL",0)Global("KnowKult","GLOBAL",1)~ THEN GOTO 7
  IF ~  Global("KnowBandit","GLOBAL",1)Global("KnowKult","GLOBAL",1)~ THEN GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~  Global("KnowBandit","GLOBAL",0)Global("KnowKult","GLOBAL",0)~ THEN GOTO 5
  IF ~  Global("KnowBandit","GLOBAL",1)Global("KnowKult","GLOBAL",0)~ THEN GOTO 6
  IF ~  Global("KnowBandit","GLOBAL",0)Global("KnowKult","GLOBAL",1)~ THEN GOTO 7
  IF ~  Global("KnowBandit","GLOBAL",1)Global("KnowKult","GLOBAL",1)~ THEN GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~ IsGabber(Player1)Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~ IsGabber(Player1)GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @15
  IF ~  !Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 14
  IF ~  Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 47
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @19
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @21
  IF ~  !Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 14
  IF ~  Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 47
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @22
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY @27
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.4
  SAY @28
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @14 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.6
  SAY @29
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @30
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @31
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 6.3
  SAY @32
  IF ~  Global("DrakeQuest","GLOBAL",0)Global("HarbenQuest","GLOBAL",0)~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @95176 EXIT
  IF ~  Global("DrakeQuest","GLOBAL",1)Global("HarbenQuest","GLOBAL",0)~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @95191 EXIT
  IF ~  GlobalGT("HarbenQuest","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.5
  SAY @35
  IF ~  Global("DrakeQuest","GLOBAL",0)Global("HarbenQuest","GLOBAL",0)~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @95176 EXIT
  IF ~  Global("DrakeQuest","GLOBAL",1)Global("HarbenQuest","GLOBAL",0)~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @95191 EXIT
  IF ~  GlobalGT("HarbenQuest","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY @36
  IF ~~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 10.2
  SAY @37
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 11
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @12 GOTO 12
  IF ~~ THEN REPLY @13 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~  !Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 14
  IF ~  Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 47
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @40
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~  !Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 14
  IF ~  Dead("Drawl")Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 47
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

// ----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)RandomNum(3,2)~ THEN BEGIN 22 // from:
  SAY @41
  IF ~ IsGabber(Player1)Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~ IsGabber(Player1)GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

// ----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)RandomNum(3,3)~ THEN BEGIN 23 // from:
  SAY @42
  IF ~ IsGabber(Player1)Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~ IsGabber(Player1)GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

// ----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 24 // from:
  SAY @43
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~  Global("KnowBandit","GLOBAL",0)Global("KnowKult","GLOBAL",0)~ THEN REPLY @44 GOTO 25
  IF ~  Global("KnowBandit","GLOBAL",1)Global("KnowKult","GLOBAL",0)~ THEN REPLY @44 GOTO 26
  IF ~  Global("KnowBandit","GLOBAL",0)Global("KnowKult","GLOBAL",1)~ THEN REPLY @44 GOTO 27
  IF ~  Global("KnowBandit","GLOBAL",1)Global("KnowKult","GLOBAL",1)~ THEN REPLY @44 GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @45
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @15
  IF ~  Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 29
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @46 GOTO 30
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY @19
  IF ~  Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 29
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @46 GOTO 30
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 28 // from: 24.4
  SAY @21
  IF ~  Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 29
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @46 GOTO 30
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY @47
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY @48
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @46 GOTO 30
  IF ~~ THEN REPLY @18 GOTO 16
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY @31
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 30 .1
  SAY @38
 IF ~~ THEN REPLY @39 GOTO 21
  IF ~  Global("KnowBandit","GLOBAL",1)~ THEN REPLY @16 GOTO 29
  IF ~~ THEN REPLY @18 GOTO 16
END

// ----------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 33 // from:
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 34
  IF ~~ THEN REPLY @51 GOTO 35
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @52 GOTO 36
  IF ~  GlobalGT("HarbenQuest","GLOBAL",1)~ THEN REPLY @52 GOTO 37
  IF ~~ THEN REPLY @18 GOTO 38
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @53
  IF ~~ THEN REPLY @51 GOTO 35
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @52 GOTO 36
  IF ~  GlobalGT("HarbenQuest","GLOBAL",1)~ THEN REPLY @52 GOTO 37
  IF ~~ THEN REPLY @18 GOTO 38
END

IF ~~ THEN BEGIN 35// from: 33.2
  SAY @54
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @55 GOTO 39
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @56 GOTO 40
  IF ~  GlobalGT("HarbenQuest","GLOBAL",1)~ THEN REPLY @57 GOTO 41
  IF ~~ THEN REPLY @18 GOTO 38
END

IF ~~ THEN BEGIN 36// from: 33.3
  SAY @58
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @55 GOTO 39
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @56 GOTO 40
  IF ~  GlobalGT("HarbenQuest","GLOBAL",1)~ THEN REPLY @57 GOTO 41
  IF ~~ THEN REPLY @18 GOTO 38
END

IF ~~ THEN BEGIN 37// from: 33.4
  SAY @59
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38// from: 33.5
  SAY @60
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39// from: 35.1
  SAY @61
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @62 GOTO 42
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY @62 GOTO 43
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY @63 GOTO 44
  IF ~~ THEN REPLY @64 GOTO 45
END

IF ~~ THEN BEGIN 40// from: 35.2
  SAY @65
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @62 GOTO 42
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY @62 GOTO 43
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY @63 GOTO 44
  IF ~~ THEN REPLY @64 GOTO 45
END

IF ~~ THEN BEGIN 41// from: 35.3
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42// from: 39.1
  SAY @67
  IF ~~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",2)AddexperienceParty(40000)GiveGoldForce(800)GiveGoldForce(200)GiveItemCreate("HarbItm",LastTalkedToBy,1,1,1)EraseJournalEntry(@95176)EraseJournalEntry(@95191)~ SOLVED_JOURNAL @95309 EXIT
END

IF ~~ THEN BEGIN 43// from: 39.2
  SAY @69
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY @63 GOTO 44
  IF ~~ THEN REPLY @64 GOTO 45
END

IF ~~ THEN BEGIN 44// from: 39.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",2)AddexperienceParty(40000)GiveGoldForce(800)GiveItemCreate("HarbItm",LastTalkedToBy,1,1,1)EraseJournalEntry(@95176)EraseJournalEntry(@95191)~ SOLVED_JOURNAL @95309 EXIT
END

IF ~~ THEN BEGIN 45// from: 39.4
  SAY @71
  IF ~~ THEN DO ~SetGlobal("HarbenQuest","GLOBAL",2)AddexperienceParty(40000)GiveGoldForce(800)GiveItemCreate("HarbItm",LastTalkedToBy,1,1,1)EraseJournalEntry(@95176)EraseJournalEntry(@95191)~ SOLVED_JOURNAL @95309 EXIT
END

// ----------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 46 // from:
  SAY @72
  IF ~~ THEN REPLY @51 GOTO 35
  IF ~  GlobalLT("HarbenQuest","GLOBAL",2)~ THEN REPLY @52 GOTO 36
  IF ~  GlobalGT("HarbenQuest","GLOBAL",1)~ THEN REPLY @52 GOTO 37
  IF ~~ THEN REPLY @18 GOTO 38
END

IF ~~ THEN BEGIN 47 // from: 6.2
  SAY @47
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @48
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~  Global("KnowKult","GLOBAL",1)~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 5
  IF ~~ THEN REPLY @18 GOTO 16
END

