// Добавить строки: Жена:Не подходите к этим ступеням... --> Муж: Они еле дышат и - и это опасно, лезть-то на них, слышь?

// Порт-Лласт Дом Эйзенфельдта    Мать Урта 

BEGIN ~EISNF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")!Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~Убирайтесь. Мы не хотим, чтобы с вами в этот дом пришла беда.~
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~EISNM~ EXT01
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")Global("Stairs","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~Не подходите к этим ступеням... ~
//  IF ~~ THEN EXIT
IF ~~ THEN EXTERN ~EISNM~ EXT02
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("Urt")Global("UrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY ~Если вы хотите поиздеваться надо мной, лучше выйдите наружу, чтобы я вас не слышала.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",1)!Dead("Urt")Global("UrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Наш мальчик, Урт, опять стал собой! А ведь мы уже почти похоронили его! Прошу вас поговорите с моим мужем, он очень хотел вас отблагодарить.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("UrtGold","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY ~Спасибо за вашу доброту, <SIRMAAM>! Мы вас так скверно встретили, а вы нам так помогли...~
  IF ~~ THEN EXIT
END
