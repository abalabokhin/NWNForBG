// Порт-Лласт Жена фермера 1 Заданий нет

BEGIN ~FARMWIF3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~У нас тут гости, золотце. Иди, приведи себя в приличный вид.~
  IF ~~ THEN EXTERN ~DAUGHTER~ 18
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 1 // from:
  SAY ~Немедленно перестань приставать к таким, как я.~
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

IF ~~ THEN BEGIN 7 // from: DAUGHTER
  SAY ~И когда-нибудь превратишься в достаточно приличную старую деву к тому же, так что иди и надень симпатичную блузку.~
  IF ~~ THEN EXTERN ~DAUGHTER~ 19 
END

IF ~~ THEN BEGIN 8 // from: DAUGHTER
  SAY ~Простите, но моя дочь совсем от рук отбилась. Приятно видеть людей первого сорта в нашем городе. Добро пожаловать в Порт-Лласт!~
  IF ~~ THEN EXIT
END
