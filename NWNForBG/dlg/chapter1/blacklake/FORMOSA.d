// Чернозерье улица Формоса Взволнованная полуэльфийка пытается привлечь окружающих на свою сторону. По сравнению с окружающими ее аристократами она одета довольно просто.

BEGIN ~FORMOSA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("FormosaQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @4
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @14
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",66)Enemy()EraseJournalEntry(@88916)~ SOLVED_JOURNAL @88930 EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @17
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 3.4
  SAY @18
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 3.5
  SAY @19
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 3.6
  SAY @20
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.7
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @22
  IF ~~ THEN REPLY @7 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~  Global("MeldanenQuest","GLOBAL",1)OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY @25 GOTO 14
  IF ~  Global("MeldanenQuest","GLOBAL",1)!Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY @25 GOTO 15
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY @26 GOTO 14
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY @32
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY @33 GOTO 4
  IF ~~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @35 GOTO 6
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 8.2
  SAY @38
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY @33 GOTO 4
  IF ~~ THEN REPLY @34 GOTO 19
  IF ~~ THEN REPLY @35 GOTO 6
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 24
  IF ~~ THEN REPLY @41 GOTO 17
  IF ~~ THEN REPLY @42 GOTO 17
  IF ~~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 13.2 13.3
  SAY @45
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 24
  IF ~~ THEN REPLY @41 GOTO 17
  IF ~~ THEN REPLY @42 GOTO 17
  IF ~~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 15.2
  SAY @48
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY @49
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @50 GOTO 10
  IF ~~ THEN REPLY @51 GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY @52
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @50 GOTO 10
  IF ~~ THEN REPLY @51 GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 16.4
  SAY @53
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY @54
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY @55 GOTO 4
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @57 GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 16.1
  SAY @58
  IF ~~ THEN REPLY @41 GOTO 17
  IF ~~ THEN REPLY @42 GOTO 17
  IF ~~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY @59
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY @60
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @88916 EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3
  SAY @62
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("FormosaQuest","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY @63
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY @64 GOTO 4
  IF ~~ THEN REPLY @47 GOTO 24
  IF ~~ THEN REPLY @41 GOTO 17
  IF ~~ THEN REPLY @42 GOTO 17
  IF ~~ THEN REPLY @43 GOTO 22
  IF ~~ THEN REPLY @44 GOTO 10
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("FormosaQuest","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY @65
  IF ~  PartyHasItem("Nwkey08")!PartyHasItem("NWTooth1")~ THEN REPLY @66 GOTO 30
  IF ~  PartyHasItem("NWTooth1")!PartyHasItem("Nwkey08")~ THEN REPLY @67 GOTO 31
  IF ~  PartyHasItem("Nwkey08")PartyHasItem("NWTooth1")~ THEN REPLY @68 GOTO 32
  IF ~~ THEN REPLY @69 GOTO 33
  IF ~~ THEN REPLY @70 GOTO 34
  IF ~  Global("MeldanenQuest","GLOBAL",1)~ THEN REPLY @71 GOTO 4
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 35
  IF ~~ THEN REPLY @74 GOTO 36
  IF ~~ THEN REPLY @75 GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 38
  IF ~~ THEN REPLY @78 GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY @79
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 33 // from: 29.4
  SAY @80
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.5
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.1
  SAY @82
  IF ~~ THEN REPLY @83 GOTO 47
  IF ~~ THEN REPLY @84 GOTO 48
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY @85
  IF ~~ THEN REPLY @83 GOTO 47
  IF ~~ THEN REPLY @84 GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY @86
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @87 GOTO 49
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @87 GOTO 50
  IF ~~ THEN REPLY @88 GOTO 51
  IF ~~ THEN REPLY @89 GOTO 52
  IF ~~ THEN REPLY @90 GOTO 53
  IF ~~ THEN REPLY @91 GOTO 46
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY @92
  IF ~~ THEN REPLY @93 GOTO 47
  IF ~~ THEN REPLY @94 GOTO 56
END

IF ~~ THEN BEGIN 39 // from: 31.2
  SAY @95
  IF ~~ THEN REPLY @93 GOTO 47
  IF ~~ THEN REPLY @94 GOTO 56
END

IF ~~ THEN BEGIN 40 // from: 32.1
  SAY @96
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @87 GOTO 41
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @87 GOTO 42
  IF ~~ THEN REPLY @88 GOTO 43
  IF ~~ THEN REPLY @89 GOTO 44
  IF ~~ THEN REPLY @97 GOTO 45
  IF ~~ THEN REPLY @91 GOTO 46
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @98
  IF ~~ THEN REPLY @99 GOTO 54
  IF ~~ THEN REPLY @91 GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 40.2
  SAY @100
  IF ~~ THEN REPLY @88 GOTO 43
  IF ~~ THEN REPLY @89 GOTO 44
  IF ~~ THEN REPLY @91 GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 40.3
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 46
  IF ~~ THEN REPLY @103 GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 40.4
  SAY @104
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",3)AddexperienceParty(250000)GiveItem("NWAmul01",LastTalkedToBy)GivePartyGold(1000)
TakePartyItem("Nwkey08")TakePartyItem("NWTooth1")EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89019 EXIT
END

IF ~~ THEN BEGIN 45 // from: 40.4
  SAY @106
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",3)AddexperienceParty(265000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("Nwkey08")TakePartyItem("NWTooth1")EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89019 EXIT
END

IF ~~ THEN BEGIN 46// from: 40.5
  SAY @107
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",66)Enemy()EraseJournalEntry(@88916)~ SOLVED_JOURNAL @88930 EXIT
END

IF ~~ THEN BEGIN 47 // from: 35.1
  SAY @108
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from: 35.2
  SAY @86
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @87 GOTO 49
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @87 GOTO 50
  IF ~~ THEN REPLY @88 GOTO 51
  IF ~~ THEN REPLY @89 GOTO 52
  IF ~~ THEN REPLY @90 GOTO 53
  IF ~~ THEN REPLY @91 GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 37.1
  SAY @109
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)GivePartyGold(250)
TakePartyItem("Nwkey08")EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89024 EXIT
END

IF ~~ THEN BEGIN 50 // from: 37.2
  SAY @111
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("Nwkey08")EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89024 EXIT
END

IF ~~ THEN BEGIN 51 // from: 37.3
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 46
  IF ~~ THEN REPLY @103 GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 37.4
  SAY @104
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("Nwkey08")
EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89024 EXIT
END

IF ~~ THEN BEGIN 53 // from: 37.5
  SAY @112
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",2)AddexperienceParty(150000)GiveItem("NWAmul01",LastTalkedToBy)TakePartyItem("Nwkey08")EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89024 EXIT
END

IF ~~ THEN BEGIN 54 // from: 41.1
  SAY @104
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",3)AddexperienceParty(250000)GiveItem("NWAmul01",LastTalkedToBy)GivePartyGold(1350)
TakePartyItem("Nwkey08")TakePartyItem("NWTooth1")EraseJournalEntry(@88916)~ SOLVED_JOURNAL @89019 EXIT
END

IF ~~ THEN BEGIN 56 // from: 38.2
  SAY @113
  IF ~~ THEN REPLY @114 GOTO 47
  IF ~~ THEN REPLY @115 GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.2
  SAY @116
  IF ~~ THEN DO ~SetGlobal("FormosaQuest","GLOBAL",66)Enemy()EraseJournalEntry(@88916)~ SOLVED_JOURNAL @88930 EXIT
END

// -----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("FormosaQuest","GLOBAL",1)~ THEN BEGIN 55 // from:
  SAY @117
  IF ~~ THEN EXIT
END

