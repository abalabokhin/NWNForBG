// Северная дорога, таверна Зеленый грифон, уровень 1 Стражник. Этот стражник выполняет свой долг учтиво, но твердо.
BEGIN ~MUTGUARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",3)GlobalLT("KnowsAboutMatch","GLOBAL",7)Global("Komplement","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Поздравляю с победой, <LADYLORD>. Мне удалось посмотреть только часть, но это было потрясающе.~
  IF ~~ THEN DO ~SetGlobal("Komplement","LOCALS",0)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 1 // from:
  SAY ~Это таверна Зеленый Грифон. Я не знаю, найдется ли для тебя комната... об этом тебе лучше поговорить с Мутамином, он здесь хозяин.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 2 // from:
  SAY ~Добро пожаловать в Зеленый Грифон, <LADYLORD>. В последнее время это прибежище всех местных бродяг.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 3 // from:
  SAY ~Следите за собой, когда находитесь в приличной таверне, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 4 // from:
  SAY ~Смотрите, чтобы с вами не было проблем, <SIRMAAM>, иначе мне придется выставить вас из таверны.~
  IF ~~ THEN EXIT
END
