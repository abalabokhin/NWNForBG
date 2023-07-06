// Чернозерье Перчатка Кинер Полурослик Этот полурослик явно в восторге от боя. Он восхищается любым, кто может показать свои способности на арене.

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~KEENER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)Global("Encounter","MYAREA",1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)Global("Encounter","MYAREA",2)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)Global("Encounter","MYAREA",2)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)Global("Encounter","MYAREA",3)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)Global("Encounter","MYAREA",3)~ THEN BEGIN 5 // from:
  SAY @5
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)Global("Encounter","MYAREA",4)~ THEN BEGIN 6 // from:
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)Global("Encounter","MYAREA",4)~ THEN BEGIN 7 // from:
  SAY @7
  IF ~~ THEN EXIT
END

