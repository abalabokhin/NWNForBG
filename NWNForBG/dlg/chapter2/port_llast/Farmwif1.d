// Порт-Лласт Жена фермера 1 Заданий нет

BEGIN ~FARMWIF1~

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 0 // from:
  SAY ~Простите господин, у меня нет времени на разговоры.~ ~Простите госпожа, у меня нет времени на разговоры.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 2 // from:
  SAY ~Приятно видеть людей первого сорта в нашем городе. Добро пожаловать в Порт-Лласт!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 3 // from:
  SAY ~Ох уж эти искатели приключений! Слишком много их развелось в Порт-Лласте.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 4 // from:
  SAY ~Не докучайте мне, у меня нет времени на разговоры.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 5 // from:
  SAY ~Люди говорят, в Невервинтере все умерли!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 6 // from:
  SAY ~Вы из Невервинтера? Не подходите ко мне, вдруг вы заразные.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkedTo","LOCALS",1)~ THEN BEGIN 7 // from:
  SAY ~Иди умойся, сынок. От тебя воняет морем.~
  IF ~~ THEN DO ~SetGlobal("TalkedTo","LOCALS",2)~ EXTERN ~BOYPL~ 7
END
