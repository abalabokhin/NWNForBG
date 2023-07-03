// Центр Невервинтера   Маска Лунного Камня  Завсегдатай Дварф, мужчина  Этот человек выглядит вполне довольным, несмотря на суматоху снаружи. Похоже, Маска Лунного Камня и вправду место, где неприятности забываются.

BEGIN ~MCUSTNW6~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)~ THEN BEGIN 0 // from:
  SAY ~Уйди, бес бесстыдный!~ ~Уйди, бесовка бесстыдная!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)~ THEN BEGIN 1 // from:
  SAY ~Тебя выгнала девушка, да?~ ~Тебя что, не облуживают?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,3)~ THEN BEGIN 2 // from:
  SAY ~*Здесь нельзя обнажать оружие, ты что, не в себе?!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)~ THEN BEGIN 3 // from:
  SAY ~У меня тут дело, ты, тупица <RACE>, не видишь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,5)~ THEN BEGIN 4 // from:
  SAY ~Твоя очередь будет за мной.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,6)~ THEN BEGIN 5 // from:
  SAY ~У нас дела с девочками, ты что, не видишь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)~ THEN BEGIN 6 // from:
  SAY ~Хочешь повеселиться, пока и за тобой не пришла Воющая Смерть, а?~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,8)~ THEN BEGIN 7 // from:
  SAY ~Поговорите с мисс Офалой, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)~ THEN BEGIN 8 // from:
  SAY ~У меня тут кое-какое дело, так что, пожалуйста, не мешай.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,10)~ THEN BEGIN 9 // from:
  SAY ~Проваливай отсюда к свиньям!~
  IF ~~ THEN EXIT
END

