// creator  : weidu (version 23700)
// argument : NWWOMAN1.DLG
// game     : .
// source   : ./override/NWWOMAN1.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWWOMAN1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(1)
~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
HasItem("RING16",Myself)
Global("A6Charmed","LOCALS",0)
~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN DO ~GiveItem("RING16",LastTalkedToBy)
SetGlobal("A6Charmed","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  NumberOfTimesTalkedTo(2)
~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN DO ~CreateCreature("NWHUSB",[490.458],0)
~ EXIT
END
