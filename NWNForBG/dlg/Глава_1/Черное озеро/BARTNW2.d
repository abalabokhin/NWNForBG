// Чернозерье Голая Доска Трактирщик Человек Это один из многочисленных в Невервинтере торговцев горячительными напитками. Он одевается просто, желая вызвать симпатию у своих клиентов.  GiveItemCreate("Grpermit",LastTalkedToBy,0,0,0)

// Global("NWArena","GLOBAL",4) - получена медаль четвертого раунда! Победили всех. Запустить таймер SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~BARTNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~Здравствуйте. Вам сегодня нужно что-то особенное?~
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 1
  IF ~  Global("PartyHasKey","LOCALS",1)~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 2
  IF ~  Global("PartyHasKey","LOCALS",1)~ THEN REPLY ~Что интересного в этой таверне?~ GOTO 2
  IF ~  !Global("PartyHasKey","LOCALS",1)~ THEN REPLY ~Что интересного в этой таверне?~ GOTO 3
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания, я пойду пожалуй.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Шшш. Не так громко. Вот ключ. Идите вниз, когда захотите. Дверь в центре южной стены. Там лестница, ведущая в подвал.~
  IF ~~ THEN REPLY ~Что собой представляет эта "Перчатка"?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY ~У вас уже есть ключ. Идите в "Перчатку", если хотите. Дверь в юго-западном углу таверны. Там есть лестница, ведущая в подвал.~
  IF ~~ THEN REPLY ~Что собой представляет эта "Перчатка"?~ GOTO 7
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Ничего, о чем можно говорить вслух. Нет, ничего.~
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN REPLY ~Да ладно, что тут плохого, если сказать мне?~ GOTO 8
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN REPLY ~Да ладно, что тут плохого, если сказать мне?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY ~Не хочу применять силу, но если не скажете, придется.~ GOTO 10
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 1
  IF ~~ THEN REPLY ~До свидания, я пойду пожалуй.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~В другой раз, приятель.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Это соревнование для тех, кто считает, что главное - это уметь защититься от того, кто желает вам навредить. Победите - получаете звание и поздравления. Проиграете - вас отряхнут, и снова в бой. Это все чтобы узнать, годитесь ли вы для битвы.~
  IF ~~ THEN REPLY ~Почему это такой большой секрет?~ GOTO 11
  IF ~~ THEN REPLY ~До свидания.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~В другой раз, приятель.~
  IF ~~ THEN DO ~TakePartyItem("Grpermit")DestroyItem("Grpermit")SetGlobal("PartyHasKey","LOCALS",1)GiveItemCreate("Nwkey05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~Это соревнование для тех, кто считает, что главное - это уметь защититься от того, кто желает вам навредить. Победите - получаете звание и поздравления. Проиграете - вас отряхнут, и снова в бой. Это все чтобы узнать, годитесь ли вы для битвы.~
  IF ~~ THEN REPLY ~Почему это такой большой секрет?~ GOTO 12
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~Послушайте, если вы действительно хотите поучаствовать в том, что здесь происходит, достаньте пропуск у наемника на Ярмарке Мечей. Тогда и поговорим.~
  IF ~~ THEN REPLY ~Ярмарка Мечей? Что это?~ GOTO 13
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 1
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания, я пойду пожалуй.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Нет, я так не думаю. Вам здесь делать нечего.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY ~Не хочу применять силу, но если не скажете, придется.~ GOTO 10
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 1
  IF ~~ THEN REPLY ~До свидания, я пойду пожалуй.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~Хмм, даже если вы и подходите, это ничего не значит. Разве что у вас есть пропуск от наемника с Ярмарки Мечей. Тогда можно и поговорить.~
  IF ~~ THEN REPLY ~Ярмарка Мечей? Что это?~ GOTO 13
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 1
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания, я пойду пожалуй.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~Послушайте, это не вполне безопасно - выходить на арену для выяснения отношений. У нас были несчастные случаи... Пара людей лишилась конечностей... Городские стражники считают это очень жестоким спортом, но это не так. В бою есть честь, но они не понимают этого. Стражники видят лишь то, что хотят. Если хотите попробовать, это ваше право. Только не болтайте об этом и не жалуйтесь, если проиграете. Люди этого не любят.~
  IF ~~ THEN REPLY ~До свидания.~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~Послушайте, это не вполне безопасно - выходить на арену для выяснения отношений. У нас были несчастные случаи... Пара людей лишилась конечностей... Городские стражники считают это очень жестоким спортом, но это не так. В бою есть честь, но они не понимают этого. Стражники видят лишь то, что хотят. Если хотите попробовать, это ваше право. Только не болтайте об этом и не жалуйтесь, если проиграете. Люди этого не любят.~
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY ~Если вы не знаете, то вряд ли вернетесь. Это гильдия наемников на юго-востоке Сердца города. Больше я ничего не скажу.~
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~У меня есть пропуск в "Перчатку".~ GOTO 1
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания, я пойду пожалуй.~ GOTO 4
END

// -------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",4)~ THEN BEGIN 14 // from:
  SAY ~Здравствуйте, босс. Что я могу для вас сделать?~
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",499)GlobalLT("NwTavTaxes","GLOBAL",501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 15
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",999)GlobalLT("NwTavTaxes","GLOBAL",1501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 16
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1499)GlobalLT("NwTavTaxes","GLOBAL",2001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 17
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1999)GlobalLT("NwTavTaxes","GLOBAL",2501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 18
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2499)GlobalLT("NwTavTaxes","GLOBAL",3001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 19
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2999)GlobalLT("NwTavTaxes","GLOBAL",3501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 20
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3499)GlobalLT("NwTavTaxes","GLOBAL",4001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 21
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3999)GlobalLT("NwTavTaxes","GLOBAL",4501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 22
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4499)GlobalLT("NwTavTaxes","GLOBAL",5001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 23
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4999)GlobalLT("NwTavTaxes","GLOBAL",5501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 24
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5499)GlobalLT("NwTavTaxes","GLOBAL",6001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 25
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5999)GlobalLT("NwTavTaxes","GLOBAL",6501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 26
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",6999)GlobalLT("NwTavTaxes","GLOBAL",7501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 27
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",7999)GlobalLT("NwTavTaxes","GLOBAL",8501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 28
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",9999)GlobalLT("NwTavTaxes","GLOBAL",10501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 29
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",14999)GlobalLT("NwTavTaxes","GLOBAL",15501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 30
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",24999)GlobalLT("NwTavTaxes","GLOBAL",25501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 31
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",44999)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 32
  IF ~  GlobalLT("NwTavTaxes","GLOBAL",499)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 33
  IF ~  Global("Acquaintance","LOCALS",0)~ THEN REPLY ~Теперь бар мой, и что мне делать?~ DO ~SetGlobal("Acquaintance","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY ~До свидания.~ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 500 золотых. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 1000 золотых за 2 недели. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 1500 золотых за 3 недели. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(1500)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 2000 золотых за месяц. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(2000)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 2500 золотых за все это время. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(2500)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.6
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 3000 золотых за все это время. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.7
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 3500 золотых за все это время. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(3500)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.8
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 4000 золотых за все это время. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(4000)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.9
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 4500 золотых за все это время. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(4500)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.9
  SAY ~С тех, пор, как закрылась "Перчатка", посетителей мало... Весь бизнес буквально подыхает. Вот, это ваша плата. 5000 золотых за все это время. Как и было сказано... Немного.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(5000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.10
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 5500 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(5500)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.11
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 6000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(6000)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.12
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 7000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(7000)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 14.13
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 8000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(8000)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 14.14
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 10000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(10000)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 14.15
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 15000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(15000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.16
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 25000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(25000)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 14.17
  SAY ~С тех, пор, как закрылась "Перчатка", бизнес идет не очень хорошо. Вот, это ваша плата. 50000 золотых за все это время.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(50000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 14.18
  SAY ~Простите, <SIRMAAM>, но время жалованья еще не пришло. Нужно подождать до конца недели.~
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Теперь бар мой, и что мне делать?~ GOTO 34
  IF ~~ THEN REPLY ~До свидания.~ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 14.19
  SAY ~Последний владелец, Клодус, устроил все так, что ему не надо было ничего делать. Он постоянно был чем-то занят. Все, что вам нужно делать - это приходить раз в неделю и получать прибыль. Состояния не наживете, но все же лучше, чем ничего. А кроме того, я бы не советовал вам искать приключений. Вы, похоже, любите это дело. По мне, так это опасно хотя и прибыльно, наверняка.~
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",499)GlobalLT("NwTavTaxes","GLOBAL",501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 15
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",999)GlobalLT("NwTavTaxes","GLOBAL",1501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 16
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1499)GlobalLT("NwTavTaxes","GLOBAL",2001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 17
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1999)GlobalLT("NwTavTaxes","GLOBAL",2501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 18
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2499)GlobalLT("NwTavTaxes","GLOBAL",3001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 19
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2999)GlobalLT("NwTavTaxes","GLOBAL",3501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 20
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3499)GlobalLT("NwTavTaxes","GLOBAL",4001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 21
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3999)GlobalLT("NwTavTaxes","GLOBAL",4501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 22
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4499)GlobalLT("NwTavTaxes","GLOBAL",5001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 23
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4999)GlobalLT("NwTavTaxes","GLOBAL",5501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 24
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5499)GlobalLT("NwTavTaxes","GLOBAL",6001)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 25
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5999)GlobalLT("NwTavTaxes","GLOBAL",6501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 26
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",6999)GlobalLT("NwTavTaxes","GLOBAL",7501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 27
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",7999)GlobalLT("NwTavTaxes","GLOBAL",8501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 28
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",9999)GlobalLT("NwTavTaxes","GLOBAL",10501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 29
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",14999)GlobalLT("NwTavTaxes","GLOBAL",15501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 30
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",24999)GlobalLT("NwTavTaxes","GLOBAL",25501)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 31
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",44999)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 32
  IF ~  GlobalLT("NwTavTaxes","GLOBAL",499)~ THEN REPLY ~Дайте мне жалованье за неделю.~ GOTO 33
  IF ~~ THEN REPLY ~До свидания.~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 14.20
  SAY ~Всего хорошего.~
  IF ~~ THEN EXIT
END

















