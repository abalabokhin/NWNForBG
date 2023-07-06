// Центр Невервинтера Маска Лунного Камня   Джиллс   Служитель Талоса, просит принести артефакты Невера. Этот человек тщательно осматривает комнату, обращая внимание на всех присутствующих. Его холодные манеры разительно отличают его от остальных посетителей.

BEGIN ~GILLES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)Global("GillesQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @19
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @22
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @23
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @24
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 14
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @29
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",9)GiveItem("Nwmisc18",LastTalkedToBy(Myself))EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)Global("GillesQuest","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @30
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("OleffQuest","GLOBAL",0)!Global("OleffQuest","GLOBAL",2)Global("GillesQuest","GLOBAL",1)~ THEN BEGIN 17 // from:
  SAY @31
  IF ~  OR(3)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @35
  IF ~  PartyHasItem("Nwmisc15")~ THEN REPLY @36 GOTO 22
  IF ~  PartyHasItem("Nwmisc16")~ THEN REPLY @37 GOTO 23
  IF ~  PartyHasItem("Nwmisc17")~ THEN REPLY @38 GOTO 24
  IF ~~ THEN REPLY @39 GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @40
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @41
  IF ~  OR(3)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY @42
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY @43
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 25
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 25
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 26
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 27
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 18.2
  SAY @44
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 28
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 28
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 29
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 30
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 18.3
  SAY @45
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 31
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 31
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 32
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 33
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 22.1 22.2
  SAY @46
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY @47
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.4 22.5
  SAY @48
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1 23.2
  SAY @46
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3
  SAY @47
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.4 23.5
  SAY @48
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1 24.2
  SAY @46
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.3
  SAY @47
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.4 24.5
  SAY @48
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.4
  SAY @49
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("OleffQuest","GLOBAL",0)!Global("OleffQuest","GLOBAL",2)GlobalGT("GillesQuest","GLOBAL",1)~ THEN BEGIN 35 // from:
  SAY @50
  IF ~  Global("GillesQuest","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("GillesQuest","GLOBAL",2)~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 38
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @53
  IF ~~ THEN REPLY @52 GOTO 38
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 39
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @3 GOTO 3
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",2)~ THEN BEGIN 35 // from:
  SAY @56
  IF ~~ THEN REPLY @52 GOTO 38
  IF ~~ THEN REPLY @3 GOTO 3
END

