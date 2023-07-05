// creator  : weidu (version 24600)
// argument : ZOMBIE.DLG
// game     : .
// source   : ./DATA/TB#GEN0.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~ZOMBIE~

IF ~~ THEN BEGIN 0 // from:
  SAY ~Ý-ý-ý...~ [ZOMBI01]
  IF ~~ THEN EXTERN ~BASSIL~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY ~Õ-õ-õ...~
  IF ~~ THEN EXTERN ~BASSIL~ 2
END
