//  портал-колодец (озеро) в пещере

BEGIN ~PASSAGE~

IF ~  AreaCheck("NW2302")
~ THEN BEGIN 0 // from:
  SAY ~Вы замечаете нечто похожее на подводный проход. Если вы достаточно выносливы и можете надолго задерживать дыхание, возможно, вам удастся переплыть на другую сторону. Хотите попробовать?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player1)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToCave21")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player2)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToCave22")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player3)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToCave23")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player4)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToCave24")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player5)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToCave25")
~ EXIT
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)
IsGabber(Player6)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ToCave26")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player1)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DeadP1")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player2)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DeadP2")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player3)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DeadP3")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player4)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DeadP4")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player5)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DeadP5")
~ EXIT
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)
IsGabber(Player6)
~ THEN REPLY ~Да~ DO ~SetGlobal("WaterDialog","NW2302",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("DeadP6")
~ EXIT
  IF ~~ THEN REPLY ~Нет~ DO ~SetGlobal("WaterDialog","NW2303",0)
Wait(1)
DestroySelf()
~ EXIT
END

