// creator  : weidu (version 23700)
// argument : NWBART1.DLG
// game     : .
// source   : ./override/NWBART1.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWBART1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("NWIN1101",LastTalkedToBy(Myself))
~ EXIT
END
