// Колодец Беорунна  Улица Юсам   Как и во всех друидах, в этом человеке есть что-то дикое и неукрощенное - как будто оковы цивилизации совсем его не касаются. Однако, в его глазах можно увидеть тихую жалость ко всем созданиям природы.

BEGIN ~YUSAM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("JusamJob","GLOBAL",0)!Class(LastTalkedToBy,DRUID_ALL)!Class(LastTalkedToBy,RANGER_ALL)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN DO ~StartStore("Jusam",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @13
  IF ~  Global("JusamJob","GLOBAL",1)~ THEN GOTO 7
  IF ~  Global("JusamJob","GLOBAL",0)~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @14
  IF ~  Dead("Zokan")~ THEN REPLY @15 GOTO 9
  IF ~  !Dead("Zokan")Global("ZokanJob","GLOBAL",1)~ THEN REPLY @16 GOTO 10
  IF ~  !Dead("Zokan")PartyHasItem("NWMISC72")~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @18
  IF ~  Dead("Zokan")~ THEN REPLY @15 GOTO 9
  IF ~  !Dead("Zokan")Global("ZokanJob","GLOBAL",1)~ THEN REPLY @16 GOTO 10
  IF ~  !Dead("Zokan")PartyHasItem("NWMISC72")~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("JusamJob","GLOBAL",2)AddexperienceParty(52000)GiveItemCreate("Yusprize",LastTalkedToBy,0,0,0)EraseJournalEntry(@41)~ SOLVED_JOURNAL @21 EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @25
  IF ~~ THEN DO ~TakePartyItem("NWMISC72")SetGlobal("JusamJob","GLOBAL",2)AddexperienceParty(104000)GiveItemCreate("Yusprize",LastTalkedToBy,0,0,0)EraseJournalEntry(@41)~ SOLVED_JOURNAL @26 EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.4
  SAY @27
  IF ~  OR(2)Class(LastTalkedToBy,DRUID_ALL)Class(LastTalkedToBy,RANGER_ALL)~ THEN GOTO 15
  IF ~  !Class(LastTalkedToBy,DRUID_ALL)!Class(LastTalkedToBy,RANGER_ALL)~ THEN GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @28
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @29
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 12.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @36
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @37
  IF ~  Dead("Zokan")~ THEN REPLY @15 GOTO 9
  IF ~  !Dead("Zokan")Global("ZokanJob","GLOBAL",1)~ THEN REPLY @16 GOTO 10
  IF ~  !Dead("Zokan")PartyHasItem("NWMISC72")~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 15.2
  SAY @39
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @40
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.4
  SAY @12
  IF ~~ THEN DO ~SetGlobal("JusamJob","GLOBAL",1)~ UNSOLVED_JOURNAL @41 EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("JusamJob","GLOBAL",0)!Class(LastTalkedToBy,DRUID_ALL)!Class(LastTalkedToBy,RANGER_ALL)~ THEN BEGIN 22 // from:
  SAY @42
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JusamJob","GLOBAL",1)~ THEN BEGIN 24 // from:
  SAY @43
  IF ~  Dead("Zokan")~ THEN REPLY @15 GOTO 9
  IF ~  !Dead("Zokan")Global("ZokanJob","GLOBAL",1)~ THEN REPLY @16 GOTO 10
  IF ~  !Dead("Zokan")PartyHasItem("NWMISC72")~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("JusamJob","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @44
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ----------------------------------------

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("JusamJob","GLOBAL",0)~ THEN BEGIN 26 // from:
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @47
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

