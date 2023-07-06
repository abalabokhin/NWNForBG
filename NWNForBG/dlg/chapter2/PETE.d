// Южная дорога 2 - Пит О'Дил  Этот фермер хмурится от отчаяния и огорчения. Дать 175 монет.  Ingo  ErikNW  Constanc Mary

BEGIN ~PETE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  IsGabber(Player1)~ THEN REPLY @6 GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @16
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~  Dead("Silverbk")~ THEN REPLY @20 GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @23
  IF ~  Global("KnowsAboutCave","LOCALS",1)~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~  Dead("Silverbk")~ THEN REPLY @20 GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3 8.3
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @31 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @31 GOTO 19
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 7.4 8.4
  SAY @34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @35 GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @35 GOTO 23
  IF ~~ THEN REPLY @36 GOTO 15
  IF ~~ THEN REPLY @37 GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY @38
  IF ~~ THEN REPLY @39 DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 26
END

IF ~~ THEN BEGIN 13 // from: 7.5
  SAY @42
  IF ~  Dead("Silverbk")~ THEN REPLY @20 GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 7.5
  SAY @43
  IF ~  Global("KnowsAboutCave","LOCALS",1)~ THEN REPLY @24 GOTO 13
  IF ~  Dead("Silverbk")~ THEN REPLY @20 GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 8.5
  SAY @44
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",1)~ EXIT
  IF ~  !Global("PeteQuest","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.6
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @46
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY @47
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)GivePartyGold(175)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY @48
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY @49
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY @50
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.1
  SAY @51
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @31 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @31 GOTO 19
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 21
END

IF ~~ THEN BEGIN 23 // from: 11.2
  SAY @52
  IF ~~ THEN REPLY @36 GOTO 15
  IF ~~ THEN REPLY @37 GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY @53
  IF ~~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @54 GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY @55
  IF ~~ THEN REPLY @39 DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @54 GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 12.3
  SAY @56
  IF ~~ THEN REPLY @39 DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @54 GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 12.4
  SAY @57
  IF ~  Dead("Silverbk")~ THEN REPLY @20 GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)Global("PeteQuest","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY @58
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)Global("PeteQuest","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY @59
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~  Dead("Silverbk")~ THEN REPLY @20 GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   Global("PeteQuest","GLOBAL",2)~ THEN BEGIN 30 // from:
  SAY @60
  IF ~~ THEN EXIT
END

