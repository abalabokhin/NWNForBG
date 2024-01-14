// creator  : weidu (version 23700)
// argument : NWBOOKCE.DLG
// game     : .
// source   : ./override/NWBOOKCE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWBOOKCE~

IF ~  Global("NWDoorOpened","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  OR(2)GlobalGT("NWTelmaSecret","GLOBAL",0)GlobalGT("NWPankinSecret","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~HaveSpell(WIZARD_KNOCK)~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @7
  IF ~~ THEN DO ~SetGlobal("NWDoorOpened","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 0.3 0.2 0.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY @9
  IF ~~ THEN DO ~RemoveSpell(WIZARD_KNOCK)~ EXIT
END
