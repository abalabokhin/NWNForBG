// Гнездо Нищих  Таверна Сияющий Змей  Дрейк  Человек Этот мужчина выглядит абсолютно уверенно, он явно привык командовать в критических ситуациях. Это опытный воин-ветеран.

BEGIN ~NWDRAKE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWBeggarsNestDone","GLOBAL",0)Global("NWWtDeepCreature","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~  Global("NWDrakeQuest","GLOBAL",0)Global("NWHarbenQuest","GLOBAL",1)~ THEN DO ~SetGlobal("NWDrakeQuest","GLOBAL",1)EraseJournalEntry(@95176)~ UNSOLVED_JOURNAL @95191 EXIT
  IF ~  GlobalGT("NWDrakeQuest","GLOBAL",0)~ THEN EXIT
  IF ~  Global("NWDrakeQuest","GLOBAL",0)!Global("NWHarbenQuest","GLOBAL",1)~ THEN DO ~SetGlobal("NWDrakeQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @17
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 4
END

// ----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWBeggarsNestDone","GLOBAL",0)GlobalGT("NWWtDeepCreature","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY @18
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

// ----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWBeggarsNestDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 13
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @22
  IF ~  Global("NWKnowKrestal","GLOBAL",0)Global("NWKnowJemanie","GLOBAL",0)~ THEN REPLY @23 GOTO 15
  IF ~  Global("NWKnowKrestal","GLOBAL",0)GlobalGT("NWKnowJemanie","GLOBAL",0)~ THEN REPLY @23 GOTO 16
  IF ~  GlobalGT("NWKnowKrestal","GLOBAL",0)Global("NWKnowJemanie","GLOBAL",0)~ THEN REPLY @23 GOTO 17
  IF ~  GlobalGT("NWKnowKrestal","GLOBAL",0)GlobalGT("NWKnowJemanie","GLOBAL",0)~ THEN REPLY @23 GOTO 18
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 13
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @28
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 9.4
  SAY @29
  IF ~~ THEN REPLY @26 GOTO 22
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 9.5
  SAY @30
  IF ~~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 10.1
  SAY @31
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 13
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY @32
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 13
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 10.3
  SAY @33
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 13
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 18// from: 10.4
  SAY @34
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 11
  IF ~  Global("NWKnowBandit","GLOBAL",1)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",1)~ THEN REPLY @21 GOTO 13
  IF ~  Global("NWKnowBandit","GLOBAL",0)Global("NWKnowKult","GLOBAL",0)~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY @35
  IF ~~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY @36
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 12.1
  SAY @35
  IF ~~ THEN REPLY @27 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 13.1
  SAY @36
  IF ~~ THEN REPLY @27 GOTO 4
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)Global("NWWtDeepCreature","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @37
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @38
  IF ~~ THEN EXIT
END

// ---------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)GlobalGT("NWWtDeepCreature","GLOBAL",0)~ THEN BEGIN 25 // from:
  SAY @39
  IF ~~ THEN GOTO 24
END

