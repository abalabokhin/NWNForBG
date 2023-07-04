// Чернозерье Перчатка Кинер Полурослик Этот полурослик явно в восторге от боя. Он восхищается любым, кто может показать свои способности на арене.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~KEENER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Обожаю хорошую драчку.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)Global("Encounter","MYAREA",1)~ THEN BEGIN 1 // from:
  SAY ~Отличный бой. Вы выиграли ваш первый знак.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)Global("Encounter","MYAREA",2)~ THEN BEGIN 2 // from:
  SAY ~Это большая потеря, да. Фаши очень силен. Вы сделали все, что могли. Хотя мне трудно судить со стороны.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)Global("Encounter","MYAREA",2)~ THEN BEGIN 3 // from:
  SAY ~Ух ты, ваш второй знак. Думаю, вы должны пойти до конца.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)Global("Encounter","MYAREA",3)~ THEN BEGIN 4 // from:
  SAY ~Тяжелая схватка. Желаю удачи в следующий раз. Я, конечно, поставлю на Агара, но все равно желаю вам удачи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)Global("Encounter","MYAREA",3)~ THEN BEGIN 5 // from:
  SAY ~Вы это сделали! Вы получили третий знак. Агар побежден!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)Global("Encounter","MYAREA",4)~ THEN BEGIN 6 // from:
  SAY ~Нужно было это предвидеть. Никому не справиться с Клодусом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)Global("Encounter","MYAREA",4)~ THEN BEGIN 7 // from:
  SAY ~Никогда не приходилось видеть такого боя! Меня даже кровищей забрызгало! Ни за что не буду ее смывать.~
  IF ~~ THEN EXIT
END

