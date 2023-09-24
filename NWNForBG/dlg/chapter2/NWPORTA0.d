//  портал в мире духа в лес Невервинтер

BEGIN ~NWPORTA0~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("SriritPortal","GLOBAL",2)ClearAllActions()StartCutSceneMode()StartCutScene("NWTOWOOD")~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END
