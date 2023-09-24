// creator  : /home/paladin/Downloads/NearInfinity.jar (v2.4-20230708 (75d3dc8))
// game     : /home/paladin/Games/bgnwn
// resource : NWSTEAL3.DLG
// source   : Data/NWGEN6.bif
// dialog   : dialog.tlk
// dialogF  : dialogf.tlk

BEGIN ~NWSTEAL3~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~ReputationInc(-2)
Enemy()
~ EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @2
  IF ~~ THEN DO ~ReputationInc(-2)
Enemy()
~ EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @3
  IF ~~ THEN DO ~ReputationInc(-2)
Enemy()
~ EXIT
END
