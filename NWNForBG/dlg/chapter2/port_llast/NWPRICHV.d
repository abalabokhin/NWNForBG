// Порт-Лласт Склад в доках   Причев    Квест - уговорить капитана Мунга взять груз в Невервинтер

BEGIN ~NWPRICHV~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWPrichevQuest","GLOBAL",0)Global("NWKnowPrichev","GLOBAL",0)Global("NWKnowCaptain","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~ Global("NWKnowCaptain","GLOBAL",1)~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.4
  SAY @12
  IF ~~ THEN DO ~SetGlobal("NWKnowPrichev","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("NWKnowPrichev","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @14
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  Global("NWKnowCaptain","GLOBAL",1)~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @15
  IF ~  Global("NWPrichevQuest","GLOBAL",0)~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("NWKnowPrichev","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @23
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY @24
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 4
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWPrichevQuest","GLOBAL",0)Global("NWKnowPrichev","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @27 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 4
END

// ----------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWPrichevQuest","GLOBAL",0)Global("NWKnowPrichev","GLOBAL",0)Global("NWKnowCaptain","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 9
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
END

// ----------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWPrichevQuest","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @32 GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @35
  IF ~~ THEN DO ~SetGlobal("NWPrichevQuest","GLOBAL",3)GiveGoldForce(400)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @36
  IF ~~ THEN DO ~SetGlobal("NWPrichevQuest","GLOBAL",3)GiveGoldForce(800)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY @37
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @38 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY @39
  IF ~~ THEN DO ~SetGlobal("NWPrichevQuest","GLOBAL",3)GiveGoldForce(800)AddexperienceParty(20000)ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY @40
  IF ~~ THEN DO ~SetGlobal("NWPrichevQuest","GLOBAL",3)AddexperienceParty(20000)ReputationInc(1)~ EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWPrichevQuest","GLOBAL",2)~ THEN BEGIN 20 // from:
  SAY @41
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWPrichevQuest","GLOBAL",3)~ THEN BEGIN 21 // from:
  SAY @42
  IF ~~ THEN EXIT
END
