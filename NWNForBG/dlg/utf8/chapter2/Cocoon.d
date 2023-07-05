//  паучий кокон в пещере

BEGIN ~COCOON~

IF ~  AreaCheck("NW2902")~ THEN BEGIN 0 // from:
  SAY ~Этот кокон не пуст, в нем находится какой-то человек. Хотите попытаться его освободить?~
  IF ~~ THEN REPLY ~Да~ DO ~SetGlobal("Druid1Free","NW2902",1)ClearAllActions()StartCutSceneMode()StartCutScene("Rescue")~ EXIT
  IF ~~ THEN REPLY ~Нет, пусть остается в коконе.~ DO ~DestroySelf()~ EXIT
END

