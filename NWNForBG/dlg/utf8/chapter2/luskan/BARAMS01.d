// Лускан Подмигни и ущипни, 1-й уровень Клиент Черных Кинжалов Этот господин имеет при себе знак Черных Кинжалов. Он выглядит так, словно бессчетное число раз пользовался услугами этого заведения в прошлом.

BEGIN ~BARAMS01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)Dead("Baram")~ THEN BEGIN 0 // from:
  SAY ~Поверить не могу, что Барам мертв. Это не может быть правдой... Он, должно быть, прячется, или еще где-то...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Вы из войска Барама, да? Хорошо... Может, нам еще удастся проучить людей Курта, что бы там ни говорил Высший Капитан.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Вы никто. Вы достойны только того, чтобы вас убили на улице.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Скоро я пойду к какой-нибудь девчонке. Придется подождать, пока все остальные не закончат.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)Dead("Baram")~ THEN BEGIN 4 // from:
  SAY ~Армия Барама не собирается распадаться. Говорят, скоро у нас будет новый командир.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Эти парни дураки, что служат Курту. В конце концов, победит Барам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Что, вы из армии Курта? Очень глупо, <MALEFEMALE>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Сегодня мне нужно доложиться Бараму. Ненавижу ходить в канализацию... Там кишмя кишат эти отвратительные упыри...~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)Dead("Baram")~ THEN BEGIN 8 // from:
  SAY ~Барам не умер. Не слушайте эти сплетни. Его нельзя убить, на моих глазах его несколько раз ранили, но он всегда исцелялся.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Мне говорили, что Курт дружит со жрицей Auрил. Вот откуда приходят все монстры, с которыми мы деремся.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Это место Барама. Прочь, или сильно пожалеете.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Барам говорит, никаких драк в борделе... Иначе мы бы как следует отделали этих "Кровавых Рук", показали бы им, кто тут главный.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)Dead("Baram")~ THEN BEGIN 12 // from:
  SAY ~Говорят Барама убили. Могу поспорить, это дело рук одного из людей Курта. Они должны заплатить...~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)!Dead("Baram")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Выжить удастся только Высшему Капитану Бараму. Сами посмотрите.~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)!Dead("Baram")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~Солдат Курта нельзя даже впускать сюда...~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)!Dead("Baram")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY ~Ай! Уйдите от меня... Я тут разговариваю со своими братьями.~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 16 // from:
  SAY ~Курт и его "Кровавые Руки" заперлись в Западной Гавани... И если они не дураки, там они и останутся.~
  IF ~~ THEN EXIT
END

