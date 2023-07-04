// Порт-Лласт Таверна Клиент Этот посетитель явно ожидает, что сейчас начнется что-то интересное.

BEGIN ~CUSTOMER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Обычно ведь в таверне с оружием в руках разгуливать нельзя, не так ли?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Пожалуйста, уберите оружие, <SIRMAAM>. Не заставляйте меня нервничать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~Что это за запах? Это же... медвежьи какашки, что ли...~ ~Привет, крошка. Да ты у нас красавица, не так ли? Хочешь выпить?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Это кто тут у нас? Новенький? Вы что все решили теперь переселиться из Невервинтера?~ ~Это кто тут у нас? Новенькая? Вы что все решили теперь переселиться из Невервинтера?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~У меня нет времени на разговоры с тобой, прости. Да и ты можешь оказаться оборотнем, кто ж тебя знает.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Хорошо, что чума в Невервинтере закончилась. Если бы она еще продлилась, город бы совсем ослаб, и тогда точно была бы война!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~Будь осторожен на дорогах. У нас тут вервольфы водятся... и, говорят, дороги полны бесчинствующих чудищ.~ ~Будь осторожной на дорогах. У нас тут вервольфы водятся... и, говорят, дороги полны бесчинствующих чудищ.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Приятно познакомиться, <SIRMAAM>. Кажется, я тебя в Порт-Лласте раньше не видал.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~Думаю, у меня нет никаких шансов на то. что ты купишь мне выпить, приятель?~ ~Если бы я знал, что в этой таверне бывают такие красотки, как ты, я бы чаще сюда заходил.~
  IF ~~ THEN EXIT
END
