// creator  : weidu (version 24600)
// argument : NWPPF0.DLG
// game     : .
// source   : ./DATA/TB#GEN12.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWPPF0~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END
