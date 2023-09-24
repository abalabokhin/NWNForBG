// Чернозерье Перчатка Клодус Человек Огромный мужчина, очевидно, не дурак подраться. Он с подозрением осматривает всех в зале.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

// DisplayString Победили? Это ничего не доказывает! Где они?! Хочу поговорить с отбросами, что одолели меня!~ [NWCLAUD1]

BEGIN ~NWCLAUDS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @5
  IF ~~ THEN DO ~EscapeAreaObject("To1409")~ EXIT
END

