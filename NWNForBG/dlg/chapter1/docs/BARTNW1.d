// creator  : weidu (version 23700)
// argument : BARTNW1.DLG
// game     : .
// source   : ./override/BARTNW1.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~BARTNW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("Inn1101",LastTalkedToBy(Myself))
~ EXIT
END
