// Северная дорога, Дом смотрителя кладбищы Смотритель Гном Этот маленький карлик хихикает и фыркает за работой.

BEGIN ~CARETAKE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",0)Global("CaretakerQuest","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @19
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.2 9.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.2
  SAY @25
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY @35
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 18
  IF ~~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @40
  IF ~~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @41
  IF ~~ THEN REPLY @37 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 17.3
  SAY @42
  IF ~  PartyGoldGT(499)~ THEN REPLY @43 GOTO 21
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @44 GOTO 22
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @45 GOTO 24
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @47
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",0)SetGlobal("CaretakerQuest","LOCALS",1)TakePartyGold(500)GiveItem("CryptKey",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("CaretakerQuest","LOCALS",1)TakePartyGold(250)GiveItem("CryptKey",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.3
  SAY @49
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 24
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 24 // from: 20.4
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @53 GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 20.5
  SAY @54
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY @55
  IF ~  PartyGoldGT(499)~ THEN REPLY @43 GOTO 21
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @44 GOTO 22
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @44 GOTO 23
  IF ~~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY @56
  IF ~~ THEN DO ~SetGlobal("CaretakerQuest","LOCALS",1)GiveItem("CryptKey",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.3
  SAY @57
  IF ~~ THEN DO ~SetGlobal("CaretakerQuest","LOCALS",1)GiveItem("CryptKey",LastTalkedToBy)~ EXIT
END

// ----------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)Global("CaretakerQuest","LOCALS",0)~ THEN BEGIN 29 // from:
  SAY @58
  IF ~  PartyGoldGT(499)~ THEN REPLY @59 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",0)Global("CaretakerQuest","LOCALS",1)~ THEN BEGIN 30 // from:
  SAY @60
  IF ~  PartyHasItem("NWBOOK32")~ THEN REPLY @61 GOTO 31 // том Жизни Имассакарра 
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 31 // from: 30
  SAY @62
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31
  SAY @63
  IF ~~ THEN DO ~SetGlobal("CaretakerQuest","LOCALS",2)~ EXIT
END

// ----------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",0)Global("CaretakerQuest","LOCALS",2)~ THEN BEGIN 33 // from:
  SAY @60
  IF ~~ THEN EXIT
END

