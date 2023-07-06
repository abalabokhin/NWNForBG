// Невервинтер Чернозерье Голая Доска  Завсегдатай Непримечательный посетитель, который пытается расслабиться. Хотя тут довольно много бойцов.

BEGIN ~CUSTOM4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~Попали в неприятности внизу, да?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 1 // from:
  SAY ~Мне бы хотелось с вами поболтать, но думаю, я слишком быстро для вас разговариваю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY ~Вот бы мужиков вроде тебя сюда побольше, было б не так скучно в этом городе.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 3 // from:
  SAY ~Эй, друг, смотри, чтобы твоя кровь мне в пиво не попала.~ ~Эй, подруга, смотри, чтобы твоя кровь мне в пиво не попала.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 4 // from:
  SAY ~Обязательно размахивать этой штукой здесь? Приберегите ее для подвала!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 5 // from:
  SAY ~Да, на вас интересно было бы посмотреть на ринге. Толпа будет в восторге.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 6 // from:
  SAY ~Должно быть, в отличной схватке побывали. Выиграли приз?~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 7 // from:
  SAY ~Прекратите размахивать своим оружием. Здесь наверху не место для этого.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY ~Приветствую вас, <LADYLORD>! Как идут дела в таверне?~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentLT(LastTalkedToBy(Myself),90)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 9 // from:
  SAY ~Что ж, чудесно. Еще один <RACE> здесь бродит. Только этого нам и не хватало.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)HPPercentGT(LastTalkedToBy(Myself),89)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY ~Поосторожнее с людьми в этом городе. Они только и думают обобрать кого-нибудь. Кроме шуток.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 11 // from:
  SAY ~Хмм, не знаю, насколько "Голая доска" является подходящим местом для такого милого человека, как вы.~
  IF ~~ THEN EXIT
END

