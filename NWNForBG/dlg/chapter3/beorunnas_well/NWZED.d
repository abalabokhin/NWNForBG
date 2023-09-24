// Колодец Беорунна: Казармы наемников Зед, солдат Союза Лордов.      

BEGIN ~NWZED~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Cheating","LOCALS",0)Global("ZedTalk","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  Global("Cheating","LOCALS",0)CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY @4 GOTO 4
  IF ~  Global("Cheating","LOCALS",0)CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Cheating ","LOCALS",2)GiveGoldForce(100)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 1
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Cheating","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @27
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 10
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 16
  IF ~~ THEN REPLY @34 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @35
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @36
  IF ~~ THEN DO ~SetGlobal("Cheating","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("ZedTalk","GLOBAL",1)~ EXIT
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Cheating","LOCALS",0)Global("ZedTalk","GLOBAL",1)Global("RolgansTrial","GLOBAL",1)~ THEN BEGIN 19 // from:
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~~ THEN REPLY @5 GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @40
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @41
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @42
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Cheating","LOCALS",0)GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @43
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Cheating","LOCALS",0)GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 24 // from:
  SAY @44
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Cheating","LOCALS",2)~ THEN BEGIN 25 // from:
  SAY @45
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Cheating","LOCALS",1)~ THEN BEGIN 26 // from:
  SAY @46
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: NWIGLAND 4.1
  SAY @47
  IF ~~ THEN EXTERN ~NWIGLAND~ 5
END

IF ~~ THEN BEGIN 28 // from: NWIGLAND 5.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~  GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @52 GOTO 32
  IF ~~ THEN REPLY @53 EXTERN ~NWIGLAND~ 6
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @54
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~  GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @52 GOTO 32
  IF ~~ THEN REPLY @53 EXTERN ~NWIGLAND~ 6
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY @55
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~  GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @52 GOTO 32
  IF ~~ THEN REPLY @53 EXTERN ~NWIGLAND~ 6
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY @56
  IF ~~ THEN REPLY @57 DO ~IncrementGlobal("Justification","GLOBAL",1)~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 28.4
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY @60
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~~ THEN REPLY @52 GOTO 32
  IF ~~ THEN REPLY @53 EXTERN ~NWIGLAND~ 6
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @61
  IF ~  CheckStatGT(Player1,10,INT)~ THEN REPLY @62 DO ~IncrementGlobal("Justification","GLOBAL",1)~ GOTO 35
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~  GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @53 EXTERN ~NWIGLAND~ 6
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @63
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~  GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @53 EXTERN ~NWIGLAND~ 6
END

