// Добавить строки: Жена:Не подходите к этим ступеням... --> Муж: Они еле дышат и - и это опасно, лезть-то на них, слышь?

// Порт-Лласт Дом Эйзенфельдта    Мать Урта 

BEGIN ~EISNF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")!Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @0
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~EISNM~ EXT01
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @1
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~EISNM~ EXT02
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("Urt")Global("UrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",1)!Dead("Urt")Global("UrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("UrtGold","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY @4
  IF ~~ THEN EXIT
END
