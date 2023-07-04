// Доки Невервинтера Золотое яблоко клиент Человек мужчина Заданий нет Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.

BEGIN ~CUSTOME4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,1)~ THEN BEGIN 0 // from:
  SAY ~Не стоит возле меня махать оружием, приятель.~ ~Не стоит возле меня махать оружием, мадам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,2)~ THEN BEGIN 1 // from:
  SAY ~Надеюсь, ты не хочешь неприятностей. Убери оружие.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,3)~ THEN BEGIN 2 // from:
  SAY ~Я пришел в таверну не для того, чтобы какой-нибудь <RACE> мне тут морочил голову. Лучше отвали, усекаешь?~ ~Ну, ты смотри, какая ж ты лапонька.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,4)~ THEN BEGIN 3 // from:
  SAY ~О, привет. Э... кое-кто из моих лучших друзей тоже <RACE>. Да.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,5)~ THEN BEGIN 4 // from:
  SAY ~Без обид, тока ты чего тут шатаешься? Ты, видать, вроде этих чернозерских снобов.~ ~Извиняемси. Кабы я знал, что буду иметь счастье лицезреть вас, я б приоделся. Будто это помогло бы. (ик!)~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,6)~ THEN BEGIN 5 // from:
  SAY ~Эй, ты часом не королевских кровей? В порту это очень опасно. Очень соблазнительной добычей становишься.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Class(Player1,MAGE_ALL)~ THEN BEGIN 7 // from:
  SAY ~Эй, колдун, можешь намутить какую-нибудь магию, чтобы прогнать чуму?~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)Class(Player1,CLERIC_ALL)~ THEN BEGIN 8 // from:
  SAY ~У меня нет на тебя времени, святоша. Меня мои демоны вполне устраивают.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,7)!Class(Player1,CLERIC_ALL)!Class(Player1,MAGE_ALL)~ THEN BEGIN 9 // from:
  SAY ~Прости, дружище, у меня сегодня нет настроения на разговоры.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,8)~ THEN BEGIN 10 // from:
  SAY ~Поосторожнее в Доках - люди вне себя от того, что так долго нет лекарства.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,9)~ THEN BEGIN 11 // from:
  SAY ~Только между нами, здесь не стоит никому верить, а особенно всем этим кровавым морякам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(12,10)~ THEN BEGIN 12 // from:
  SAY ~Если ты не нимфа с кружечкой пива, то говорить нам не о чем.~
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

