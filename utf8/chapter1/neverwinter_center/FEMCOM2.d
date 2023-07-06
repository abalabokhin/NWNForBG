// Порт-Лласт Горожанин Человек женщина Заданий нет 

BEGIN ~FEMCOM2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ходили слухи о том, что лекарство было в Чернозерье, но, кажется мне, это неправда. Лучше бы оно у них было, хоть бы они и не хотели делиться.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,1)GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Говорят, кто-то из стражников отправился в Чернозерье и объяснил богатеям, что надо вести себя поумнее! Лекарства от чумы все еще нет, так хоть и им тоже досталось!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Вы, должно быть, один из новобранцев в городской страже. Надеюсь, вы сможете решить проблему с этими зомби в Гнезде Нищих.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,2)GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Ты из новых стражников? Это не твоими заботами Гнездо Нищих теперь свободно от зомби? Если это так, ты молодчина.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,3)~ THEN BEGIN 4 // from:
  SAY ~Поосторожнее с людьми в этом городе. Они всех только и думают обобрать. Кроме шуток.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Говорят, из тюрьмы в районе полуострова был совершен побег. Интересно, насколько эти слухи правдивы.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,4)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Это благодаря тебе прекратились беспорядки в тюрьме на полуострове? Говорят, это был кто-то из новобранцев, но никто не знает его имени. Если это ты - спасибо.~
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
  SAY ~Посмотрите-ка, какой милый! Советую вам держаться подальше от порта - там бандиты из этого хорошенького личика быстро сделают что-нибудь ужасное.~ ~Нашим местным девчонкам с вами по красоте не сравняться - особенно с тех пор, как чума большинство из них убила.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)Class(Player1,THIEF_ALL)~ THEN BEGIN 9 // from:
  SAY ~Хмм! Вы похожи на одного из этих преступников, сбежавших из тюрьмы в районе Полуострова!~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)Class(Player1,CLERIC_ALL)~ THEN BEGIN 15 // from:
  SAY ~Да вы <MALEFEMALE> из храма. Разве вы не можете заставить аристократов из Чернозерья поделиться лекарством с нами?~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,7)False()~ THEN BEGIN 16 // from:
  SAY ~Эти богатеи в Чернозерье; один из них копил продовольствие! Говорили, что у них есть лекарство от чумы, но все, что у них есть - только жадность!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,8)~ THEN BEGIN 10 // from:
  SAY ~Думаете, это ваше оружие способно остановить Воющую Смерть?~ ~Такой милой девушке, как вы, стоит держаться подальше от порта. Они там все как минимум хамы - это когда они в благодушии.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Говорят, сейчас в Доках стало поспокойнее. Наверное, мне стоит побывать там, нет уже никаких сил выносить запах горящей плоти.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,9)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~В портовом районе царит анархия! Говорят, преступники захватили его, и теперь городская стража боится даже заходить туда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(10,10)~ THEN BEGIN 12 // from:
  SAY ~Хмм. Советую здесь не пользоваться магией, <SIRMAAM>. Некоторые обвиняют чародеев в появлении мора! Они могут изгнать магов в Озеро Мертвых. Может быть.~
  IF ~~ THEN EXIT
END

