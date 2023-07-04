//  паучий кокон в пещере

BEGIN ~COCOON~

IF ~  AreaCheck("NW2902")~ THEN BEGIN 0 // from:
  SAY ~Ётот кокон не пуст, в нем находитс€ какой-то человек. ’отите попытатьс€ его освободить?~
  IF ~~ THEN REPLY ~ƒа~ DO ~SetGlobal("Druid1Free","NW2902",1)ClearAllActions()StartCutSceneMode()StartCutScene("Rescue")~ EXIT
  IF ~~ THEN REPLY ~Ќет, пусть остаетс€ в коконе.~ DO ~DestroySelf()~ EXIT
END

