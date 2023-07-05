// Лускан Тесак Клиент Жизнь в Лускане сильно потрепала этого человека, поэтому он ищет забвения на дне кружки с каким-то дурнопахнущим пойлом.

BEGIN ~CUSTOM16~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,1)~ THEN BEGIN 0 // from:
  SAY ~Не ходи на улицу, приятель. Там опасно. Знаешь такое слово? Опасно?~ ~Не ходи на улицу, подруга. Там опасно. Знаешь такое слово? Опасно?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,2)~ THEN BEGIN 1 // from:
  SAY ~Здешний народ и так достаточно напуган. Уберите ваше оружие.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,3)~ THEN BEGIN 2 // from:
  SAY ~Высшие Капитаны сошли с ума! Они набирают себе в армию монстров и пытаются убить друг друга, пока Лускан страдает!!~ ~Может, я куплю тебе выпить, девочка?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,4)~ THEN BEGIN 3 // from:
  SAY ~Может быть, мы все должны молиться. Лускан, похоже, катится прямиком в ад.~ ~Приятно знать, что в живых еще остались красивые женщины.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,5)~ THEN BEGIN 4 // from:
  SAY ~Вы ведь не из Братства Таинств, так?~ ~Ты очень симпатичная девчушка. Ты, случаем, не из заведения Белы?~
  IF ~~ THEN EXIT
END 

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,6)~ THEN BEGIN 5 // from:
  SAY ~Высшие Капитаны убивают друг друга, да. Лучше вам не вставать у них на пути.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,7)~ THEN BEGIN 6 // from:
  SAY ~За этим всем стоит Братство Таинств... Они собрали армию зомби и оборотней и хотят убить нас всех!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,8)~ THEN BEGIN 7 // from:
  SAY ~Я настоятельно советую вам не ходить на улицу, друг мой. Пока все это не закончится, все мы будем в опасности.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,9)~ THEN BEGIN 8 // from:
  SAY ~"Кровавые Руки" пришли и сожгли мой дом... Забрали все, что у меня было. Будь они все прокляты!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,10)~ THEN BEGIN 8 // from:
  SAY ~"Смотрите, чтобы никто не слышал, как вы говорите о Высших Капитанах. Вас тут же убьют, вот посмотрите.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(11,11)~ THEN BEGIN 8 // from:
  SAY ~"Что? Вас выгнали из дома озверевшие стражники, правильно? Присоединяйтесь к нам... Этих сумасшедших ничто не остановит.~
  IF ~~ THEN EXIT
END


