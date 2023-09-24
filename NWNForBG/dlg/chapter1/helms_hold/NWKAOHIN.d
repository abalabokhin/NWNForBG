// Центр Невервинтера Крепость Хельма   Каохинон из Бездны  Эти адские существа излучают такое зло, что вас начинает воротить от самого их вида.
// Global("NWKAOHIN","GLOBAL",2) - ДРЯНЬ!!! ТЫ ЗА ВСЕ ЗАПЛАТИШЬ!!! ТВОЕ БУДУЩЕЕ ПРЕДОПРЕДЕЛЕНО!!! ТЫ БУДЕШЬ СТРАДАТЬ!!! СТРРРАДАААТЬ!!!

BEGIN ~NWKAOHIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("KaohionQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // 0.2
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @7
  IF ~  GlobalLT("KaohionQuest","GLOBAL",2)~ THEN REPLY @8 GOTO 5
  IF ~  Global("KaohionQuest","GLOBAL",2)~ THEN REPLY @8 GOTO 25
  IF ~  GlobalLT("KaohionQuest","GLOBAL",2)~ THEN REPLY @9 GOTO 6
  IF ~  Global("KaohionQuest","GLOBAL",2)~ THEN REPLY @9 GOTO 26
  IF ~~ THEN REPLY @10 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",2)~ UNSOLVED_JOURNAL @94788 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",2)~ UNSOLVED_JOURNAL @94788 EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.1
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 4.1
  SAY @13
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KaohionQuest","GLOBAL",3)~ THEN BEGIN 7 // from:
  SAY @14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 3
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KaohionQuest","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @16
  IF ~  Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @17 GOTO 10
  IF ~  Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @17 GOTO 11
  IF ~  Alignment(LastTalkedToBy,MASK_GENEUTRAL)~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",4)EraseJournalEntry(@94788)~ SOLVED_JOURNAL @94808 EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @28 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @30
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",4)GiveItemCreate("NWCLCK2",LastTalkedToBy,1,1,1)AddexperienceParty(42000)EraseJournalEntry(@94788)~ SOLVED_JOURNAL @94808 EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",4)GiveItemCreate("NWAX1H3",LastTalkedToBy,1,1,1)AddexperienceParty(42000)EraseJournalEntry(@94788)~ SOLVED_JOURNAL @94808 EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.2
  SAY @31
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",4)ForceSpellRes("NWSPKAOH",LastTalkedToBy(Myself))AddexperienceParty(42000)EraseJournalEntry(@94788)~ SOLVED_JOURNAL @94808 EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3
  SAY @32
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",4)AddexperienceParty(84000)EraseJournalEntry(@94788)~ SOLVED_JOURNAL @94808 EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 7.3
  SAY @38
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 7.3
  SAY @40
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 7.3
  SAY @41
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY @42
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 10.3
  SAY @43
  IF ~~ THEN DO ~SetGlobal("KaohionQuest","GLOBAL",4)GiveItemCreate("NWBOOK46",LastTalkedToBy,1,1,1)AddexperienceParty(42000)EraseJournalEntry(@94788)~ SOLVED_JOURNAL @94808 EXIT
END


IF ~~ THEN BEGIN 23 // from: 7.3
  SAY @44
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~~ THEN REPLY @39 GOTO 22
END

IF ~~ THEN BEGIN 24 // from: 2.2
  SAY @45
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @36 GOTO 20
  IF ~~ THEN REPLY @39 GOTO 22
END

