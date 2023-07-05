// Чернозерье Перчатка Агар Полуорк Угрюмый и самоуверенный полуорк. Там, где его тело не прикрыто доспехами, оно покрыто огромным количеством шрамов.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~AGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Свежее мясо для арены? Хорошо! Мне тут порядком надоело!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY ~Хе, Храск слишком слаб. Победа над ним ничего не значит. Может, Фаши вам подойдет, но он тоже мелкий! Ха! Дети, ей-богу!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY ~Ха! Так вы одолели этого малявку Фаши? Хе! Я как-то раз его тоже одолел. Попробуйте-ка теперь сразиться со мной!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY ~Вы прошли третий раунд! Вы хорошо деретесь! Можете попробовать одолеть Клодуса! Осторожнее, честностью он не страдает. Не знаю, как, но он жульничает.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY ~Я знал, что это можно было сделать, но мне не хватило смекалки. Ладно! Я возвращаюсь к настоящим битвам!~
  IF ~~ THEN EXIT
END

