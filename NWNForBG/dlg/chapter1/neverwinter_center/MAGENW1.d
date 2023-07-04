// Центр Невервинтера Башня плаща Маг Человек мужчина Заданий нет 

BEGIN ~MAGENW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy(Myself),MAGE_ALL)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Что вы здесь делаете? Вы же не маг. Это гильдия магов.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)Class(LastTalkedToBy(Myself),MAGE_ALL)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Вам надо поговорить с Эльтурой, она глава нашей гильдии.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)Class(LastTalkedToBy(Myself),MAGE_ALL)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Добро пожаловать в гильдию. Вы уже встречались с Эльтурой?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Class(LastTalkedToBy(Myself),MAGE_ALL)Global("MakingMedicine","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Странно что наша магия не может остановить воющую смерть, мне не понятна природа этой болезни.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("MakingMedicine","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Спасибо за то что помогли остановить воющую смерть, наша магия оказалась перед ней бессильна.~
  IF ~~ THEN EXIT
END

