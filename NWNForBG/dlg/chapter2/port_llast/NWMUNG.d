// Порт-Лласт Склад в доках   Капитан Мунг    Квест - уговорить капитана Мунга взять груз в Невервинтер

BEGIN ~NWMUNG~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowCaptain","GLOBAL",0)~ THEN BEGIN 0 // from:
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
  IF ~  Global("KnowPrichev","GLOBAL",1)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KnowCaptain","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("KnowCaptain","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @17 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 6.2
  SAY @18
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @20 GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 6.3
  SAY @23
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @17 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 6.4
  SAY @24
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.5
  SAY @25
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @26
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",1)TakePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @27
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",1)TakePartyGold(200)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.4
  SAY @28
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 7.5
  SAY @29
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.5
  SAY @30
  IF ~~ THEN DO ~SetGlobal("PrichevQuest","GLOBAL",2)EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PrichevQuest","GLOBAL",0)Global("KnowCaptain","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @31
  IF ~  Global("KnowPrichev","GLOBAL",1)~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @32 GOTO 2
  IF ~~ THEN REPLY @14 GOTO 5
  IF ~~ THEN REPLY @33 GOTO 4
END

// -----------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("PrichevQuest","GLOBAL",1)Global("PrichevQuest","GLOBAL",3)~ THEN BEGIN 17 // from:
  SAY @34
  IF ~~ THEN EXIT
END
