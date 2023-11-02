// Лускан Здание в трущобах Галрон Этот пожилой человек, судя по выражению лица, охвачен паранойей и ужасом.

BEGIN ~NWGALROE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @2 GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @15
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 14
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @16
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @18
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY @20
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY @23
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.2
  SAY @25
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 0.2
  SAY @26
  IF ~  PartyGoldGT(999)~ THEN REPLY @27 GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @28 GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @28 GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY @31
  IF ~  PartyGoldGT(999)~ THEN REPLY @27 GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @28 GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @28 GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 0.1
  SAY @32
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY @33
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @22 GOTO 16
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 23
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @36
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(1000)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.2
  SAY @37
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2
  SAY @38
  IF ~  PartyGoldGT(249)~ THEN REPLY @39 GOTO 24
  IF ~  PartyGoldGT(399)~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @29 GOTO 26
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 0.2
  SAY @41
  IF ~  PartyGoldGT(999)~ THEN REPLY @27 GOTO 17
  IF ~  PartyGoldGT(249)~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @42
  IF ~  PartyGoldGT(999)~ THEN REPLY @27 GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @28 GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @28 GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY @43
  IF ~  PartyGoldGT(249)~ THEN REPLY @44 GOTO 27
  IF ~~ THEN REPLY @45 GOTO 28
  IF ~~ THEN REPLY @46 GOTO 29
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from: 0.1
  SAY @47
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 15
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @48
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY @49
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(400)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY @50
  IF ~  PartyGoldGT(249)~ THEN REPLY @39 GOTO 24
  IF ~  PartyGoldGT(399)~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @49
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY @51
  IF ~  PartyGoldGT(249)~ THEN REPLY @44 GOTO 27
  IF ~~ THEN REPLY @46 GOTO 29
  IF ~~ THEN REPLY @13 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY @52
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END


// -----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)CheckStatGT(LastTalkedToBy,8,CHR)~ THEN BEGIN 30 // from:
  SAY @53
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @2 GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)~ THEN BEGIN 31 // from:
  SAY @54
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @2 GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY @55
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @2 GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -----------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)CheckStatGT(LastTalkedToBy,8,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY @56
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @2 GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -----------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY @57
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NWYvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @2 GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -----------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("QuestDone","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY @58
  IF ~~ THEN EXIT
END

