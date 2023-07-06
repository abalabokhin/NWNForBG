// creator  : weidu (version 24600)
// argument : COMMONW2.DLG
// game     : .
// source   : ./DATA/NWGEN3.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~COMMONW2~

IF ~  RandomNum(9,1)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,2)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,3)
~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,4)
~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,5)
~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,6)
~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,7)
~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,8)
~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,9)
Gender(LastTalkedToBy,FEMALE)
~ THEN BEGIN 8 // from:
  SAY @8
  IF ~~ THEN EXIT
END

IF ~  RandomNum(9,9)
Gender(LastTalkedToBy,MALE)
~ THEN BEGIN 9 // from:
  SAY @9
  IF ~~ THEN EXIT
END
