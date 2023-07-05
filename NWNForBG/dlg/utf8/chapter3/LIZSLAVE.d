// Форт Илкард Руины Расы Созидателей - в прошлом Раб, Человек  По железному воротнику на шее этого человека можно с уверенностью сказать, что он - раб.

BEGIN ~LIZSLAVE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY ~Ург айди бакаак, ад пикат уабб! Ноба вадэ?~
  IF ~~ THEN REPLY ~Что ты говоришь? Я не могу разобрать ни слова!~ GOTO 1
  IF ~~ THEN REPLY ~Прошу прощения, я ничего не могу понять.~ GOTO 1
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Моаб ухтадэа.~
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 2 // from:
  SAY ~У тебя нет ошейника раба! Госпожа вырвет мне язык, если увидят, что я разговариваю с тобой! Уходи!~
  IF ~~ THEN REPLY ~Мне нужно задать вам несколько вопросов.~ GOTO 3
  IF ~~ THEN REPLY ~Не беспокойся, я защищу тебя от Госпожи!~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Помощь беглым рабам карается смертью! Меня не должны видеть с тобой!~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Не глупи! Госпожи принадлежат к Расе Созидателей! Перед ними каждый <RACE> - пустое место!~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~Поговори с Локаром, нашим предводителем. Он часто помогает сбежавшим рабам вроде тебя, но я недостаточно храбр для подобного риска.~
  IF ~~ THEN EXIT
END

