// Чернозерье Перчатка Храск Дварф Этот гном осторожно вас рассматривает. Он очень силен и следит за своей внешностью - его борода безупречно расчесана.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~CHRUSK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Фе! У меня нет времени на новичков. Если ищете уважения, ступайте на арену.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY ~Ладно, даже если победить меня, с Фаши вам не сладить. Нет, ни за что.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY ~А знаете, вы довольно круты, если смогли победить Фаши и получить медаль второго раунда. Может, вы и Агара победите... Может быть.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY ~Вы получаете медаль третьего раунда! Может, вам удастся одолеть и Клодуса! Может быть... Если бы у него не было уговора с целителем...~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY ~Клодуса победили! На это стоило посмотреть, даже "Перчатка" была тому ценой.~
  IF ~~ THEN EXIT
END

