// Северная дорога, таверна Зеленый грифон, уровень 1 Клиент мужчина.

BEGIN ~CUSTOM1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Убирайся, ты. Может у тебя эта болезнь, про которую мне рассказывали.~ ~Привет, девочка. Ты слишком хорошо выглядишь, чтобы прозябать в Зеленом Грифоне.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~У меня нет времени разговаривать с такими, как вы. Я просто жду, когда откроется город.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~По мне так вы похожи на одного из тех бандитов, которые стали шляться по всем дорогам, когда Лускан прекратил патрулирование.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~На дороге сейчас лучше подстраховаться. Стражники Лускана прекратили патрулирование... всюду твари всякие.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Вам что-нибудь нужно, <SIRMAAM>? Я-то уйду, как только ворота откроют.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Я буду здесь, пока не откроются ворота Лускана. А потом уйду.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~В первый раз вижу вас в Зеленом Грифоне. Вы пришли повидаться с Мутамином?~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Приветствую, приятель! Пожалуйста, наслаждайтесь всем, что может предложить Зеленый Грифон!~ ~Если бы я знал, что в этой таверне бывают такие красотки, как ты, я бы чаще ходил этой дорогой.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~У меня был кузен, точь-в-точь как вы. Не семи пядей во лбу, но славный парень.~ ~А может мы с тобой поднимемся в отдельный кабинет, а?~
  IF ~~ THEN EXIT
END
