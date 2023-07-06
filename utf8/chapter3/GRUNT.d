
BEGIN ~GRUNT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SeedsArePlanted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Вы хотите посадить семена древа Ултарка?~
  IF ~~ THEN REPLY ~Да~ GOTO 1
  IF ~~ THEN REPLY ~Нет~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Семена посажены.~
  IF ~~ THEN DO ~SetGlobal("SeedsArePlanted","GLOBAL",1)TakePartyItem("NWMISC75")DestroyItem("NWMISC75")DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Вы не посадили семена древа Ултарка. ~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

