// Центр Невервинтера   Маска Лунного Камня  Завсегдатай Человек, мужчина  Этот человек выглядит вполне довольным, несмотря на суматоху снаружи. Похоже, Маска Лунного Камня и вправду место, где неприятности забываются.

BEGIN ~MCUSTNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Можно и повеселиться, пока нас не прибрала Воющая Смерть. Понимаешь меня?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Вы пришли в хорошее место. Я слышал, Офала как-то защищает своих девчонок от чумы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~*Вздыхает* Незачем жить. Можно потратить последние деньги на несколько веселых ночей.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY ~Офала вышвырнет тебя, если ты будешь тут расхаживать с этой штукой в руках.~ ~Эй, мисс. Эээ... Вы ведь из девочек Офалы, так?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY ~Из Уотердипа привезли что-то, что могло исцелить нас всех, но потом все потеряли. Так я слышал. Жаль.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY ~Боги отвернулись от нас. Даже благословление хельмитов не излечивает чуму, знаешь об этом?~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY ~Хочешь повеселиться, пока и за тобой не пришла Воющая Смерть, а?~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN BEGIN 7 // from:
  SAY ~Если бы от вас, святош, была хоть какая-то польза, ваши боги послушались бы вас и исцелили всех!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN BEGIN 8 // from:
  SAY ~Мисс Офала не любит никаких заклинаний, так что не надо, хорошо?~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)!Class(LastTalkedToBy(Myself),MAGE_ALL)!Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN BEGIN 9 // from:
  SAY ~Чума появилась из-за магии. Мне двоюродный брат сказал.~
  IF ~~ THEN EXIT
END

