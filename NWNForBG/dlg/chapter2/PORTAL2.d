//  портал в мире духа в лес Невервинтер

BEGIN ~PORTAL2~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY ~В вихре этого портала можно разглядеть очертания Леса Невервинтер. Ты хочешь войти в портал?~
  IF ~~ THEN REPLY ~Да~ DO ~SetGlobal("SriritPortal","GLOBAL",2)ClearAllActions()StartCutSceneMode()StartCutScene("ToWood")~ EXIT
  IF ~~ THEN REPLY ~Нет~ EXIT
END
