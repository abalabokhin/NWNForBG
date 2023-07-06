// Лускан - Башня хозяина - 5 этаж  Нифитис  - Сирена, дриада или суккуб голубого цвета Женщина такой исключительной красоты совершенно не подходит к этому недоброму месту.

// BRAZIER2 - жаровня

// NYPHITM  - приз

BEGIN ~NYPHITH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)!Dead("BRAZIER3")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @11
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @13
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY @19
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @26
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @27
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY @28
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 6.4
  SAY @29
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 6.5
  SAY @30
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 15 // from: 8.2
  SAY @37
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 8.3
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 24
  IF ~~ THEN REPLY @40 GOTO 25
  IF ~~ THEN REPLY @41 GOTO 26
  IF ~~ THEN REPLY @42 GOTO 27
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY @43
  IF ~~ THEN DO ~SetGlobal("NyphithusQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.5
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 28
  IF ~~ THEN REPLY @46 GOTO 28
  IF ~~ THEN REPLY @47 GOTO 29
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY @48
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 14.2
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 14.3
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 31
  IF ~~ THEN REPLY @53 GOTO 32
  IF ~~ THEN REPLY @54 GOTO 33
  IF ~~ THEN REPLY @55 GOTO 34
END

IF ~~ THEN BEGIN 22 // from: 14.4
  SAY @56
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 23 // from: 14.5
  SAY @57
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 16.1
  SAY @58
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 16.2
  SAY @59
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 16.3
  SAY @60
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 16.4
  SAY @61
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 18.1
  SAY @62
  IF ~~ THEN DO ~Enemy()ForceSpell(Myself,WIZARD_STONE_SKIN)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.3
  SAY @63
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @64 GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 20.1
  SAY @65
  IF ~  CheckStatGT(LastTalkedToBy,15,WIS)~ THEN REPLY @66 GOTO 37
  IF ~  CheckStatGT(LastTalkedToBy,30,LORE)~ THEN REPLY @67 GOTO 37
  IF ~~ THEN REPLY @68 GOTO 38
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 31 // from: 21.1
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 37
  IF ~~ THEN REPLY @71 GOTO 38
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 32 // from: 21.2
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 28
  IF ~~ THEN REPLY @52 GOTO 31
  IF ~~ THEN REPLY @55 GOTO 34
  IF ~~ THEN REPLY @54 GOTO 33
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 33 // from: 21.3
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 37
  IF ~~ THEN REPLY @76 GOTO 28
  IF ~~ THEN REPLY @77 GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 21.4
  SAY @78
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @66 GOTO 37
  IF ~~ THEN REPLY @52 GOTO 31
  IF ~~ THEN REPLY @79 GOTO 40
  IF ~~ THEN REPLY @54 GOTO 33
  IF ~~ THEN REPLY @55 GOTO 34
END

IF ~~ THEN BEGIN 35 // from: 22.1
  SAY @80
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 36 // from: 29.2
  SAY @81
  IF ~~ THEN DO ~Enemy()ForceSpell(Myself,WIZARD_STONE_SKIN)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.1
  SAY @82
  IF ~~ THEN REPLY @83 GOTO 17
  IF ~~ THEN REPLY @84 GOTO 28
  IF ~~ THEN REPLY @85 GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 30.2
  SAY @86
  IF ~~ THEN REPLY @83 GOTO 17
  IF ~~ THEN REPLY @84 GOTO 28
  IF ~~ THEN REPLY @85 GOTO 28
END

IF ~~ THEN BEGIN 39 // from: 33.3
  SAY @87
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @52 GOTO 31
  IF ~~ THEN REPLY @53 GOTO 32
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 40 // from: 34.2
  SAY @88
  IF ~~ THEN REPLY @73 GOTO 28
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @35 GOTO 22
  IF ~~ THEN REPLY @36 GOTO 23
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)!Dead("BRAZIER3")~ THEN BEGIN 41 // from:
  SAY @89
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(1)!Dead("BRAZIER3")~ THEN BEGIN 42 // from:
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 43
  IF ~~ THEN REPLY @92 GOTO 18
  IF ~~ THEN REPLY @93 GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @94
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @24 GOTO 44
  IF ~~ THEN REPLY @25 GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY @95
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedToGT(1)!Dead("BRAZIER3")~ THEN BEGIN 45 // from:
  SAY @96
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("BRAZIER3")~ THEN BEGIN 46 // from:
  SAY @97
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @98
  IF ~~ THEN DO ~SetGlobal("NyphithusQuest","GLOBAL",2)GiveItemCreate("NYPHITM",LastTalkedToBy,1,0,0)~ EXIT
END

