// creator  : weidu (version 23700)
// argument : DMOUTH.DLG
// game     : .
// source   : ./DATA/TOTL-MSC.BIF
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWMOUTH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 3.0 0.2 0.1 0.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("NWTOTAV2")
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY @0
  IF ~~ THEN REPLY @10 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @12 EXIT
END

IF WEIGHT #0 ~  PartyHasItem("Nwmisc08")
PartyHasItem("Nwmisc09")
PartyHasItem("Nwmisc10")
PartyHasItem("Nwmisc11")
~ THEN BEGIN 4 // from:
  SAY @14
  IF ~~ THEN DO ~AddexperienceParty(20000)
StartCutSceneMode()
StartCutScene("NWDUMMBE")
~ EXIT
END
