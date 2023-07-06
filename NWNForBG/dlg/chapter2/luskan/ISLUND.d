// Лускан     Капитан Ислунд     Двор Башни Хозяина   В поведении этого стражника угадываются паранойя и мрачная решимость.

BEGIN ~ISLUND~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("IslundPermission","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @2
  IF ~  CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @3 GOTO 2
  IF ~  CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("IslundPermission","MYAREA",1)TakePartyItem("PermitTo")Unlock("Door1")OpenDoor("Door1")~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @10
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @12
  IF ~  CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @13 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @16
  IF ~~ THEN DO ~SetGlobal("IslundPermission","MYAREA",1)TakePartyItem("PermitTo")Unlock("Door1")OpenDoor("Door1")~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("IslundPermission","MYAREA",1)TakePartyItem("PermitTo")Unlock("Door1")OpenDoor("Door1")~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 6
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @24
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY @29
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @38
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @39
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 17
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @40
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY @41
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY @42
  IF ~~ THEN REPLY @35 GOTO 20
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @23 GOTO 14
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("IslundPermission","MYAREA",0)~ THEN BEGIN 23 // from:
  SAY @43
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 6
  IF ~~ THEN REPLY @23 GOTO 14
END

