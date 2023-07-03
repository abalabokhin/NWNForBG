// Южная дорога 2 - Констанс О'Дил  Эта молодая женщина озабоченно выполняет свою работу. Pete Ingo  ErikNW  Constanc Mary

BEGIN ~CONSTANC~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("ErikQuest","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY ~Послушай, у меня много работы, так что оставь меня, пожалуйста, в покое.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 1 // from:
  SAY ~Что ж... красивый незнакомец в спальне дочери фермера. Интересно, к чему может привести эта встреча?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 50
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 6
  IF ~~ THEN REPLY ~Ты всегда так прямолинейно выражаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Это он тебе рассказал, да? Что ж, я пыталась сделать так, чтобы он оставил меня в покое, но он продолжал настаивать. Я сказала ему, что между нами никогда ничего не будет, но он не хотел меня слушать.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Я собиралась вернуть ему ее, если он пообещает оставить меня в покое, но теперь она мне самой нужна. Золото, которое я за нее выручу, поможет папе купить новых коров вместо тех, что загрызли волки.~
  IF ~~ THEN REPLY ~Будь благоразумной. Инго ценит эту брошь, потому что она напоминает ему о его жене.~ GOTO 9
  IF ~~ THEN REPLY ~Может, вырвать эту несчастную брошку из твоих окоченевших мертвых рук?~ GOTO 10
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ DO ~SetGlobal("Failure","LOCALS",1)~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ DO ~SetGlobal("Failure","LOCALS",1)~ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Это что, шутка? Я же ее уже отдала, ты что, не помнишь? А теперь, если я могу тебе еще чем-нибудь помочь...~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Послушай, может, мы не будем опять к этому возвращаться? Я уже говорила об этом, но, наверно, придется сказать еще раз.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Тебе наверняка приходилось слышать истории о фермерской дочери и... о, не важно. Почему меня всегда окружают одни простаки?~
  IF ~~ THEN REPLY ~Дело не в моей глупости, мне просто хотелось дать тебе шанс вести себя как приличной, воспитанной девушке.~ GOTO 12
  IF ~~ THEN REPLY ~Ах вот оно что! Что ж, ты довольно миленькая...~ GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~О... прошу прощения. Мне не стоило так себя вести. Просто дело в том, что когда ты единственная девушка на мили вокруг... ну, это как-то надоедает.~
  IF ~~ THEN REPLY ~Ну, ты очень неплохо выглядишь...~ GOTO 13
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY ~Что ж, тогда до встречи. Может быть, мы еще поговорим.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~Возможно и так, но мне дадут за нее хорошую цену в Порт-Лласте. Достаточно, чтобы купить пару коров вместо тех, которых загрызли волки...~
  IF ~~ THEN REPLY ~Деньги? Это все, что для тебя имеет значение?~ GOTO 15
  IF ~~ THEN REPLY ~Ну хорошо, расскажи мне немного об Эрике.~ GOTO 16
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~За обычную крестьянскую брошку я полюблю тебя навеки.~ GOTO 17
  IF ~~ THEN REPLY ~Может, вырвать эту несчастную брошку из твоих окоченевших мертвых рук?~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY ~Так, а это еще что такое? Может, Эрик и хочет получить обратно свою брошку, но я точно знаю, что он никого не стал бы посылать убить меня! Слушай, если эта дурацкая старая брошка так много значит, мы могли бы договориться. 1000 золотых и она твоя, по рукам?~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых? Договорились.~ DO ~TakePartyGold(250)SetGlobal("PriceXL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN REPLY ~Это простая крестьянская брошь. Она стоит самое большее 250!~ DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY ~Это простая крестьянская брошь. Она стоит самое большее 250!~ GOTO 32
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Давай сюда брошь, не то я тебя выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY ~Буду рада ответить на один-два вопроса. Что вы хотите знать?~
  IF ~~ THEN REPLY ~Я расследую недавние события, возможно, вы что-то о них знаете.~ GOTO 22
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN REPLY ~Что тут в округе интересного происходит?~ GOTO 23
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 24
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~О... какой стыд. Прошу прощения. Так чем я могу тебе помочь?~
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Забудь об этом. Я уже не в настроении. Что тебе нужно?~
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~Да, да. Ступай.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY ~Слушай, моя мама очень дружила с его мамой, когда та была жива! Если бы она знала, как нам тяжело приходится, она бы с радостью отдала эту брошку!~
  IF ~~ THEN REPLY ~Возможно, я могу выкупить ее у тебя...~ GOTO 25
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~За обычную крестьянскую брошку я полюблю тебя навеки.~ GOTO 17
  IF ~~ THEN REPLY ~Давай сюда брошь, не то выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY ~"Он хороший парень". Так моя мама говорит, и не то, чтобы я была не согласна... Но если бы он и правда был хорошим парнем, он бы больше помогал моему отцу и меньше тратил время на то, чтобы собирать букетики из полевых цветов. Вот и все, что я хочу сказать.~
  IF ~  RandomNum(2,1)~ THEN REPLY ~Он любит тебя, Констанс. Не предавай его любовь.~ GOTO 26
  IF ~  RandomNum(2,2)~ THEN REPLY ~Он любит тебя, Констанс. Не предавай его любовь.~ GOTO 27
  IF ~~ THEN REPLY ~Деньги? Это все, что для тебя имеет значение?~ GOTO 15
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~За обычную крестьянскую брошку я полюблю тебя навеки.~ GOTO 17
  IF ~~ THEN REPLY ~Может, вырвать эту несчастную брошку из твоих окоченевших мертвых рук?~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 9.3
  SAY ~И всей любви в мире не хватит на то, чтобы купить хоть одну корову... но язык у тебя хорошо подвешен, только ты забываешь, что я первая использовала этот трюк на Эрике.~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY ~1000 золотых? Мы... Мы сможем выкупить вторую половину стада! Спасибо тебе, ты не представляешь себе, как много это значит для моей семьи! Дай мне секунду. Брошь у меня в кармане... Вот она, и, надеюсь, этот глупый Эрик научится не отдавать свое сердце так легко. А теперь, тебе еще что-нибудь нужно?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 10.2
  SAY ~*Вздыхает* Торговаться с Эриком было бы намного проще, скажу я тебе. Хорошо, пусть будет 250...Дай мне секунду. Брошь у меня в кармане... Вот она, и, надеюсь, этот глупый Эрик научится не отдавать свое сердце так легко. А теперь, тебе еще что-нибудь нужно?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY ~Что ж, боюсь, тебе не повезло. Это вполне приемлемая цена за память о матери, не так ли? Приходи когда разбогатеешь.~
  IF ~~ THEN DO ~SetGlobal("Failure","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY ~Эй-эй-эй! Давай успокоимся. Уверена, Эрик послал тебя не затем, чтобы убить меня! Послушай, я соглашусь на 250, только не надо мне больше угрожать...~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250? Идет.~ DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 30
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Торговли с меня хватит. Пора прикончить тебя и забрать брошку бесплатно!~ GOTO 31
END

IF ~~ THEN BEGIN 22 // from: 11.1
  SAY ~Вы про что хоть спрашиваете?~
  IF ~~ THEN REPLY ~Вам что-нибудь известно о культе, из-за которого на Невервинтер обрушился мор?~ GOTO 34
  IF ~~ THEN REPLY ~Вы когда-нибудь бывали в Чарвуде?~ GOTO 35
  IF ~~ THEN REPLY ~К югу от вашей фермы, находится какая-то пещера. Вы что-нибудь о ней знаете?~ GOTO 36
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 11.2
  SAY ~Ну, всегда происходят какие-то приключения, особенно если забраться так далеко от остального мира.~
  IF ~~ THEN REPLY ~Приключения? О каких приключениях вы говорите?~ GOTO 37
  IF ~~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 37
  IF ~~ THEN REPLY ~Есть тут какие-нибудь интересные места, куда мне стоит зайти?~ GOTO 39
END

IF ~~ THEN BEGIN 24 // from: 11.3
  SAY ~Куда вы хотите пойти?~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 54
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 41
  IF ~~ THEN REPLY ~Куда ведет южная дорога?~ GOTO 42
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 43
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY ~Правда? Хорошо. Можешь забирать ее за... 1000 золотых!~
  IF ~~ THEN REPLY ~Почему столько денег?~ GOTO 44
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых? Договорились.~ DO ~TakePartyGold(250)SetGlobal("PriceXL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN REPLY ~Это простая крестьянская брошь. Она стоит самое большее 250!~ DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY ~Это простая крестьянская брошь. Она стоит самое большее 250!~ GOTO 32
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Давай сюда брошь, не то я тебя выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY ~Ну и дурак он, если так. И всей любви в мире не хватит на то, чтобы купить хоть одну корову! *Вздыхает* Но я знаю, что ты говоришь правду...~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 16.2
  SAY ~Ну и дурак он, если так. И всей любви в мире не хватит на то, чтобы купить хоть одну корову! *Вздыхает* Но я знаю, что ты говоришь правду...~
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 28 // from: 17.1
  SAY ~Послушай, 250 золотых хватит нам на здорового быка. А это позволит нам восстановить стадо. Если в тебе есть хоть капля жалости, ты дашь мне хоть эту сумму. Пожалуйста.~
  IF ~~ THEN REPLY ~И почему стадо имеет такое значение?~ GOTO 29
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250? Идет.~ DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 30
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Торговли с меня хватит. Пора прикончить тебя и забрать брошку бесплатно!~ GOTO 31
END

IF ~~ THEN BEGIN 29 // from: 16.2
  SAY ~Мой папа - скотовод. И очень хороший скотовод. Но без хорошего стада мы никто. Нам даже есть будет нечего...~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250? Идет.~ DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 30
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Торговли с меня хватит. Пора прикончить тебя и забрать брошку бесплатно!~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 28.2 29.1
  SAY ~Дай мне секунду. Брошь у меня в кармане... Вот она, и, надеюсь, этот глупый Эрик научится не отдавать свое сердце так легко. А теперь, тебе еще что-нибудь нужно?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 31 // from: 21.3 28.4 29.3
  SAY ~Нет! Кто-нибудь, помогите, пожалуйста!~
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),45)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.3
  SAY ~Ладно, может 1,000 и вправду многовато, но уж 400 я точно получу!~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 золотых? Договорились.~ DO ~TakePartyGold(250)SetGlobal("PriceM","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 33
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Давай сюда брошь, не то я тебя выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY ~Дай мне секунду. Брошь у меня в кармане... Вот она, и, надеюсь, этот глупый Эрик научится не отдавать свое сердце так легко. А теперь, тебе еще что-нибудь нужно?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 34 // from: 22.1
  SAY ~Во время последней поездки в Порт-Лласт я слышала, как одна женщина рассказывала про ужасный мор. Я почти ничего не знаю об этом культе, но новости ужасные.~
  IF ~~ THEN REPLY ~Вы уверены, что больше ничего не знаете об этом культе?~ GOTO 48
  IF ~~ THEN REPLY ~Вы когда-нибудь бывали в Чарвуде?~ GOTO 35
  IF ~~ THEN REPLY ~К югу от вашей фермы, находится какая-то пещера. Вы что-нибудь о ней знаете?~ GOTO 36
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 35 // from: 22.2
  SAY ~Нет. Папа мне не позволит. Он говорит, это потому, что они необычные, хотя он не объясняет, чем именно. Мне кажется, он просто не хочет, чтобы я встретила парня и убежала с ним.~
  IF ~~ THEN REPLY ~Вы можете рассказать мне что-нибудь еще о Чарвуде?~ GOTO 49
  IF ~~ THEN REPLY ~Вам что-нибудь известно о культе, из-за которого на Невервинтер обрушился мор?~ GOTO 34
  IF ~~ THEN REPLY ~К югу от вашей фермы, находится какая-то пещера. Вы что-нибудь о ней знаете?~ GOTO 36
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 36 // from: 22.3
  SAY ~О, это логово этих мерзких волков! В этом сезоне они зарезали уже двух коров. Можешь спросить об этом моего папу, если тебя это действительно интересует. В последнее время он следит за ними, как ястреб! Вы хотели знать что-то еще?~
  IF ~~ THEN REPLY ~Вам что-нибудь известно о культе, из-за которого на Невервинтер обрушился мор?~ GOTO 34
  IF ~~ THEN REPLY ~Вы когда-нибудь бывали в Чарвуде?~ GOTO 35
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 37 // from: 23.1
  SAY ~Моему папе нужна помощь. Не знаю, заинтересует тебя это или нет.~
  IF ~~ THEN REPLY ~С чем именно ему нужна помощь? Думаю, помогать пахать ему не надо.~ GOTO 38
  IF ~~ THEN REPLY ~Есть тут какие-нибудь интересные места, куда мне стоит зайти?~ GOTO 39
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY ~Ничего подобного, просто в последнее время у него много проблем с волками. Тебе стоит пойти, поговорить с ним. Скорее всего, он где-нибудь на улице делает что-нибудь по хозяйству. Вы хотели знать что-то еще?~
  IF ~~ THEN REPLY ~Есть тут какие-нибудь интересные места, куда мне стоит зайти?~ GOTO 39
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 39 // from: 23.3
  SAY ~Не знаю, что тебе может показаться интересным. Это наша ферма, а вон там работает Эрик со своим папой. А больше тут ничего нет. Вы хотели знать что-то еще?~
  IF ~~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 37
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 40 // from: 24.1
  SAY ~Куда вы хотите пойти?~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 54
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 41
  IF ~~ THEN REPLY ~Куда ведет южная дорога?~ GOTO 42
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 43
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 54 // from: 24.1
  SAY ~Иди все прямо и прямо по ней, и доберешься до Порт-Лласта. По базарным дням мы по этой дороге ездим. А еще дальше - Лускан.~
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 41
  IF ~~ THEN REPLY ~Куда ведет южная дорога?~ GOTO 42
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 43
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 41 // from: 24.2
  SAY ~Да никуда. Прямиком в Чарвуд, и я уже много лет не видела, чтобы по ней кто-то ходил. Странно только, что дорога не заросла.~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 54
  IF ~~ THEN REPLY ~Куда ведет южная дорога?~ GOTO 42
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 43
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 42 // from: 24.3
  SAY ~Это дорога в Невервинтер. Но до него очень далеко, я там никогда не бывала.~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 54
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 41
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 43
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 43 // from: 24.4
  SAY ~Здесь? Ничего интересного. За тем, что мы не можем вырастить или сделать сами, мы ходим в Порт-Лласт.~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 54
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 41
  IF ~~ THEN REPLY ~Куда ведет южная дорога?~ GOTO 42
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 44 // from: 15.1
  SAY ~Мой папа - скотовод. И очень хороший скотовод. Но без хорошего стада мы никто. Нам даже есть будет нечего... Эти дурацкие волки доведут нас до смерти, хотя охотятся они не на нас, а на скот!~
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY ~Не думай, что мне понравилось так поступать с беднягой Эриком. Он мне нравится. Честно. Но иногда жизнь требует отчаянных действий, понятно? Мне нужно 1000 золотых.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых? Договорились.~ DO ~TakePartyGold(250)SetGlobal("PriceXL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN REPLY ~Это простая крестьянская брошь. Она стоит самое большее 250!~ DO ~TakePartyGold(250)SetGlobal("PriceL","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN REPLY ~Это простая крестьянская брошь. Она стоит самое большее 250!~ GOTO 32
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Давай сюда брошь, не то я тебя выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 46 // from: 27.1
  SAY ~Послушай, 400 золотых хватит нам на здорового быка. А это позволит нам восстановить стадо. Если в тебе есть хоть капля жалости, ты дашь мне хоть эту сумму. Пожалуйста.~
  IF ~~ THEN REPLY ~И почему стадо имеет такое значение?~ GOTO 47
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 золотых? Договорились.~ DO ~TakePartyGold(250)SetGlobal("PriceM","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 33
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Давай сюда брошь, не то я тебя выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY ~Мой папа - скотовод. И очень хороший скотовод. Но без хорошего стада мы никто. Нам даже есть будет нечего...~
  IF ~~ THEN REPLY ~Бери 250. Следующий идиот, которого Эрик пошлет к тебе, возможно, вообще не будет вести с тобой переговоры.~ GOTO 19
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 золотых? Договорились.~ DO ~TakePartyGold(250)SetGlobal("PriceM","GLOBAL",1)GiveItem("NWMisc01",LastTalkedToBy)SetGlobal("Success","LOCALS",1)SetGlobal("Failure","LOCALS",0)~ GOTO 33
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 20
  IF ~~ THEN REPLY ~Давай сюда брошь, не то я тебя выпотрошу как рыбу!~ GOTO 21
END

IF ~~ THEN BEGIN 48 // from: 34.1
  SAY ~Мы здесь довольно изолированы. Девушка готова практически на все, чтобы хоть немного разнообразить свою жизнь. Но сюда доходят только новости о погоде, о новом теленке или о хорошем урожае. Вам еще что-нибудь нужно?~
  IF ~~ THEN REPLY ~Вы когда-нибудь бывали в Чарвуде?~ GOTO 35
  IF ~~ THEN REPLY ~К югу от вашей фермы, находится какая-то пещера. Вы что-нибудь о ней знаете?~ GOTO 36
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 49 // from: 35.1
  SAY ~Ну, когда мы с Эриком были детьми, мы рассказывали друг другу, что этот лес проклят. Просто детские сказки, абсолютно безвредные. У тебя есть еще вопросы?~
  IF ~~ THEN REPLY ~Вам что-нибудь известно о культе, из-за которого на Невервинтер обрушился мор?~ GOTO 34
  IF ~~ THEN REPLY ~К югу от вашей фермы, находится какая-то пещера. Вы что-нибудь о ней знаете?~ GOTO 36
  IF ~~ THEN REPLY ~У меня есть другие вопросы~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 50 // from: 1.1
  SAY ~Я Констанс О'Дил, самая хорошенькая девушка на много миль вокруг... И *единственная* девушка на много миль вокруг, но это другая сказка. Что я могу для тебя сделать?~
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 6
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~Ты всегда так прямолинейно выражаешься?~ GOTO 7
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

// --------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 51 // from:
  SAY ~Это мама вас впустила? Это же спальня, а не бар, вот что.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 52
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~~ THEN REPLY ~До свидания.~ GOTO 14
END

IF ~~ THEN BEGIN 52 // from: 1.1
  SAY ~Я Констанс О'Дил, самая хорошенькая девушка на много миль вокруг... И *единственная* девушка на много миль вокруг, но это другая сказка. Что я могу для тебя сделать?~
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~~ THEN REPLY ~До свидания.~ GOTO 14
END

// ---------------------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)GlobalLT("ErikQuest","GLOBAL",2)~ THEN BEGIN 53 // from:
  SAY ~Опять ты, да?~
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 2
  IF ~  Global("Failure","LOCALS",0)Global("Success","LOCALS",1)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 4
  IF ~  Global("Failure","LOCALS",1)Global("Success","LOCALS",0)Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу поговорить с вами о брошке Эрика.~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 11
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~До свидания.~ GOTO 14
END

