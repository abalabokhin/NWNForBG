// Чернозерье Поместье Мелданена Мелданен

// DisplayStringHead(Myself,000000) Вы думаете, что можете просто так вторгаться в мой дом, вот как?! Меня не так легко убить!

// DisplayStringHead(Myself,000000) Нет! Не убивайте меня, пожалуйста! Я все отдам вам!!

// В инвентаре Nwkey08, 1800 монет, "NWTooth1"

BEGIN ~NWMELDAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Pause","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @18
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("Attack","LOCALS",2)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.4
  SAY @19
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.5
  SAY @20
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.6
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~  GlobalGT("FormosaQuest","GLOBAL",0)~ THEN REPLY @23 GOTO 13
  IF ~  Global("FormosaQuest","GLOBAL",0)~ THEN REPLY @24 GOTO 14
  IF ~  GlobalGT("FormosaQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY @32
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @33
  IF ~  GlobalGT("FormosaQuest","GLOBAL",0)~ THEN REPLY @23 GOTO 13
  IF ~  Global("FormosaQuest","GLOBAL",0)~ THEN REPLY @24 GOTO 14
  IF ~  GlobalGT("FormosaQuest","GLOBAL",0)~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 14
  IF ~~ THEN REPLY @37 GOTO 8
  IF ~~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 8
  IF ~~ THEN REPLY @31 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 4.6
  SAY @44
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)GivePartyGold(1800)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY @45
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 8
  IF ~~ THEN REPLY @31 GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 10.2
  SAY @46
  IF ~~ THEN REPLY @41 GOTO 21
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 8
  IF ~~ THEN REPLY @31 GOTO 6
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY @47
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)GiveItem("NWTooth1",LastTalkedToBy)GivePartyGold(1800)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.4
  SAY @48
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)GiveItem("NWTooth1",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.5
  SAY @49
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)GivePartyGold(1800)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY @50
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("MeldanenQuest","GLOBAL",1)GiveItem("Nwkey08",LastTalkedToBy)GivePartyGold(1500)~ UNSOLVED_JOURNAL @89305 EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.2
  SAY @52
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)GiveItem("Nwkey08",LastTalkedToBy)GivePartyGold(1800)~ EXIT
END

// --------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OR(2)Global("MeldanenQuest","GLOBAL",0)GlobalGT("MeldanenQuest","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY @53
  IF ~~ THEN EXIT
END

// --------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("MeldanenQuest","GLOBAL",1)!Dead("NWFORMOA")~ THEN BEGIN 24 // from:
  SAY @54
  IF ~~ THEN EXIT
END

// --------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("MeldanenQuest","GLOBAL",1)Dead("NWFORMOA")~ THEN BEGIN 25 // from:
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 26
  IF ~~ THEN REPLY @57 GOTO 27
  IF ~~ THEN REPLY @58 GOTO 28
  IF ~~ THEN REPLY @59 GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @60
  IF ~~ THEN REPLY @57 GOTO 27
  IF ~~ THEN REPLY @61 GOTO 28
  IF ~~ THEN REPLY @59 GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @62
  IF ~~ THEN REPLY @61 GOTO 28
  IF ~~ THEN REPLY @59 GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @63
  IF ~~ THEN DO ~SetGlobal("MeldanenQuest","GLOBAL",2)AddexperienceParty(150000)GivePartyGold(1500)EraseJournalEntry(@89305)~ SOLVED_JOURNAL @89369 EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.4
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 28
  IF ~~ THEN REPLY @67 GOTO 6
  IF ~~ THEN REPLY @68 GOTO 6
END

