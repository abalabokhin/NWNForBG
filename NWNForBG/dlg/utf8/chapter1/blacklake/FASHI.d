// Чернозерье Перчатка Фаши Полурослик По лицу этого удивительно спокойного полурослика невозможно прочитать, о чем он думает.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~FASHI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в "Перчатку". Жду не дождусь, когда же увижу вас на арене.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY ~Вы превзошли уровень Храска! замечательно. Посмотрим, справитесь ли вы со мной.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY ~Ваша медаль предполагает, что вы можете победить меня. Но биться со мной - совсем не то, что с Агаром.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY ~Знатная медаль. Вы могли бы победить и самого Клодуса. Было бы здорово. Подозреваю, он ведет нечестный бой.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY ~Никогда не думал, что доживу до такого. Я буду скучать по этому месту.~
  IF ~~ THEN EXIT
END

