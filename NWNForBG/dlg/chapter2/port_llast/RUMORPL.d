// Порт-Лласт Таверна Слухи

BEGIN ~RUMORPL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,1)~ THEN BEGIN 0 // from:
  SAY ~Жители Порт-Лласта по ночам боятся выходить на улицу. Говорят, в городе завелись оборотни и по ночам нападают на людей. Кого оборотень укусит - тот тоже оборотнем становится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,2)~ THEN BEGIN 1 // from:
  SAY ~Говорят, ворота в Лускан закрыли и никого не пускают. Тамошние капитаны никак власть между собой поделить не могут, настоящую войну между собой устроили.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,3)~ THEN BEGIN 2 // from:
  SAY ~У нас в Порт-Лласте один следопыт поселился, Баллардом его зовут. Так вот он утверждает, что в лесу Невервинтер что-то неладное случилось, вроде как звери нападают на всех подряд, прямо бешеные стали.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,4)~ THEN BEGIN 3 // from:
  SAY ~Шалдрисса, дочка нашего мэра, совсем зазналась, с местными парнями не разговаривает, все принца ищет. А у ее папаши видно времени на нее не хватает, он сбежавших преступников ловит.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,5)~ THEN BEGIN 4 // from:
  SAY ~Тут у нас где-то поблизости какой-то зловредный культ обосновался. Говорят, сама леди Арибет приехала их ловить.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,6)~ THEN BEGIN 5 // from:
  SAY ~У нас в порту уже два дня стоит торговое судно и ничего на него не грузят. Говорят у капитана с начальником порта какой-то спор зашел, никак договориться не могут.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,7)~ THEN BEGIN 6 // from:
  SAY ~Из Чарвуда давно никаких вестей не было. Ходят слухи что там сейчас полно нежити, призраки какие-то объявились, просто жуть!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(8,8)~ THEN BEGIN 7 // from:
  SAY ~Вэйнив, здешний маг имеет в Порт-Лласте отличный дом, а сам в нем не живет. Люди говорили, что он построил себе башню около южной дороги. ~
  IF ~~ THEN EXIT
END

