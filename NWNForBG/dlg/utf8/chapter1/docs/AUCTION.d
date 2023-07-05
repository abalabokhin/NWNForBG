// Доки Таверна Сиди Аукционист  человек  Этот говорливый аукционер выглядит очень расстроенным тем, что сегодняшние торги явно не идут так, как задумывались.

BEGIN ~AUCTION~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Проклятый Венгаул! Столько денег я заплатил за некоторые из этих вещей, а теперь он задерживает начало шоу! А, бес с ним. Кто-нибудь хочет что-нибудь купить? У меня контрабандная цена, хорошая.~
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY ~Давайте посмотрим на ваши специальные предложения.~ GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY ~Давайте посмотрим на ваши специальные предложения.~ GOTO 2
  IF ~~ THEN REPLY ~Почему не начинается аукцион?~ GOTO 3
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY ~У меня много чего есть. Вы бы хотели посмотреть доспехи, оружие или прочие товары?~
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Оружие.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Оружие.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Оружие.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Оружие.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Оружие.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Оружие.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Оружие.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Доспехи.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Доспехи.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Доспехи.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Доспехи.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Доспехи.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Доспехи.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Доспехи.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Из моих особых товаров ничего не осталось. Может, что-нибудь другое хотите?~
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Почему не начинается аукцион?~ GOTO 3
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Потому что главного лота здесь нет. Венгаул сказал, что у него есть нечто потрясающее на продажу, а теперь пропал. Не стоит даже начинать аукцион, если у меня нет ничего, что могло бы взволновать людей и задрать цены. Мне надо возместить убытки, так что Венгаул может сколько угодно сидеть на своем 'компоненте для лекарства от чумы'.~
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY ~Давайте посмотрим на ваши специальные предложения.~ GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY ~Давайте посмотрим на ваши специальные предложения.~ GOTO 2
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~У меня нет времени. Мне надо распродать эти вещи и идти за новым запасом. Не торчать же тут вечно.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~У меня есть магический двойной топор. Это экзотическое оружие. Симпатичное. Всего 15 контрабандистских монет. Есть магический длинный меч. Это армейское оружие, отличная штука. Стоит 10 контрабандистских монет. Есть магический моргенштерн. Простое оружие, очень хорошее. Всего 5 контрабандистских монет. Ну, так что, будем что-нибудь покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический двойной топор за 15 монет.~ GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~Приобрести магический длинный меч за 10 монет.~ GOTO 23
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический моргенштерн за 5 монет.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~У меня есть магический длинный меч. Это армейское оружие, отличная штука. Стоит 10 контрабандистских монет. Есть магический моргенштерн. Простое оружие, очень хорошее. Всего 5 контрабандистских монет. Ну, так что, будем что-нибудь покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~Приобрести магический длинный меч за 10 монет.~ GOTO 23
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический моргенштерн за 5 монет.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~У меня есть магический двойной топор. Это экзотическое оружие. Симпатичное. Всего 15 контрабандистских монет. Есть магический моргенштерн. Простое оружие, очень хорошее. Всего 5 контрабандистских монет. Ну, так что, будем что-нибудь покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический двойной топор за 15 монет.~ GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический моргенштерн за 5 монет.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~У меня есть магический двойной топор. Это экзотическое оружие. Симпатичное. Всего 15 контрабандистских монет. Есть магический длинный меч. Это армейское оружие, отличная штука. Стоит 10 контрабандистских монет. Ну, так что, будем что-нибудь покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический двойной топор за 15 монет.~ GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~Приобрести магический длинный меч за 10 монет.~ GOTO 23
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~У меня есть магический двойной топор. Это экзотическое оружие. Симпатичное. Всего 15 контрабандистских монет. Ну, так что, будем покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический двойной топор за 15 монет.~ GOTO 22
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~У меня есть магический длинный меч. Это армейское оружие, отличная штука. Стоит 10 контрабандистских монет. Ну, так что, будем покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~Приобрести магический длинный меч за 10 монет.~ GOTO 23
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 1.7
  SAY ~У меня есть магический двойной топор. Это экзотическое оружие. Симпатичное. Всего 15 контрабандистских монет. Есть магический длинный меч. Это армейское оружие, отличная штука. Стоит 10 контрабандистских монет. Есть магический моргенштерн. Простое оружие, очень хорошее. Всего 5 контрабандистских монет. Ну, так что, будем что-нибудь покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический моргенштерн за 5 монет.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 1.8
  SAY ~У меня есть магический нагрудник. Это средний доспех всего за 15 контрабандистских монет. У меня есть магический щит за 9 контрабандистских монет. У меня есть комплект магической кожи, то есть отличный комплект легких доспехов всего за 5 контрабандистских монет. Итак, что вам приглянулось?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический нагрудник за 15 монет.~ GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~Приобрести магический щит за 9 монет.~ GOTO 26
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический кожаный доспех за 5 монет.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 1.9
  SAY ~У меня есть магический щит за 9 контрабандистских монет. У меня есть комплект магической кожи, то есть отличный комплект легких доспехов всего за 5 контрабандистских монет. Итак, что вам приглянулось?~
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~Приобрести магический щит за 9 монет.~ GOTO 26
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический кожаный доспех за 5 монет.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 1.10
  SAY ~У меня есть магический нагрудник. Это средний доспех всего за 15 контрабандистских монет. У меня есть комплект магической кожи, то есть отличный комплект легких доспехов всего за 5 контрабандистских монет. Итак, что вам приглянулось?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический нагрудник за 15 монет.~ GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический кожаный доспех за 5 монет.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 1.11
  SAY ~У меня есть магический нагрудник. Это средний доспех всего за 15 контрабандистских монет. У меня есть магический щит за 9 контрабандистских монет. Итак, что вам приглянулось?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический нагрудник за 15 монет.~ GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~Приобрести магический щит за 9 монет.~ GOTO 26
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 1.12
  SAY ~У меня есть магический нагрудник. Это средний доспех всего за 15 контрабандистских монет. Будете покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~Приобрести магический нагрудник за 15 монет.~ GOTO 25
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 1.13
  SAY ~У меня есть магический щит за 9 контрабандистских монет. Будете покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~Приобрести магический щит за 9 монет.~ GOTO 26
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 1.14
  SAY ~У меня есть комплект магической кожи, то есть отличный комплект легких доспехов всего за 5 контрабандистских монет. Будете покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Приобрести магический кожаный доспех за 5 монет.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~Покажите мне ваши прочие товары.~ GOTO 21
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 1.15
  SAY ~У меня есть магический плащ, который был украден у сделавших его нимф, всего за 14 контрабандистских монет. У меня есть магический пояс, смотрите, как он мерцает. Отличная сделка за 6 контрабандистских монет. Итак, что вы выбрали?~
  IF ~  NumItemsPartyGT("Nwmisc29",13)~ THEN REPLY ~Приобрести магический плащ за 14 монет.~ GOTO 28
  IF ~  NumItemsPartyGT("Nwmisc29",5)~ THEN REPLY ~Приобрести магический пояс за 6 монет.~ GOTO 29
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 1.16
  SAY ~У меня есть магический плащ, который был украден у сделавших его нимф, всего за 14 контрабандистских монет. Будете покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",13)~ THEN REPLY ~Приобрести магический плащ за 14 монет.~ GOTO 28
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 1.17
  SAY ~У меня есть магический пояс, смотрите, как он мерцает. Отличная сделка за 6 контрабандистских монет. Будете покупать?~
  IF ~  NumItemsPartyGT("Nwmisc29",5)~ THEN REPLY ~Приобрести магический пояс за 6 монет.~ GOTO 29
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~Покажите мне, какое оружие у вас есть.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~Покажите, что у вас за выбор доспехов.~ GOTO 18
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 5.1
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",15)DestroyItem("Nwmisc29")
GiveItem("AxeAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",10)DestroyItem("Nwmisc29")
GiveItem("SwordAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",5)DestroyItem("Nwmisc29")
GiveItem("BlunAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",15)DestroyItem("Nwmisc29")
GiveItem("PlatAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.2
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",9)DestroyItem("Nwmisc29")
GiveItem("ShldAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.3
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",5)DestroyItem("Nwmisc29")
GiveItem("LeatAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.1
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)TakePartyItemNum("Nwmisc29",14)DestroyItem("Nwmisc29")GiveItem("ClckAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.2
  SAY ~Отличный выбор. Вы не пожалеете.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)TakePartyItemNum("Nwmisc29",6)DestroyItem("Nwmisc29")GiveItem("BeltAuc",LastTalkedToBy)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY ~Налетай, народ! У меня есть, что продать! Не заставляйте меня тащить все это домой! Не будет никакого аукциона.~
  IF ~~ THEN REPLY ~Я хочу взглянуть на обычные товары.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY ~Давайте посмотрим на ваши специальные предложения.~ GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY ~Давайте посмотрим на ваши специальные предложения.~ GOTO 2
  IF ~~ THEN REPLY ~Может быть в другой раз.~ GOTO 4
END

