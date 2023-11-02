// Добавить строки: Жена:Не подходите к этим ступеням... --> Муж: Они еле дышат и - и это опасно, лезть-то на них, слышь?

// Порт-Лласт Дом Эйзенфельдта    Мать Урта 

BEGIN ~NWEISNF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("NWURTRIG")Global("NWUrtIsSaved","GLOBAL",0)!Dead("NWURT")!Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @0
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~NWEISNM~ EXT01
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("NWURTRIG")Global("NWUrtIsSaved","GLOBAL",0)!Dead("NWURT")Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @1
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~NWEISNM~ EXT02
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("NWURT")Global("NWUrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("NWURTRIG")Global("NWUrtIsSaved","GLOBAL",1)!Dead("NWURT")Global("NWUrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWUrtGold","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY @4
  IF ~~ THEN EXIT
END
