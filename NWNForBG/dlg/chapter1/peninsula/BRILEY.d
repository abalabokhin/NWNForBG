// Полуостров могила   Брайли   Брайли - молодой гном, который выглядит серьезным, но неопытным. Он гордо носит на груди символ Тира Справедливого.

BEGIN ~BRILEY~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)!Global("AttemptingOpenChest","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)!Global("AttemptingOpenChest","MYAREA",1)Global("ChestOpen","MYAREA",0)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~  PartyHasItem("OleffL1")~ THEN REPLY @8 GOTO 5
  IF ~  !PartyHasItem("OleffL1")~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @21
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @22
  IF ~~ THEN DO ~TakePartyItem("OleffL1")SetGlobal("ChestOpen","MYAREA",1)EraseJournalEntry(~Храм Тира: Могила Невера

Судья Олефф из Зала Справедливости ищет могилу основателя Невервинтера, Лорда Хэлуэта Невера, в надежде, что такая находка поможет поднять дух населения и, возможно, обнаружить в ней какие-либо древние артефакты, которые могли бы оказаться полезными в борьбе с Воющей Смертью. Он попросил обратиться к его помощнику Брайли, который сейчас охраняет недавно обнаруженную могилу Миаслазнии Фэйрблэйд, одной из спутников лорда Невера. Могилу Миаслазнии можно найти в подвале дома в восточной части полуострова.~)EscapeArea()~ UNSOLVED_JOURNAL @23 EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @24
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @25
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY @26
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 7.4
  SAY @27
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 8.1
  SAY @28
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @29
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 10
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AttemptingOpenChest","MYAREA",1)~ THEN BEGIN 17 // from:
  SAY @30
  IF ~~ THEN DO ~SetGlobal("AttemptingOpenChest","MYAREA",2)~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)!Global("AttemptingOpenChest","MYAREA",1)GlobalGT("ChestOpen","MYAREA",0)~ THEN BEGIN 18 // from:
  SAY @31
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

