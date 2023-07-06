// Северная дорога, Зеленый_Грифон Юань-Ти

BEGIN ~YUANTINW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("YuantiRiddle","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY @14
 IF ~~ THEN DO ~SetGlobal("YuantiRiddle","MYAREA",1)AddexperienceParty(20000)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @15
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @16
  IF ~~ THEN DO ~Enemy()~ EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("YuantiRiddle","MYAREA",1)~ THEN BEGIN 8 // from:
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 1
  IF ~~ THEN REPLY @19 GOTO 9
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @21
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 8.3
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @23
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @24
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY @27 GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 6
  IF ~~ THEN REPLY @29 GOTO 6
  IF ~~ THEN REPLY @30 GOTO 6
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 6
  IF ~~ THEN REPLY @33 GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 13.2
  SAY @34
  IF ~~ THEN REPLY @26 GOTO 11
  IF ~~ THEN REPLY @28 GOTO 6
  IF ~~ THEN REPLY @29 GOTO 6
  IF ~~ THEN REPLY @30 GOTO 6
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 6
  IF ~~ THEN REPLY @33 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY @35
  IF ~~ THEN REPLY @26 GOTO 11
  IF ~~ THEN REPLY @28 GOTO 6
  IF ~~ THEN REPLY @29 GOTO 6
  IF ~~ THEN REPLY @30 GOTO 6
  IF ~~ THEN REPLY @31 GOTO 16
  IF ~~ THEN REPLY @32 GOTO 6
  IF ~~ THEN REPLY @33 GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 13.7
  SAY @36
 IF ~~ THEN DO ~SetGlobal("YuantiRiddle","MYAREA",2)AddexperienceParty(20000)GiveItem("Nwmisc08",LastTalkedToBy(Myself))~ EXIT
END

// ------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("YuantiRiddle","MYAREA",2)~ THEN BEGIN 17 // from:
  SAY @37
  IF ~~ THEN EXIT
END

