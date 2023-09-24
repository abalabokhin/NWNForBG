// creator  : weidu (version 23700)
// argument : BFISHER2.DLG
// game     : .
// source   : ./DATA/FFT#1.BIF
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~NWBFISH3~ 2 // non-zero flags may indicate non-pausing dialogue
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~  RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~  RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~  RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~  RandomNum(4,4)
~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("InteractAerie","LOCALS",0)
IfValidForPartyDialogue("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN DO ~SetGlobal("InteractAerie","LOCALS",1)
~ EXTERN ~AERIEJ~ 31
END

IF WEIGHT #1 ~  Global("InteractCernd","LOCALS",0)
IfValidForPartyDialogue("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
RandomNum(2,1)
~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN DO ~SetGlobal("InteractCernd","LOCALS",1)
~ EXTERN ~CERNDJ~ 77
END

IF WEIGHT #2 ~  Global("InteractEdwin","LOCALS",0)
IfValidForPartyDialogue("Edwin")
RandomNum(2,1)
~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN DO ~SetGlobal("InteractEdwin","LOCALS",1)
~ EXTERN ~EDWINJ~ 54
END

IF WEIGHT #3 ~  Global("InteractAnomen","LOCALS",0)
IfValidForPartyDialogue("Anomen")
RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN DO ~SetGlobal("InteractAnomen","LOCALS",1)
~ EXTERN ~ANOMENJ~ 191
END
