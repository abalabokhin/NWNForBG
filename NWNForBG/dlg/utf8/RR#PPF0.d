// creator  : weidu (version 24600)
// argument : RR#PPF0.DLG
// game     : .
// source   : ./DATA/TB#GEN12.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~RR#PPF0~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY ~Идите прочь! Не хочу иметь никаких дел с жалкими карманниками!~
  IF ~~ THEN EXIT
END
