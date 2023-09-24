// creator  : weidu (version 23700)
// argument : NWGLOVE.DLG
// game     : .
// source   : ./override/NWGLOVE.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWGLOVE~

IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("NWGLOVE",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN BEGIN 1 // from:
  SAY @3
  IF ~~ THEN REPLY @1DO ~StartStore("NWGLOVE",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
