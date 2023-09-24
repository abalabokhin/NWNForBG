// Руины рас создателей, Воздушный мефит

BEGIN ~NWMEPAR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("NWGONGDO")~ EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @4
  IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("NWGONGDO")~ EXIT
END

