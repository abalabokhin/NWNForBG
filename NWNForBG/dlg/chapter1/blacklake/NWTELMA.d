// creator  : weidu (version 23700)
// argument : NWTELMA.DLG
// game     : .
// source   : ./override/NWTELMA.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWTELMA~

IF ~  NumberOfTimesTalkedTo(0)
Global("NWTelmaSecret","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 16.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 19.1 18.1 17.2 16.1 10.2 7.1 4.2 3.3 1.2 0.1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 7.0 4.1 1.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.2 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @13
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY @14 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY @14 GOTO 10
  IF ~  Gender(LastTalkedToBy(Myself),MALE)
~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY @17
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 11.0 9.0 5.0
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @2 GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY @22
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @23
  IF ~  Gender(LastTalkedToBy(Myself),MALE)
~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 10.0 6.2
  SAY @24
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.1 8.0 6.3
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @2 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0 8.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("NWTelmaSecret","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 8.2
  SAY @27
  IF ~~ THEN DO ~SetGlobal("NWTelmaSecret","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 8.3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NWTelmaSecret","GLOBAL",1)
~ EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
Global("NWTelmaSecret","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY @28
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~  Global("NWTelmaSecret","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @32
  IF ~~ THEN REPLY @19 GOTO 20
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY @35
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("NWTelmaSecret","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY @36
  IF ~~ THEN EXIT
END
