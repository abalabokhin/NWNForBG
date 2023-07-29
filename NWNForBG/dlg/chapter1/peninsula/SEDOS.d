// Полуостров Штаб-квартира ополчения   Седос Себил человек   Похоже, эта женщина в курсе всего, что творится вокруг, и процветает посреди хаоса. Ее лицо не несет знаков всепобеждающей усталости, которая отличает соратников-стражников.

BEGIN ~SEDOS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~  IsGabber(Player1)~ THEN REPLY @7 GOTO 5
  IF ~  IsGabber(Player1)~ THEN REPLY @8 GOTO 6
  IF ~  !IsGabber(Player1)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @15
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @16
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @17
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @22
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @29
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY @30
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 11.4
  SAY @33
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",2)EraseJournalEntry(@93969)~ UNSOLVED_JOURNAL @94004 EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.5
  SAY @35
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY @36
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 8
  IF ~~ THEN REPLY @39 GOTO 15
  IF ~~ THEN REPLY @40 GOTO 16
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",2)~ THEN BEGIN 19 // from:
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 20
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @47
  IF ~~ THEN REPLY @42 GOTO 20
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 19.3
  SAY @48
  IF ~~ THEN REPLY @42 GOTO 20
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 19.4
  SAY @49
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",3)~ THEN BEGIN 24 // from:
  SAY @50
  IF ~  !PartyHasItem("Crewtd2")Global("Brainworm","GLOBAL",1)~ THEN REPLY @51 GOTO 25
  IF ~  !PartyHasItem("Crewtd2")Global("Brainworm","GLOBAL",0)~ THEN REPLY @51 GOTO 26
  IF ~  PartyHasItem("Crewtd2")~ THEN REPLY @52 GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @55 GOTO 29
  IF ~~ THEN REPLY @56 GOTO 30
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY @58
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @55 GOTO 29
  IF ~~ THEN REPLY @56 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY @59
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",4)GiveGoldForce(1000)AddexperienceParty(154000)EraseJournalEntry(@93969)EraseJournalEntry(@94004)~ SOLVED_JOURNAL @94059 EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.2
  SAY @61
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",4)GiveGoldForce(1000)AddexperienceParty(154000)ReputationInc(-1)EraseJournalEntry(@93969)EraseJournalEntry(@94004)~ SOLVED_JOURNAL @94059 EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.3
  SAY @62
  IF ~~ THEN DO ~SetGlobal("SedosQuest","GLOBAL",4)AddexperienceParty(154000)ReputationInc(1)EraseJournalEntry(@93969)EraseJournalEntry(@94004)~ SOLVED_JOURNAL @94059 EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SedosQuest","GLOBAL",4)~ THEN BEGIN 31 // from:
  SAY @63
  IF ~~ THEN EXIT
END

