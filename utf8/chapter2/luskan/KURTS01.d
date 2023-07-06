// Лускан Подмигни и ущипни, 1-й уровень Клиент из Кровавых Рук Этот господин имеет при себе знак Кровавых Рук. Он выглядит так, словно бессчетное количество раз пользовался услугами этого заведения в прошлом.

BEGIN ~KURTS01~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)Dead("Kurt")~ THEN BEGIN 0 // from:
  SAY ~Теперь, когда Курт умер, мы... Ну, я не знаю, что. Теперь у нас есть армия, но нет командира.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Ты ведь солдат Курта, да? Да, думаю, что так. Хорошо. Если Курт желает быть единственным Высшим Капитаном, ему понадобятся все солдаты, которых он сможет завербовать.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Ты еще кто? Из людей Барама, надо полагать? Курт убьет вас всех, клянусь!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Мы загнали Барама и его людей в канализацию. Если они не дураки, там они и останутся.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)Dead("Kurt")~ THEN BEGIN 4 // from:
  SAY ~Кровавые Руки" не распадутся, даже теперь, когда Курт мертв. Нам нужен другой командир... Но я не знаю, кто это может быть.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Эти собаки Барама заплатят за то, что сожгли нашу башню, обязательно заплатят!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Отвали, проклятая собака!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Скоро я пойду назад в Западную Гавань. Может, пройду через дыру в стене у старой башни, так быстрее.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)Dead("Kurt")~ THEN BEGIN 8 // from:
  SAY ~Курта замочили! Не представляю, у кого хватило смелости сделать это...~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Ха. Только поглядите на этих жалких людей Барама. Скоро Курт вытрет об них ноги.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Давай, убирайся отсюда. Ты не из людей Курта, а значит, для меня ты ничего не значишь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Людей Барама нельзя даже впускать сюда...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)Dead("Kurt")~ THEN BEGIN 12 // from:
  SAY ~Я собираюсь найти глупца, убившего Курта, и заставить его за это заплатить! Но сначала я займусь вон тем придурком из армии Барама...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)!Dead("Kurt")GlobalGT("KurtQuest","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Их тут целые орды... Этих существ на улицах. Думаю, Барам связался с некромантами, которые вызывают ему таких упырей.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)!Dead("Kurt")GlobalGT("BaramQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Вот бы разбить тебе морду! Но здесь это запрещено.~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)!Dead("Kurt")Global("KurtQuest","GLOBAL",0)Global("BaramQuest","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~Ха. Ты кто, ну-ка, расскажи?~
  IF ~~ THEN EXIT
END

