// Лускан Грегор Армист - охранник борделя на улице   В поведении этого стражника угадываются паранойя и мрачная решимость.

BEGIN ~NWGREGOR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Global("GregorAttack1","MYAREA",3)!Global("GregorAttack2","MYAREA",3)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @14
  IF ~~ THEN REPLY @8 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @27
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @31
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 16
  IF ~~ THEN REPLY @36 GOTO 17
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @37
  IF ~~ THEN REPLY @30 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 10.2
  SAY @38
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @39
  IF ~~ THEN REPLY @36 GOTO 17
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY @40
  IF ~~ THEN REPLY @35 GOTO 16
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY @41
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY @42
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 8.3
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 8.4
  SAY @45
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @24 GOTO 20
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY @46
  IF ~~ THEN REPLY @22 GOTO 18
  IF ~~ THEN REPLY @23 GOTO 19
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("GregorAttack1","MYAREA",3)!Global("GregorAttack2","MYAREA",3)~ THEN BEGIN 23 // from:
  SAY @47
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

// ----------------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GregorAttack1","MYAREA",3)~ THEN BEGIN 24 // from:
  SAY @48
  IF ~~ THEN REPLY @49 DO ~SetGlobal("GregorAttack1","MYAREA",4)AddexperienceParty(10000)~ GOTO 9
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @2 DO ~SetGlobal("GregorAttack1","MYAREA",4)AddexperienceParty(10000)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("GregorAttack1","MYAREA",4)AddexperienceParty(10000)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("GregorAttack1","MYAREA",4)AddexperienceParty(10000)~ GOTO 4
END

// ----------------------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GregorAttack2","MYAREA",3)~ THEN BEGIN 25 // from:
  SAY @48
  IF ~~ THEN REPLY @49 DO ~SetGlobal("GregorAttack2","MYAREA",4)AddexperienceParty(10000)~ GOTO 9
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @2 DO ~SetGlobal("GregorAttack2","MYAREA",4)AddexperienceParty(10000)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("GregorAttack2","MYAREA",4)AddexperienceParty(10000)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("GregorAttack2","MYAREA",4)AddexperienceParty(10000)~ GOTO 4
END

