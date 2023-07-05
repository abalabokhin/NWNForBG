// Центр Невервинтера Горожанин Человек мужчина Заданий нет 

BEGIN ~MALECOM1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Говорят, у аристократов Чернозерья есть лекарство от мора, но они не хотят поделиться им с нами, простыми жителями! Хотя, вообще, много что говорят.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Говорят, что богачи прятали запасы в Чернозерье, но кто-то пошел к ним и сделал, что нужно. Правда, это все слухи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Говорят, Гнездо Нищих кишит зомби, зараженными чумой!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Ну, хоть разобрались с зомби, которые разгуливали по Гнезду Нищих. Хотя их тела, наверное, все еще несут в себе чуму...~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,3)~ THEN BEGIN 4 // from:
  SAY ~Прекратите размахивать своим оружием, словно какой-то бандит! Здесь преступники авторитетом не пользуются; тут вам не порт!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Слышали о побеге из тюрьмы в районе полуострова? Как будто одной чумы было мало!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Говорят, что бунт в тюрьме на полуострове жестоко подавили. Надеюсь, хоть там трупы не сжигают. Их и так уже слишком много.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,5)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Вы, должно быть, один из новобранцев в городской страже. Надеюсь, вы сможете решить проблему с этими зомби в Гнезде Нищих.~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,5)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~Ты новобранец городской стражи? Говорят, какой-то новичок очистил от зомби Гнездо Нищих. Кто бы он ни был, он молодчина.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,6)~ THEN BEGIN 8 // from:
  SAY ~Вы ведь не заодно с теми портовыми пиратами, правда? Мне казалось, раньше они  попадались только в районе островов Нелантера. Наверное, я многого не знаю.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)Class(Player1,THIEF_ALL)~ THEN BEGIN 9 // from:
  SAY ~Люди вроде вас в основном находятся в районе полуострова - среди прочих мошенников и негодяев!~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)Class(Player1,CLERIC_ALL)~ THEN BEGIN 15 // from:
  SAY ~Простите, клерик, но я не могу даже подумать о доброте богов, пока вокруг все заполонила вонь горящих трупов.~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)False()~ THEN BEGIN 16 // from:
  SAY ~Ополчение больше не в силах поддерживать порядок! Стражникам в Сердце города даже все равно, что из тюрьмы в районе полуострова был совершен побег.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,8)~ THEN BEGIN 10 // from:
  SAY ~Думаете, это ваше оружие способно остановить Воющую Смерть? С таким же успехом можете попробовать плюнуть в Анаврок!~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~В портовом районе царит анархия! Говорят, преступники захватили его, и теперь городская стража боится даже заходить туда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Говорят, сейчас в Доках стало поспокойнее. Наверное, мне стоит побывать там, нет уже никаких сил выносить запах горящей плоти.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,10)~ THEN BEGIN 13 // from:
  SAY ~Хмм. Советую здесь не пользоваться магией, <SIRMAAM>. Некоторые обвиняют чародеев в появлении мора! Они могут изгнать магов в Озеро Мертвых. Может быть.~
  IF ~~ THEN EXIT
END

