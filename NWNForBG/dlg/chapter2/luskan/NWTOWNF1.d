// Лускан Дом, Женщина Похоже, эта раболепная женщина охвачена паранойей и ужасом.

BEGIN ~NWTOWNF1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,1)~ THEN BEGIN 0 // from:
  SAY ~Они открыли ворота? Или порт? Мы все так хотим жить...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,2)~ THEN BEGIN 1 // from:
  SAY ~Мы бы уехали, но... Говорят, что повсюду свирепствует чума!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,3)~ THEN BEGIN 2 // from:
  SAY ~Они заперли ворота... и гавани. Пираты закрыли Мирабар... нам придется умереть здесь с голоду, я точно знаю!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,4)~ THEN BEGIN 3 // from:
  SAY ~П-пожалуйста, не причиняйте нам вреда! Мы простые люди, а это наш дом!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,5)~ THEN BEGIN 4 // from:
  SAY ~Всего день назад сюда приходили солдаты. Они забрали почти все, что у нас было.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,6)~ THEN BEGIN 5 // from:
  SAY ~Люди Высших Капитанов... они рыщут повсюду и забирают всех боеспособных людей в свои армии. Или убивают.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,7)~ THEN BEGIN 6 // from:
  SAY ~Не выходите на улицу. Там монстры... Гигантские крысы, которые превращаются в людей!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,8)~ THEN BEGIN 7 // from:
  SAY ~Лускан проклят! В канализации есть... нежить! Повсюду!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,9)~ THEN BEGIN 8 // from:
  SAY ~Это все они, волшебники из Башни Хозяина! Они хотят убить нас всех!~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,10)~ THEN BEGIN 9 // from:
  SAY ~Высшие Капитаны воюют друг с другом уже несколько недель. Полгорода сожжено и жители убиты.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,11)~ THEN BEGIN 10 // from:
  SAY ~Возьмите у нас все, что хотите, только... Только не троньте нас!~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,12)~ THEN BEGIN 11 // from:
  SAY ~Мне встретился один из людей Барама... Он превратился в крысу-оборотня! Правда!~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,13)~ THEN BEGIN 12 // from:
  SAY ~Хуже всего "Кровавые Руки". Они убьют вас и глазом не моргнут, вот увидите!~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,14)~ THEN BEGIN 13 // from:
  SAY ~Многие люди говорят, что можно укрыться в таверне "Тесак". Не думаю, что мы доберемся туда живыми...~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,15)~ THEN BEGIN 14 // from:
  SAY ~Вы совсем не похожи на негодяя. Вы не станете нас грабить, правда?~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,16)~ THEN BEGIN 15 // from:
  SAY ~Я... Пожалуйста, мы никто. Нас так часто избивали и грабили... Мы только хотим, чтоб нас не трогали!~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,17)~ THEN BEGIN 16 // from:
  SAY ~Не трогайте нас! Умоляю, пожалуйста, оставьте нас в покое!!!~
  IF ~~ THEN EXIT
END

