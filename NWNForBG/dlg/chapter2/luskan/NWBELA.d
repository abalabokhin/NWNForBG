// Лускан Подмигни и ущипни, 1-й уровень  Бела   Эта полная озабоченная женщина, похоже, твердой рукой справляется с толпами грубых и жестоких мужчин, посещающих ее заведение.

BEGIN ~NWBELA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,9,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~  IsGabber(Player1)Global("SayName","LOCALS",0)~ THEN GOTO 8
  IF ~  !IsGabber(Player1)~ THEN GOTO 9
  IF ~  IsGabber(Player1)Global("SayName","LOCALS",1)~ THEN GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~  IsGabber(Player1)~ THEN REPLY @15 GOTO 14
  IF ~  !IsGabber(Player1)~ THEN REPLY @15 GOTO 38
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @16
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @21
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @22 DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 10
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @22 DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @23 DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 18
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @23 DO ~SetGlobal("SayName","LOCALS",1)~ GOTO 19
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @24 GOTO 20
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @24 GOTO 21
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY @21
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @25 GOTO 20
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @25 GOTO 21
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @24 GOTO 20
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @24 GOTO 21
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @29
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 24
  IF ~~ THEN REPLY @32 GOTO 25
  IF ~~ THEN REPLY @33 GOTO 26
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 3.1
  SAY @35
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY @36
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @37 DO ~SetGlobal("Bela_Rhaine","GLOBAL",1)~ GOTO 28
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @37 DO ~SetGlobal("Bela_Oreth","GLOBAL",1)~ GOTO 29
  IF ~~ THEN REPLY @38 GOTO 30
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @39 GOTO 31
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @39 GOTO 32
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @40 GOTO 33
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @40 GOTO 34
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @41
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY @42
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY @43
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 8.3
  SAY @44
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY @45
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY @46
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 8.6
  SAY @47
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 10.1
  SAY @48
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY @50
  IF ~~ THEN REPLY @32 GOTO 25
  IF ~~ THEN REPLY @33 GOTO 26
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY @51
  IF ~~ THEN REPLY @31 GOTO 24
  IF ~~ THEN REPLY @33 GOTO 26
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 12.3
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 35
  IF ~~ THEN REPLY @31 GOTO 24
  IF ~~ THEN REPLY @32 GOTO 25
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 27 // from: 12.4
  SAY @54
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @11 GOTO 12
  IF ~~ THEN REPLY @12 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 14.1
  SAY @55
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 29 // from: 14.2
  SAY @56
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @28 GOTO 23
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 30 // from: 14.3
  SAY @57
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @58 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 31 // from: 14.4
  SAY @59
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @58 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 14.4
  SAY @60
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @58 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 33 // from: 14.5
  SAY @61
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @58 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 34 // from: 14.6
  SAY @62
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @58 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 35 // from: 26.1
  SAY @63
  IF ~~ THEN REPLY @31 GOTO 24
  IF ~~ THEN REPLY @32 GOTO 25
  IF ~~ THEN REPLY @34 GOTO 27
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 38 // from:
  SAY @64
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @58 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,10,CHR)~ THEN BEGIN 36 // from:
  SAY @65
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 37 // from:
  SAY @66
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

