// creator  : weidu (version 24600)
// argument : NWMESS.DLG
// game     : .
// source   : ./DATA/NWGEN2.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWMESS~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.0
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 1.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("NWMessenger_of_Neverwinter","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTON")
~ EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY @8
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END
