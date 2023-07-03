// Центр Невервинтера   Маска Лунного Камня  Куртизанка Эльф.  Эта женщина бесстыдно смотрит на вас приглашающим взглядом.

BEGIN ~PROSTNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)~ THEN BEGIN 0 // from:
  SAY ~(хихикает!) Не терпится, а?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)~ THEN BEGIN 1 // from:
  SAY ~Ну-ка спрячь оружие немедленно, или я позову мисс Офалу!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,3)~ THEN BEGIN 2 // from:
  SAY ~(хихикает!) Это у тебя оружие, или ты так радуешься встрече со мной?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)~ THEN BEGIN 3 // from:
  SAY ~Не обращайте внимания на этого простолюдина, сэр. Я сделаю вам скидку...~ ~Я не узнаю вас. Вы не ведь не из наших сестер, работающих здесь, да?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,5)~ THEN BEGIN 4 // from:
  SAY ~Вот это да... Здравствуй, милашка.~ ~Эй! Мисс Офала не пускает сюда частных девушек!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,6)~ THEN BEGIN 5 // from:
  SAY ~Вы первый раз в "Маске"? Я думаю, вам понравится...~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)~ THEN BEGIN 6 // from:
  SAY ~*Вздыхает* С тех пор, как началась эпидемия, у нас *очень* много дел... Понимаете меня?~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,8)~ THEN BEGIN 7 // from:
  SAY ~Поговорите с мисс Офалой, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)~ THEN BEGIN 8 // from:
  SAY ~У меня нет на тебя времени. Жди своей очереди.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,10)~ THEN BEGIN 9 // from:
  SAY ~Не знаю, как Офале это удается, но она охраняет нас от чумы.~
  IF ~~ THEN EXIT
END

