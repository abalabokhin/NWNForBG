// Порт-Лласт Дом Эйзенфельдта    Отец Урта 

BEGIN ~EISNM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",0)!Dead("Urt")~ THEN BEGIN 0 // from:
  SAY ~Я предупреждаю вас - если вы ищете нашего мальчика Урта, то его здесь нет.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("Urt")Global("UrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY ~Убирайся отсюда, подлая скотина.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("UrtRing")Global("UrtIsSaved","GLOBAL",1)!Dead("Urt")Global("UrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Вы оказали нам троим огромное благодеяние, <SIRMAAM>, и я хочу поделиться с вами кой-каким семейным достоянием. Вот сундучок, в нем 500 золотых. Это было мое наследство, но я никак не соберусь с духом, чтоб его потратить. Так сейчас я от него избавлюсь или позже - какая разница.~
  IF ~~ THEN REPLY ~Этого более чем достаточно. Да благословят вас боги.~ GOTO 3
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~На самом деле, мне не помешали бы еще 200 золотых.~ GOTO 4
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~На самом деле, мне не помешали бы еще 200 золотых.~ GOTO 5
  IF ~~ THEN REPLY ~Ну-ну. Отдавайте все, что у вас есть, а то ваш дивный мальчик получит по голове.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Попутного ветра вам, друг мой.~
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",1)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Конечно, мой добрый друг. Не так-то легко быть искателем приключений - вот Урт в этом убедился едва ли не слишком поздно.~
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",1)GiveGoldForce(700)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~Что толку нам в ваших подвигах, если мы будем помирать с голоду этой зимой? Прости, но так много я не могу дать.~
  IF ~~ THEN REPLY ~Хорошо, на самом деле 500 золотых вполне достаточно.~ GOTO 3
  IF ~~ THEN REPLY ~Ну-ну. Отдавайте все, что у вас есть, а то ваш дивный мальчик получит по голове.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY ~Тьфу, чтоб тебе провалиться! Зимой мы как пить дать сдохнем с голоду, но так и быть, забирай свое бесово золото.~
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",2)GiveGoldForce(1000)ReputationInc(-1)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("UrtGold","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY ~А, да, теперь это снова счастливый дом.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EXT01 // from: EISNF 0.1
  SAY ~Хозяйка вам ясно сказала. Давайте, проваливайте.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EXT02 // from: EISNF 1.1
  SAY ~Они еле дышат и - и это опасно, лезть-то на них, слышь?~
  IF ~~ THEN DO ~SetGlobal("Stairs","MYAREA",2)~ EXIT
END






