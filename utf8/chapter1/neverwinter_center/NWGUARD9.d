BEGIN ~NWGUARD9~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Я служу лорду Нашеру и леди Арибет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Не видишь я занят?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Нам нужно тренироваться, не мешай.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Я вас не узнаю, вы новенькие?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~*Вздыхает* С тех пор, как началась эпидемия, у нас очень много дел...~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Если у вас есть какое-то дело, поговорите с леди Арибет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)GlobalGT("MakingMedicine","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Не видишь я занят?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)GlobalGT("MakingMedicine","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Нам нужно тренироваться, не мешай.~
  IF ~~ THEN EXIT
END

