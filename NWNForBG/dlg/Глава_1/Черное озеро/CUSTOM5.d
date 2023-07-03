// Невервинтер Чернозерье Голая Доска  Завсегдатай Непримечательный посетитель, который пытается расслабиться. Хотя тут довольно много бойцов.

BEGIN ~CUSTOM5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~Ну что, показали, на что способны? Не быть вам чемпионом. Никаких шансов. Никаких.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 1 // from:
  SAY ~На первом этаже нельзя размахивать оружием. Вы лишь привлечете к себе нежелательное внимание.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY ~Я так и знал! Знал, что у вас получится! Вы получили медаль чемпиона! Спросите любого - я всегда говорил, что вы победите!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 3 // from:
  SAY ~Вы выглядите ужасно! Что, целительница плохо выполняет свою работу?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 4 // from:
  SAY ~Ох, я с удовольствием посмотрю, как вы будете сражаться на арене. Судя по виду, вы готовы покувыркаться.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 5 // from:
  SAY ~Я не возражаю против того, чтобы запереться в Чернозерье. Я и так почти не выхожу в город.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 6 // from:
  SAY ~Посмотрите на себя. Вы не в форме, чтобы драться. Вам нужно отдохнуть.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 7 // from:
  SAY ~Я не собираюсь сражаться с вами. Уберите ваше оружие, пока оно вам не понадобится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY ~Думаю, тут теперь все ваше. Желаю вам удачи в эти трудные времена.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 9 // from:
  SAY ~С кем бы вы ни сражались, это, должно быть, была мощная драка! Только посмотрите на ваши раны!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY ~Для такого места, как это, вы выглядите очень дружелюбно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY ~Карантин очень плохо сказался на торговле. Интересно, надолго ли это место останется открытым?~
  IF ~~ THEN EXIT
END

