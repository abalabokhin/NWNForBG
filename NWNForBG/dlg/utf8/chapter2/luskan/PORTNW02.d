// Лускан - Башня хозяина - 2 этаж - Портал

BEGIN ~PORTNW02~

  IF~  True()~ THEN BEGIN 0 // from:
  SAY ~Камни на колонне перед вами излучают магию. Какой уровень вы выберете?~
  IF ~~ THEN REPLY ~1-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E58")~ EXIT
  IF ~  !AreaCheck("NW2E59")~ THEN REPLY ~2-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E59")~ EXIT 
  IF ~  !AreaCheck("NW2E60")GlobalGT("LuscanTower","GLOBAL",1)~ THEN REPLY ~3-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E60")~ EXIT
  IF ~  !AreaCheck("NW2E61")GlobalGT("LuscanTower","GLOBAL",2)~ THEN REPLY ~4-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E61")~ EXIT
  IF ~  !AreaCheck("NW2E62")GlobalGT("LuscanTower","GLOBAL",3)~ THEN REPLY ~5-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E62")~ EXIT
  IF ~  !AreaCheck("NW2E63")GlobalGT("LuscanTower","GLOBAL",4)~ THEN REPLY ~6-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E63")~ EXIT
  IF ~  !AreaCheck("NW2E64")GlobalGT("LuscanTower","GLOBAL",5)~ THEN REPLY ~7-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E64")~ EXIT
  IF ~  !AreaCheck("NW2E65")GlobalGT("LuscanTower","GLOBAL",6)~ THEN REPLY ~8-й этаж.~ DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ToNW2E65")~ EXIT
  IF ~~ THEN REPLY ~Остаться на этом этаже.~ EXIT
END

