//  портал-колодец (озеро) в пещере

BEGIN ~NWPASSAE~

IF ~  AreaCheck("NW2302")
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player1)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTOCA21")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player2)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTOCA22")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player3)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTOCA23")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player4)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTOCA24")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player5)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTOCA25")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player6)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWTOCA26")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player1)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWDEADP1")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player2)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWDEADP2")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player3)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWDEADP3")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player4)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWDEADP4")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player5)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWDEADP5")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player6)
~ THEN REPLY @1 DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("NWDEADP6")
~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("WaterDialog","NW2303",0)
Wait(1)
DestroySelf()
~ EXIT
END

