// Форт-Илкард: усадьбы, Воин племени Лося. Этот стражник подозрительно смотрит на вас.

BEGIN ~MOOSEWAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Ты великий герой! Из поколения в поколение будет передаваться история о том, как ты спас людей Лося от Воющей Смерти.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)!Dead("Zokan")~ THEN BEGIN 1 // from:
  SAY ~Следуй за мной. Я отведу тебя к Зокану.~
  IF ~~ THEN DO ~SetGlobal("ToZokan", "LOCALS",1)~ EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!Dead("Zokan")GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY ~Я вижу в тебе знак мира для Утгардтов. Ты хочешь договориться с людьми Лося?~
  IF ~  Global("ToZokan", "LOCALS",0)~ THEN REPLY ~Я желаю говорить с вашим вождем, Зоканом Громовержцем.~ GOTO 3
  IF ~  GlobalGT("ToZokan", "LOCALS",0)~ THEN REPLY ~Я желаю говорить с вашим вождем, Зоканом Громовержцем.~ GOTO 4
  IF ~~ THEN REPLY ~Единственное, о чем я буду договариваться - твоя смерть!~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Над тобой знамя мира, ты, вроде, личность честная и благородная. Следуй за мной. Я отведу тебя к Зокану.~
  IF ~~ THEN DO ~SetGlobal("ToZokan", "LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Над тобой знамя мира, ты, вроде, личность честная и благородная. Иди поговори с Зоканом. Его комнаты находятся в центре крепости..~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~Узнай же силу гнева племени Лосей Утгардта!~
  IF ~~ THEN DO ~SetGlobal("ZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

