// Центр Невервинтера  Сияющие Оружие и Броня для Рыцаре  Маррок дварф-кузнец. Годы, проведенные возле кузнечного горна и наковальни, сделали этого гнома крепким и сильным. Он держит свой молот так, будто родился с ним.

BEGIN ~MARROK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)Class(LastTalkedToBy,FIGHTER_ALL)Class(LastTalkedToBy,RANGER_ALL)Class(LastTalkedToBy,PALADIN)Global("MarrokSay","MYAREA",0)Global("ToMarrok","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Да, похоже, вы знаете толк в хорошем оружии, верно? Что Маррок может сделать для вас?~
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 2
  IF ~  Global("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я кую и доспехи, и оружие, и все такое. Я беру составляющие и магические предметы и превращаю их в еще более мощные вещи. Не всякий так сможет, скажу я вам.~
  IF ~~ THEN REPLY ~Что это за "составляющие" такие?~ GOTO 5
  IF ~~ THEN REPLY ~Нет, сейчас меня ничего не интересует.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~На моей наковальне кое-что есть. Давайте взглянем и я скажу, что я могу для вас сделать.~
  IF ~  Global("PlantedItems","MYAREA",1)~ THEN GOTO 11
  IF ~  Global("PlantedItems","MYAREA",2)~ THEN GOTO 12
  IF ~  Global("PlantedItems","MYAREA",3)~ THEN GOTO 13
  IF ~  Global("PlantedItems","MYAREA",4)~ THEN GOTO 14
  IF ~  Global("PlantedItems","MYAREA",5)~ THEN GOTO 15
  IF ~  Global("PlantedItems","MYAREA",6)~ THEN GOTO 16
  IF ~  Global("PlantedItems","MYAREA",7)~ THEN GOTO 17
  IF ~  Global("PlantedItems","MYAREA",8)~ THEN GOTO 18
  IF ~  Global("PlantedItems","MYAREA",9)~ THEN GOTO 19
  IF ~  Global("PlantedItems","MYAREA",10)~ THEN GOTO 20
  IF ~  Global("PlantedItems","MYAREA",11)~ THEN GOTO 21
  IF ~  Global("PlantedItems","MYAREA",12)~ THEN GOTO 22
  IF ~  Global("PlantedItems","MYAREA",13)~ THEN GOTO 23
  IF ~  Global("PlantedItems","MYAREA",14)~ THEN GOTO 24
  IF ~  Global("PlantedItems","MYAREA",15)~ THEN GOTO 25
  IF ~  Global("PlantedItems","MYAREA",16)~ THEN GOTO 26
  IF ~  Global("PlantedItems","MYAREA",17)~ THEN GOTO 27
  IF ~  Global("PlantedItems","MYAREA",18)~ THEN GOTO 28
  IF ~  Global("PlantedItems","MYAREA",19)~ THEN GOTO 29
  IF ~  Global("PlantedItems","MYAREA",20)~ THEN GOTO 30
  IF ~  Global("PlantedItems","MYAREA",21)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Положите на наковальню одну составляющую, магическое оружие или комплект магических доспехов, и я помогу вам. Но если на наковальне чего-то не хватает - вот как сейчас - я не смогу ничего сделать, ясно?~
  IF ~~ THEN REPLY ~Что это за "составляющие" такие?~ GOTO 5
  IF ~~ THEN REPLY ~Нет, сейчас меня ничего не интересует.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~До свидания. Может, мы еще поговорим.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Ну, мне нужен адамант, железное дерево, алмазы, кровь дракона, волшебная пыль (тьфу!!), а еще святая вода и черепа горгульи... И... И.. Адамант... Тогда я возьму магический предмет, еще одну составляющую, и сделаю кое-что новое.~
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~Вы можете привести пример? Подскажите мне, что вам нужно.~ GOTO 7
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~Вы можете привести пример? Подскажите мне, что вам нужно.~ GOTO 8
  IF ~~ THEN REPLY ~Где мне взять эти составляющие?~ GOTO 9
  IF ~~ THEN REPLY ~Вы гарантируете, что это будет мощная вещь?~ GOTO 10
  IF ~~ THEN REPLY ~Нет, сейчас меня ничего не интересует.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~Эй, я не принуждаю вас. У меня и так полно дел. Что-нибудь еще?~
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 2
  IF ~  Global("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Послушай, у тебя уже есть копия моей книги с рецептами. Что тебе еще надо? Просто прочитай ее, бесы тебя возьми.~
  IF ~~ THEN REPLY ~Где мне взять эти составляющие?~ GOTO 9
  IF ~~ THEN REPLY ~Вы гарантируете, что это будет мощная вещь?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Ну, наверное. для меня это не столь важно, но я не смогу продать вещь, если вы о ней ничего не знаете. Вот, возьмите книжку. Там все написано.~
  IF ~~ THEN DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("Marrbook",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~Это не моя забота. Если вы любите приключения, попробуйте раздобыть их у монстров. Но можно достать и у торговцев.~
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~Вы можете привести пример? Подскажите мне, что вам нужно.~ GOTO 7
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~Вы можете привести пример? Подскажите мне, что вам нужно.~ GOTO 8
  IF ~~ THEN REPLY ~Вы гарантируете, что это будет мощная вещь?~ GOTO 10
  IF ~~ THEN REPLY ~Нет, сейчас меня ничего не интересует.~ GOTO 6
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~Да нет. Видите ли, если ваше оружие или доспех уже и так мощны, оставьте его себе. Мне же дайте только слабые магические предметы. Но я не могу дать гарантию, что новая вещь непременно вам понравится.~
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~Вы можете привести пример? Подскажите мне, что вам нужно.~ GOTO 7
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~Вы можете привести пример? Подскажите мне, что вам нужно.~ GOTO 8
  IF ~~ THEN REPLY ~Где мне взять эти составляющие?~ GOTO 9
  IF ~~ THEN REPLY ~Нет, сейчас меня ничего не интересует.~ GOTO 6
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY ~Посмотрим... У вас рителлиум и комплект магических доспехов. Я мог бы сделать вам цветной доспех - прекрасная защита в бою, скажу я вам. Но стоить это будет недешево. Придется заплатить мне 7000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(6999)~ THEN REPLY ~Вот ваши 7000 золотых.~ DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY ~Что это? Особая святая вода? Мощная штука. Из нее и вашей магической кольчуги я мог бы сделать чешую правды. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY ~Хмм... Из этого черепа горгульи и ваших кожаных доспехов я мог бы сделать прекрасную броню белой кости. Но стоить это будет недешево. Придется заплатить мне 5000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(4999)~ THEN REPLY ~Вот ваши 5000 золотых.~ DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 14 // from: 2.4
  SAY ~Этот адамант можно вмонтировать в магический боевой топор, и получится Страж. Прекрасное оружие. Очень мощное. Но стоить это будет недешево. Придется заплатить мне 5500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5499)~ THEN REPLY ~Вот ваши 5500 золотых.~ DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 15 // from: 2.5
  SAY ~Подойдет. Из вашего адаманта и магической алебарды получится двуручный топор каменного пламени. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 16 // from: 2.6
  SAY ~Кровь дракона - очень хорошая штука. Если я все помню правильно, то из нее и этой магического боевого топора можно сделать "Драконий ужас". Но стоить это будет недешево. Придется заплатить мне 8000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(7999)~ THEN REPLY ~Вот ваши 8000 золотых.~ DO ~TakePartyGold(8000)DestroyGold(8000)~ GOTO 32
  IF ~  PartyGoldLT(8000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 17 // from: 2.7
  SAY ~Железное дерево. Знаете, из этого железного дерева и вашей палицы я могу сделать палицу гладиатора. Но стоить это будет недешево. Придется заплатить мне 4000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(3999)~ THEN REPLY ~Вот ваши 4000 золотых.~ DO ~TakePartyGold(4000)DestroyGold(4000)~ GOTO 32
  IF ~  PartyGoldLT(4000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 18 // from: 2.8
  SAY ~Интересно. Из железного дерева и этой магической булавы можно сделать крепкую булаву железного дерева. Но стоить это будет недешево. Придется заплатить мне 5000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(4999)~ THEN REPLY ~Вот ваши 5000 золотых.~ DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 2.9
  SAY ~Знаете, этот рителлиум можно совместить с магическим молотом, и выйдет прекрасный молот бури. Но стоить это будет недешево. Придется заплатить мне 7000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(6999)~ THEN REPLY ~Вот ваши 7000 золотых.~ DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 20 // from: 2.10
  SAY ~Из этого железного дерева и магического цепа получится отменный кистень основания. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 21 // from: 2.11
  SAY ~Ага, замечательно! Из особой святой воды и магической булавы я сделаю булаву упокоения! Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 22 // from: 2.12
  SAY ~Только посмотрите - волшебная пыль! Из нее и магического моргенштерна получится отличный жужжащий моргенштерн. Но стоить это будет недешево. Придется заплатить мне 6500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~Вот ваши 6500 золотых.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 23 // from: 2.13
  SAY ~Ладно - из вашего адаманта и магического боевого молота выйдет прекрасный рунный молот. Но стоить это будет недешево. Придется заплатить мне 6500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~Вот ваши 6500 золотых.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 2.14
  SAY ~О, да тут полезные вещи! Адамант и магический двуручный меч вместе дадут двуручный меч предвестников. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 25 // from: 2.15
  SAY ~Ага, кое-что есть. Из вашего адаманта и магической катаны я могу выковать святую катану. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 26 // from: 2.16
  SAY ~Интересно. Добавив рителлиум к магическому длинному мечу, получим астральный длинный меч. Но стоить это будет недешево. Придется заплатить мне 6500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~Вот ваши 6500 золотых.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 27 // from: 2.17
  SAY ~Интересно. Добавив рителлиум к магическому полуторному мечу, получим астральный полуторный меч. Но стоить это будет недешево. Придется заплатить мне 6500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~Вот ваши 6500 золотых.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 2.18
  SAY ~Из адаманта и магического скимитара я мог бы выковать вам скимитар пустынного ветра. Но стоить это будет недешево. Придется заплатить мне 5500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5499)~ THEN REPLY ~Вот ваши 5500 золотых.~ DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 2.19
  SAY ~Знаете, я мог бы взять эту волшебную пыль и ваш магический короткий меч, и сделать вам короткий меч фейной пыли. Но стоить это будет недешево. Придется заплатить мне 5500 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5499)~ THEN REPLY ~Вот ваши 5500 золотых.~ DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 2.20
  SAY ~Ха. Кровь дракона. Не стану спрашивать, где вы ее взяли, но из нее и этой магической алебарды я могу сделать алебарду губителя. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 2.21
  SAY ~Хмм... Эта волшебная пыль подойдет к вашему магическому копью. Если хотите, я сделаю трезубец фей. Но стоить это будет недешево. Придется заплатить мне 6000 золотых. Оплата вперед, разумеется.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~Вот ваши 6000 золотых.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~Я не могу себе этого позволить.~ GOTO 33
  IF ~~ THEN REPLY ~Пожалуй, я не буду ничего заказывать.~ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 11.1
  SAY ~<MALEFEMALE> как вы всегда желанный гость в моей мастерской. Отойдите - как бы мой молот не задел вас по голове.~
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("CUTMARR")~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 11.2
  SAY ~Справедливо - но я не занимаюсь благотворительностью. Нет денег - нет предмета.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 11.3
  SAY ~Справедливо - клиент всегда может изменить свое мнение.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MarrokSay","MYAREA",1)~ THEN BEGIN 35 // from:
  SAY ~Вот, <SIRMAAM>. Раз-два, и готово. Возьмите вашу вещь с наковальни.~
  IF ~~ THEN DO ~SetGlobal("MarrokSay","MYAREA",0)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)Global("MarrokSay","MYAREA",0)
Global("ToMarrok","GLOBAL",1)~ THEN BEGIN 36 // from:
  SAY ~Черт побери, Дурга пускает сюда всякий сброд! Что вам нужно от Маррока, что, что?!~
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 2
  IF ~  Global("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MarrokSay","MYAREA",0)Global("ToMarrok","GLOBAL",0)~ THEN BEGIN 37 // from:
  SAY ~Нет, нет, нет, вы прокрались сюда! Вы не похожи на бойца, я это сразу вижу! Убирайтесь отсюда! МОЯ РАБОТА НЕ ДЛЯ ЛЮБИТЕЛЕЙ!~
  IF ~~ THEN EXIT
END

