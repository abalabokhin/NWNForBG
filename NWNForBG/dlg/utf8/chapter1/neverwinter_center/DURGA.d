// Центр Невервинтера Сияющие Оружие и Броня для Рыцарей   Дурга  Полуорк   Это один из многочисленных торговцев Невервинтера. Чума не пощадила торговлю, но они все равно пытаются сохранить широкий ассортимент.

BEGIN ~DURGA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Да? Вам что-нибудь нужно? В "Сияющем рыцаре" все есть.~
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я всего лишь торговец. Что я должен вам сказать?~
  IF ~~ THEN REPLY ~Я ищу самое лучшее снаряжение.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Всегда открыто, если у вас есть деньги.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Хмм... Не уверен, что вам нужно. У меня все лучшие товары, за честную плату.~
  IF ~  Global("ToMarrok","GLOBAL",1)~ THEN GOTO 6
  IF ~  Global("ToMarrok","GLOBAL",0)OR(3)Class(LastTalkedToBy,FIGHTER_ALL)Class(LastTalkedToBy,RANGER_ALL)Class(LastTalkedToBy,PALADIN)~ THEN GOTO 7
  IF ~  Global("ToMarrok","GLOBAL",0)!Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)PartyHasItem("Arena4")~ THEN GOTO 8
  IF ~  Global("ToMarrok","GLOBAL",0)!Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)!PartyHasItem("Arena4")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Это снизило мои продажи, уж точно, и мои запасы подходят к концу. Мой кузнец Маррок теперь предлагает свои услуги по цене чуть выше, чем цена материалов.~
  IF ~~ THEN REPLY ~Я ищу самое лучшее снаряжение.~ GOTO 3
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~У меня нет времени на сплетни. Я охраняю магазин от грабителей и больных чумой. До остального мне дела нет.~
  IF ~~ THEN REPLY ~Я ищу самое лучшее снаряжение.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~У вас ведь уже есть пропуск в подсобку. Там Маррок делает всякие хорошие штуки. Он вас снарядит.~
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY ~Видно, вы отлично разбираетесь в оружии. Может... А, бездна с ним. У меня есть кое-что особенное для вас. Возьмите камушек. Это пропуск в подсобку. Там Маррок делает всякие хорошие штуки. Он о вас позаботится.~
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY ~Ну, в самом деле, вы ведь не из тех, кто хорошо разбирается в доспехах и оружии? Минутку... Это медаль четвертого раунда?! Простите, я не хотел вас оскорбить. С этой наградой вы достойны самого лучшего. Возьмите этот пропуск в подсобку. Маррок хорошо снарядит вас.~
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY ~Этого вы не можете знать наверняка. То есть, тот, кто действительно умеет драться, может взглянуть на мои специальные предложения, но вы же к ним не относитесь.~
 IF ~  CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY ~Сейчас и так тяжелые времена, не стоит ограничивать торговлю. Перестаньте.~ GOTO 10
 IF ~  CheckStatLT(LastTalkedToBy,16,STR)~ THEN REPLY ~Сейчас и так тяжелые времена, не стоит ограничивать торговлю. Перестаньте.~ GOTO 11
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~Что ж, и то верно. Маррок не любит продавать первоклассный товар тем, кто даже не знает, что с ним делать. Но бизнес есть бизнес. Возьмите камушек. Это пропуск в подсобку. Там Маррок делает всякие хорошие штуки. Он о вас позаботится.~
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~Мне очень жаль, просто мне кажется, что ты не сможешь как следует воспользоваться нашими первоклассными товарами. Видишь ли, мой кузнец очень щепетильно относится к своим изделиям.~
  IF ~~ THEN REPLY ~Посмотрим, что у вас есть на продажу.~ DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

