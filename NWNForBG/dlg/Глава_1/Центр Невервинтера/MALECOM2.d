// Центр Невервинтера Горожанин Человек мужчина Заданий нет 

BEGIN ~MALECOM2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY ~Итак, лорд Нашер доверил нашу судьбу таким как вы, так ведь? Эх, будь я на его месте...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY ~Вам, ребятам из ополчения, просто нравится размахивать оружием, точно! Но вы не можете разрубить на куски вонь горящих трупов.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY ~Псст! Мой друг <Race>! Я слышал о заговоре с целью свергнуть лорда Нашера - передай другим!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY ~Эта самая Воющая Смерть - просто заговор лорда Нашера, чтобы избавиться от всех и каждого, то есть нас!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY ~А ты славный парень. Ты в сопротивлении?~ ~Такая милая цыпочка вполне может стать хорошей шпионкой...~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)~ THEN BEGIN 5 // from:
  SAY ~Лорд Нашер не появлялся уже несколько недель. И кто посмеет обвинить его? Здесь всюду пахнет горелым мясом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Class(Player1,MAGE_ALL)~ THEN BEGIN 7 // from:
  SAY ~А нельзя ли с помощью вашей магии избавиться от вони сожженных трупов? Хотя вы, маги, небось привыкли к подобным запахам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Class(Player1,CLERIC_ALL)~ THEN BEGIN 8 // from:
  SAY ~Какой нам прок от вас, жрецов?! Ведь в городе СМРАД до небес. И это только начало, я полагаю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)False()~ THEN BEGIN 9 // from:
  SAY ~Это из-за чужеземцев вроде тебя мы все страдаем от проклятой Воющей чумы...~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)~ THEN BEGIN 10 // from:
  SAY ~Поосторожнее в Сердце города - люди вне себя от того, что так долго нет лекарства.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)~ THEN BEGIN 11 // from:
  SAY ~Только между нами, здесь не стоит никому верить, а особенно всем этим начальникам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)~ THEN BEGIN 12 // from:
  SAY ~Ага, так вы прислужники Нашера? Будете пахнуть так же, как все мы, когда проведете пару дней у ям, где сжигают тела.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,11)~ THEN BEGIN 13 // from:
  SAY ~Церковь, правительство, ополчение, все они против нас. Все, что у нас осталось - мы сами...~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,12)~ THEN BEGIN 14 // from:
  SAY ~Знаете, кто мы все? Падальщики и гарпии - вот во что мы превратились...~
  IF ~~ THEN EXIT
END

