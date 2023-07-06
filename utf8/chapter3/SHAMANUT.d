// Форт Илкард Крепость племени Лося Шаман племени Лося, Метки на одежде этой женщины говорят о том, что она - шаманка племени Лосей из Утгардта.

BEGIN ~SHAMANUT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY ~Дети Лося в печали. Болезнь убивает наш народ. Пожалуйста, поговори с Зоканом Громовержцем, вождем нашего племени.~
  IF ~  GlobalGT("NWCoverlet","GLOBAL",0)~ THEN REPLY ~Я уже поговорил с Зоканом.~ GOTO 1
  IF ~  Global("NWCoverlet","GLOBAL",0)~ THEN REPLY ~Где я могу найти Зокана?~ GOTO 2
  IF ~~ THEN REPLY ~Вместо этого, я тебя просто убью.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Тогда я молю тебя отправиться в форт Илкард, ведь он просил об этом. У нас почти не осталось времени.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Вы найдете Зокана в центре. Пожалуйста, скорее отправляйтесь к нему.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Пусть же ярость Великого Лося прольется дождем на твою голову!~
  IF ~~ THEN DO ~SetGlobal("ZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 4 // from:
  SAY ~Тебе удалось спасти наше племя от гибели, <CHARNAME>. Теперь, когда у Зокана есть противоядие, я могу вылечить наше племя. Воющей Смерти больше нет. За твой героизм духи Лосей всегда будут на твоей стороне. Мы обязаны тебе всем.~
  IF ~~ THEN EXIT
END

