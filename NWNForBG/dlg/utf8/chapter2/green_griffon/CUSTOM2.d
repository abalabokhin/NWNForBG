// Северная дорога, таверна Зеленый грифон, уровень 1 Клиент мужчина.

BEGIN ~CUSTOM2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",3)GlobalLT("KnowsAboutMatch","GLOBAL",7)RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~Это ты победитель состязания? Ух ты! Молодчина!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",3)GlobalLT("KnowsAboutMatch","GLOBAL",7)RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~Поздравляю с блестящей победой, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Хмм. Говорят, победа в этом состязании не стоит того. Как ты думаешь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Ты, наверное, хочешь принять участие в состязании, да?~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~*Вздыхает*. В этой таверне ведь не так плохо... Просто мне хотелось бы вернуться в Лускан и заняться своим ремеслом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Как ты думаешь, Лускан долго еще будет закрыт?~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Говорят, капитаны в Лускане убивают мирных жителей во имя злобного демона.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Интересно, откуда у Мутамина столько денег? Кто-то говорил, что раньше он был великим искателем приключений.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~Дороги стали небезопасны. На меня напали орки и убили двух моих охранников.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Говорят, в холмах все еще полно монстров. Терпеть не могу монстров!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~Я здесь просто, чтобы пропустить пару стаканчиков. Оставь меня в покое.~
  IF ~~ THEN EXIT
END
