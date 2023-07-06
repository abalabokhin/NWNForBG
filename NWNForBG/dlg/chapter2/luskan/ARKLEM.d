// Лускан - Башня хозяина - 9 этаж  Арклем  - Лич   Движимые честолюбием, некоторые могущественные маги пытаются обмануть саму смерть. Те, кому это удается, становятся личами. Тех, кому не так повезло, утаскивает Бездна.

// Global("BrazierDestroyed","MYAREA",1) - установить в скрипте локации когда будут разрушены все 4 жаровни

BEGIN ~ARKLEM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("BrazierDestroyed","MYAREA",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @1 GOTO 1
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @2 GOTO 3
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @2 GOTO 4
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @3 GOTO 5
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @11
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @12
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY @17
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @24
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @32
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY @33
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY @34
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @35 GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @36
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY @37
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY @38
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 13.4
  SAY @39
  IF ~~ THEN REPLY @27 GOTO 17
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 13.5
  SAY @40
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 25
  IF ~~ THEN REPLY @22 GOTO 26
  IF ~~ THEN REPLY @23 GOTO 27
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 GOTO 28
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 14.1
  SAY @42
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 16
END

IF ~~ THEN BEGIN 23 // from: 16.1
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY @44
  IF ~~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 21
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY @32
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 26 // from: 15.3
  SAY @33
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 16.1
  SAY @34
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 25
  IF ~~ THEN REPLY @22 GOTO 26
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 GOTO 28
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 21.5
  SAY @45
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 21.6
  SAY @46
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.1
  SAY @42
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 27
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 GOTO 28
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 GOTO 29
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 32
  IF ~~ THEN REPLY @49 GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @50
  IF ~~ THEN DO ~SetGlobal("ArklemQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY @51
  IF ~~ THEN DO ~SetGlobal("ArklemQuest","GLOBAL",1)~ EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("ArklemQuest","GLOBAL",0)GlobalLT("BrazierDestroyed","MYAREA",3)Global("AttackMyself","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY @52
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @53 GOTO 1
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @53 GOTO 2
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("ArklemQuest","GLOBAL",1)GlobalLT("BrazierDestroyed","MYAREA",3)Global("AttackMyself","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY @54
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BrazierDestroyed","MYAREA",3)~ THEN BEGIN 36 // from:
  SAY @55
  IF ~  Global("ArklemQuest","GLOBAL",0)~ THEN GOTO 37
  IF ~  Global("ArklemQuest","GLOBAL",1)~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @56
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY @57
  IF ~~ THEN DO ~SetGlobal("ArklemQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @58
  IF ~~ THEN GOTO 38
END

// -----------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AttackMyself","LOCALS",1)~ THEN BEGIN 40 // from:
  SAY @59
  IF ~~ THEN REPLY @20 DO~SetGlobal("AttackMyself","LOCALS",0)~ GOTO 13
  IF ~~ THEN REPLY @21 DO~SetGlobal("AttackMyself","LOCALS",0)~ GOTO 25
  IF ~~ THEN REPLY @22 DO~SetGlobal("AttackMyself","LOCALS",0)~ GOTO 26
  IF ~  Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 DO~SetGlobal("AttackMyself","LOCALS",0)~ GOTO 28
  IF ~  !Global("NyphithusQuest","GLOBAL",2)~ THEN REPLY @41 DO~SetGlobal("AttackMyself","LOCALS",0)~ GOTO 29
END

