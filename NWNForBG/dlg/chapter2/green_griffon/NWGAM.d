// creator  : weidu (version 23700)
// argument : NWGAM.DLG
// game     : .
// source   : ./override/NWGAM.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWGAM~

IF ~  NumberOfTimesTalkedTo(0)
GlobalLT("KnowsAboutMatch","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)
~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.0
  SAY @9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY @10 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 1.1
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 1.2
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 9.0 3.0
  SAY @15
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 3.1
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY @19 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY @19 GOTO 8
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @20
  IF ~~ THEN EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
GlobalLT("KnowsAboutMatch","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
Global("KnowsAboutMatch","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY @22
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("NW2210")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("Cure","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY @26 GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY @26 GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("NWPOTN08")
~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 DO ~SetGlobal("Promise","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY@30
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY @26 GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY @26 GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("NWPOTN08")
~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 EXIT
  IF ~~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 14.1 13.1
  SAY @32
  IF ~~ THEN REPLY @31 GOTO 20
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY @26 GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY @26 GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("NWPOTN08")
~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 EXIT
  IF ~~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1 14.2 13.2
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("Potn52")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 20.2 15.2 14.3 13.3
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("Potn55")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.3 15.3 14.4 13.4
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NWPOTN08")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 20.5 15.5 14.6 13.6
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0 14.0 13.7
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 21
  IF ~~ THEN REPLY @37 GOTO 21
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY @26 GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("NWPOTN08")
~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 EXIT
  IF ~~ THEN REPLY @28 GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.0
  SAY @38
  IF ~~ THEN DO ~SetGlobal("Cure","LOCALS",66)
~ EXIT
END

IF ~  AreaCheck("NW2210")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("Cure","LOCALS",2)
~ THEN BEGIN 22 // from:
  SAY @33
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @39
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @40
  IF ~~ THEN DO ~SetGlobal("Cure","LOCALS",3)
SetGlobal("GamCure","GLOBAL",1)
GiveItemCreate("Book07",LastTalkedToBy,1,0,0)
EscapeArea()
~ EXIT
END

IF ~  AreaCheck("NW2201")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("GamCure","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY @41
  IF ~~ THEN EXIT
END
