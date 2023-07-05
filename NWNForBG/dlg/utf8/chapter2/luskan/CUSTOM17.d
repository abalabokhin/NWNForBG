// Лускан Тесак Клиент Жизнь в Лускане сильно потрепала эту женщину, поэтому она ищет забвения на дне кружки с каким-то дурнопахнущим пойлом.

BEGIN ~CUSTOM17~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,1)~ THEN BEGIN 0 // from:
  SAY ~Мой первый кузен говорил прямо как вы. Однажды он гонялся за бабочками и свалился в колодец.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,2)~ THEN BEGIN 1 // from:
  SAY ~Вы состоите в Братстве Таинства? А вы не можете остановить Высших Капитанов?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,3)~ THEN BEGIN 2 // from:
  SAY ~Ай! Поверить не могу... Бродяга <RACE> бродит по Лускану среди бела дня!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,4)~ THEN BEGIN 3 // from:
  SAY ~Здравствуй, симпатяшка, да-да, ты.~ ~Иди давай! Думаешь, ты прямо не женщина, а дар божий! Фи!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,5)~ THEN BEGIN 4 // from:
  SAY ~С таким парнем, как ты, любая девчонка забудет про войну.~ ~Ты очень симпатичная девчушка. Ты, случаем, не из заведения Белы?~
  IF ~~ THEN EXIT
END 

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,6)~ THEN BEGIN 5 // from:
  SAY ~Мы ничего не можем поделать, только ждать... и надеяться, что война прекратится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,7)~ THEN BEGIN 6 // from:
  SAY ~Высшие Капитаны уехали и заперли врата... Думаю, это чтобы мы не вышли, а не для того, чтобы никто не зашел.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,8)~ THEN BEGIN 7 // from:
  SAY ~Капитаны все ненормальные, говорю вам! У них в войсках есть демоны, они разрушают наш город!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,9)~ THEN BEGIN 8 // from:
  SAY ~"Аруф был очень добр, предоставил нам убежище здесь. Я всего лишь хочу попасть домой.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,10)~ THEN BEGIN 8 // from:
  SAY ~"Не доверяйте ни одному солдату Высших Капитанов. Они все думают, что вы работаете на других и тут же нападают.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,11)~ THEN BEGIN 8 // from:
  SAY ~"Если стражники поймают вас, они отведут вас к чародею, а он превратит вас во... что-то другое.~
  IF ~~ THEN EXIT
END


