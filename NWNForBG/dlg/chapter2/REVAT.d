// Восточная дорога, казармы Джакса, уровень 1 Реват - человек. С губ этого человека капает слюна. Его глаза наполнены слезами. Дженис, мать Ривата

BEGIN ~REVAT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 7
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @20
  IF ~~ THEN REPLY @18 GOTO 9
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @27
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @28
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @29
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY @30
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY @31
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",1)GiveItemCreate("RingReva",LastTalkedToBy(Myself),1,0,0)~ UNSOLVED_JOURNAL @33 EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY @34
  IF ~~ THEN DO ~SetGlobal("KnowRevat","LOCALS",1)~ EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",0)~ THEN BEGIN 17 // from:
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 5
  IF ~  Global("KnowRevat","LOCALS",1)~ THEN REPLY @37 GOTO 14
  IF ~~ THEN REPLY @38 EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 19
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~  OR(2)Dead("Janis")Global("DeadJanis","GLOBAL",2)~ THEN REPLY @42 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY @45
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",6)EraseJournalEntry(@33)EscapeArea() ~ SOLVED_JOURNAL @46 EXIT
END

// -----------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RevatQuest","GLOBAL",2)~ THEN BEGIN 22 // from:
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 23
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @52
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @53
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY @54
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",3)AddexperienceParty(10000)GiveGoldForce(990)EraseJournalEntry(@33)ReputationInc(-1)~ SOLVED_JOURNAL @55 EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @56
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",3)AddexperienceParty(10000)GiveGoldForce(740)EraseJournalEntry(@33)~ SOLVED_JOURNAL @55 EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.4
  SAY @57
  IF ~~ THEN DO ~SetGlobal("RevatQuest","GLOBAL",3)AddexperienceParty(10000)EraseJournalEntry(@33)ReputationInc(1)~ SOLVED_JOURNAL @55 EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("LentonQuest","GLOBAL",3)~ THEN BEGIN 28 // from:
  SAY @58
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// --------------------------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("LentonQuest","GLOBAL",3)~ THEN BEGIN 29 // from:
  SAY @59
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
