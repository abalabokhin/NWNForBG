
BEGIN ~NWGRUNT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWSeedsArePlanted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("NWSeedsArePlanted","GLOBAL",1)TakePartyItem("NWMISC75")DestroyItem("NWMISC75")DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

