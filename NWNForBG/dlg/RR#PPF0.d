// creator  : weidu (version 24600)
// argument : RR#PPF0.DLG
// game     : .
// source   : ./DATA/TB#GEN12.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~RR#PPF0~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END
