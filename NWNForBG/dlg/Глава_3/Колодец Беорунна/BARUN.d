// Колодец Беорунна: торговый пост Барун Сильверблэйд  дварф-кузнец. Даже для своего рода этот гномский кузнец довольно коренаст и мускулист - результат многолетнего махания молотом в кузнице.

BEGIN ~BARUN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BarunSay","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в кузницу Баруна, <SIRMAAM>. Я, разумеется, Барун, главный оружейник и создатель отличных магических предметов. Чем я могу помочь вам?~
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY ~Я хочу заказать вам одну вещь.~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я кузнец, специалист по оружию и броне, вроде как. Я беру компоненты и объединяю их с магическими предметами, чтобы делать еще более могущественные предметы. Не такое уж и плевое дело, если понимать. Если желаете, я посмотрю ваше снаряжение и вещевой мешок, вдруг там найдется что-то подходящее, чтобы я сделал вам действительно опасное оружие или мощный доспех. Что бы вы хотели, чтобы я поискал?~
  IF ~~ THEN REPLY ~Меня интересуют топоры и доспехи.~ GOTO 7
  IF ~~ THEN REPLY ~Меня интересует дробящее оружие~ GOTO 8
  IF ~~ THEN REPLY ~Меня интересуют магические мечи.~ GOTO 9
  IF ~~ THEN REPLY ~Меня интересует не совсем обычное оружие.~ GOTO 10
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~Что это за "составляющие" такие?~ DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("Barubook",LastTalkedToBy,0,0,0)~ GOTO 5
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~Что это за "составляющие" такие?~ GOTO 6
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
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~Что это за "составляющие" такие?~ DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("Barubook",LastTalkedToBy,0,0,0)~ GOTO 5
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~Что это за "составляющие" такие?~ GOTO 6
  IF ~~ THEN REPLY ~Нет, сейчас меня ничего не интересует.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хорошего дня вам, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY ~Да пожалуйста, только возьмите вот эту книгу. Тут описывается все, что я могу сделать и все компоненты, которые необходимы для этого.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY ~Послушай, у тебя уже есть копия моей книги с рецептами. Что тебе еще надо? Просто прочитай ее, бесы тебя возьми.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY ~Итак, топоры и доспехи? Дайте-ка мне взглянуть на ваши вещи, а я скажу, что я смогу из них сделать. Если предмета нет в списке, значит, у вас нет нужных вещей. Выберите то, что я должен для вас сделать.~
  IF ~  PartyHasItem("Plat04")PartyHasItem("Rithtel2")~ THEN REPLY ~Цветной доспех: необходим рителлиум и полный латный доспех~ GOTO 35
  IF ~  PartyHasItem("Chan02")PartyHasItem("Holywanw")~ THEN REPLY ~Чешуя правды: необходима особая святая вода и кольчуга +1 с КЗ 4.~ GOTO 35
  IF ~  PartyHasItem("Leat07")PartyHasItem("GarSkull")~ THEN REPLY ~Кожаный доспех белой кости: Нужен череп горгульи и клепаный кожаный доспех +2 с КЗ 5~ GOTO 35
  IF ~  PartyHasItem("AX1H02")PartyHasItem("Adamant")~ THEN REPLY ~Страж: необходим адамант и боевой топор +1~ GOTO 35
  IF ~  PartyHasItem("Halb02")PartyHasItem("Adamant")~ THEN REPLY ~Двуручный топор каменного пламени: необходим адамант и алебарда +1.~ GOTO 35
  IF ~   PartyHasItem("AX1H02")PartyHasItem("Drablood")~ THEN REPLY ~Драконий ужас +4: необходима кровь дракона и боевой топор +1~ GOTO 35
  IF ~~ THEN REPLY ~У меня нет нужных составляющих.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY ~Вам нужны палицы, булавы и молоты, да? Я взгляну на ваши вещи, а потом скажу, что там полезного, а потом предоставлю список, что я могу из этого для вас сделать. Если предмета нет в списке, значит, у вас нет нужных вещей. Выберите то, что я должен для вас сделать.~
  IF ~  PartyHasItem("Blun01")PartyHasItem("Ironwood")~ THEN REPLY ~Палица гладиатора: необходимо железное дерево и обычная палица.~ GOTO 35
  IF ~  PartyHasItem("Blun05")PartyHasItem("Ironwood")~ THEN REPLY ~Булава из железного дерева: необходимо железное дерево и булава +1.~ GOTO 35
  IF ~  PartyHasItem("HAMM02")PartyHasItem("Rithtel2")~ THEN REPLY ~Молот бури: необходим рителлиум и боевой молот +1.~ GOTO 35
  IF ~  PartyHasItem("Blun03")PartyHasItem("Ironwood")~ THEN REPLY ~Кистень основателя: необходимо железное дерево и цеп +1.~ GOTO 35
  IF ~  PartyHasItem("Blun05")PartyHasItem("Holywanw")~ THEN REPLY ~Булава упокоения: необходима особая святая вода и булава +1.~ GOTO 35
  IF ~   PartyHasItem("Blun07")PartyHasItem("Magdust")~ THEN REPLY ~Жужжащий моргенштерн: необходима волшебная пыль и  моргенштерн +1.~ GOTO 35
  IF ~  PartyHasItem("Hamm03")PartyHasItem("Adamant")~ THEN REPLY ~Рунный молот: необходим адамант и боевой молот +2.~ GOTO 35
  IF ~~ THEN REPLY ~У меня нет нужных составляющих.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY ~Что может быть лучше старого доброго меча? Проверенное оружие. Итак, позвольте мне заглянуть в вашу сумку, и я скажу вам, какие замечательные клинки я могу сделать из ее содержимого. Если предмета нет в списке, значит, у вас нет нужных вещей. Выберите то, что я должен для вас сделать.~
  IF ~  PartyHasItem("Sw2h02")PartyHasItem("Adamant")~ THEN REPLY ~Двуручный меч Предвестников: необходим адамант и двуручный меч +1.~ GOTO 35
  IF ~  PartyHasItem("Sw1h44")PartyHasItem("Adamant")~ THEN REPLY ~Святая катана: необходим адамант и катана +1.~ GOTO 35
  IF ~  PartyHasItem("Sw1h05")PartyHasItem("Rithtel2")~ THEN REPLY ~Астральный длинный меч: необходим рителлиум и длинный меч +1..~ GOTO 35
  IF ~  PartyHasItem("Sw1h02")PartyHasItem("Rithtel2")~ THEN REPLY ~Астральный полуторный меч: необходим рителлиум и полуторный меч +1.~ GOTO 35
  IF ~  PartyHasItem("Sw1h022")PartyHasItem("Adamant")~ THEN REPLY ~Скимитар пустынного ветра: необходим адамант и скимитар +1. ~ GOTO 35
  IF ~   PartyHasItem("Sw1h008")PartyHasItem("Magdust")~ THEN REPLY ~Короткий меч фейной пыли: необходима волшебная пыль и короткий меч +1. ~ GOTO 35
  IF ~~ THEN REPLY ~У меня нет нужных составляющих.~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4
  SAY ~Конечно. Не всем сейчас нужны топоры, мечи и булавы, правда? Вот, посмотрите, что необычного я могу сделать из содержимого вашей сумки. Если предмета нет в списке, значит, у вас нет нужных вещей. Выберите то, что я должен для вас сделать.~
  IF ~  PartyHasItem("Halb03")PartyHasItem("Drablood")~ THEN REPLY ~Алебарда губителя: необходима кровь дракона и алебарда +2.  ~ GOTO 35
  IF ~   PartyHasItem("SPER02")PartyHasItem("Magdust")~ THEN REPLY ~Трезубец фей: необходима волшебная пыль и копье +1.  ~ GOTO 35
  IF ~~ THEN REPLY ~У меня нет нужных составляющих.~ EXIT
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
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("CUTBARUN")~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 11.2
  SAY ~Справедливо - но я не занимаюсь благотворительностью. Нет денег - нет предмета.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 11.3
  SAY ~Справедливо - клиент всегда может изменить свое мнение.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 7.1
  SAY ~Прекрасный выбор. Когда будете готовы, положите составляющие, включая нужный магический предмет, на наковальню, и снова обратитесь ко мне.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BarunSay","MYAREA",1)~ THEN BEGIN 36 // from:
  SAY ~Вот, <SIRMAAM>. Раз-два, и готово. Возьмите вашу вещь с наковальни.~
  IF ~~ THEN DO ~SetGlobal("BarunSay","MYAREA",0)~ EXIT
END

