// Гнездо Нищих  Альдо  Полурослик Этот полурослик смотрит на вас обвиняющим взглядом. Он явно не доверяет ни одной живой душе больше, чем это необходимо.

BEGIN ~ALDO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  OR(2)Global("HectorFollow","GLOBAL",0)!See("Hector")~ THEN REPLY @1 GOTO 1
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN REPLY @1 GOTO 2
  IF ~  OR(2)Global("HectorFollow","GLOBAL",0)!See("Hector")~ THEN REPLY @2 GOTO 1
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN REPLY @2 GOTO 2
  IF ~  OR(2)Global("HectorFollow","GLOBAL",0)!See("Hector")~ THEN REPLY @3 GOTO 1
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~  Global("KnowHector","GLOBAL",1)~ THEN REPLY @6 GOTO 4
  IF ~  Global("HectorFollow","GLOBAL",1)!See("Hector")~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN EXTERN ~HECTOR~ 2 // Я старался, босс! Но нигде нет никаких частей. Клянусь!
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @20
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @22
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("AldoQuest","GLOBAL",3)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @24
  IF ~~ THEN DO ~SetGlobal("AldoQuest","GLOBAL",3)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.4
  SAY @26
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @27
  IF ~~ THEN DO ~SetGlobal("AldoQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @28 EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY @29
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 4.3
  SAY @30
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 14 // from: HECTOR 2
  SAY @31
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("AldoQuest","GLOBAL",2)
AddexperienceParty(30000)ActionOverride("Hector",EscapeAreaDestroy(60))ActionOverride("Mattily",EscapeAreaDestroy(60))EscapeAreaDestroy(60)EraseJournalEntry(@28)~ SOLVED_JOURNAL @33 EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 16 // from:
  SAY @34
  IF ~  OR(2)Global("HectorFollow","GLOBAL",0)!See("Hector")~ THEN GOTO 17
  IF ~  Global("HectorFollow","GLOBAL",1)See("Hector")~ THEN GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~  Global("KnowHector","GLOBAL",1)~ THEN REPLY @6 GOTO 4
  IF ~  Global("HectorFollow","GLOBAL",1)!See("Hector")~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 18 // from:
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: MATTILY 3.1
  SAY @37
  IF ~~ THEN EXTERN ~MATTILY~ 9 // Хватит, Альдо! Мне уже надоело ждать колесо от повозки на улице, кишащей зомби!
END

