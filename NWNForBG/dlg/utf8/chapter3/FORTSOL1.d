// Форт Илкард, Рыцарь. Этот мужчина - один из защитников форта Илкард.

BEGIN ~FORTSOL1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Не знаю, сколько еще мы можем выстоять в этой осаде.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Siege_Is_Lifted","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY ~Теперь, когда осада закончена, интересно, пошлют ли они нас сражаться с Лусканом.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GuardsKnowPlayer","MYAREA",1)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Я простой солдат. Тебе на самом деле стоит поговорить с командиром Дамасом.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("GuardsKnowPlayer","MYAREA",0)Global("Siege_Is_Lifted","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Назовитесь или мы будем атаковать!~
  IF ~~ THEN REPLY ~Я работаю на Аарина Генда и Союз Лордов.~ GOTO 4
  IF ~~ THEN REPLY ~Я не обязан отвечать тебе!~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Аккурат вовремя пришла подмога! Я не знаю как долго можно держать форт против осады Утгардтов! Вам надо поговорить с командиром Дамасом.~
  IF ~~ THEN DO ~SetGlobal("GuardsKnowPlayer","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY ~Тогда ты ответишь нашим клинкам! В атаку!~
  IF ~~ THEN DO ~Shout(HELPME)Enemy()~ EXIT
END

