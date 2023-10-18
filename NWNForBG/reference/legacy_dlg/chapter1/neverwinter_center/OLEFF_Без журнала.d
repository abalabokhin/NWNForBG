// Центр Невервинтера Апсида (Храм)  Олефф - просит собрать артефакты. Его преподобие Судья Олефф Ускар выглядит очень суровым человеком. Впрочем, страшные последние события сделали его, как и многих других чиновников в Невервинтере усталым и неуверенным.

BEGIN ~OLEFF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Справедливые приветствуют тебя. Добро пожаловать в Дом Тира. Я Преподобный Судья Олефф Ускар, на службе Искалеченного Бога~ [OLEFF052]
  IF ~  IsGabber(Player1)~ THEN REPLY ~Здравствуйте, Олефф. Я <CHARNAME>. Не ответите ли на мои вопросы?~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Здравствуйте, Олефф. Не ответите ли на мои вопросы?~ GOTO 1
  IF ~~ THEN REPLY ~Довольно болтовни. У меня к вам вопросы.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Эта тирранская обитель приветствует ваше вежливое обращение. Спрашивайте что угодно, я постараюсь ответить.~
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~Кажется, мне удалось найти артефакт Тира. Это тебя интересует?~ GOTO 5
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~~ THEN REPLY ~Какова ваша должность?~ GOTO 7
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY ~О нашей вере мы рассказываем лишь верующим. Я не собираюсь выставлять их вам на посмешище в непристойном тоне.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~~ THEN REPLY ~Какова ваша должность?~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Тир велит мне делать благие дела, но следите за вашим тоном. В этом месте не терпят неуважения.~
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~Кажется, мне удалось найти артефакт Тира. Это тебя интересует?~ GOTO 5
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~~ THEN REPLY ~Какова ваша должность?~ GOTO 7
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Тир направит тебя к справедливости.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Клянусь Справедливым! Если тебе удалось найти артефакт веры Тира, мне нужно немедленно взять тебя на службу! Возьми это письмо. В нем сказано, что ты служишь мне. Могилу на востоке полуострова охраняет Брайли, но такое мне и в голову не могло прийти. Мы давно уже ищем захоронение основателя Невервинтера Хэлуэта Невера и его спутников. Мы надеялись, что такая находка сможет поднять дух нашего народа в это сложное время. Естественно, того, кто поможет нам, ждет награда.~
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~Рассказать, как забрали благословленное перо Якова у злобного Джиллса.~ GOTO 10
  IF ~~ THEN REPLY ~Извини, это была шутка.~ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Что? Дайте-ка взглянуть. Ах, да, конечно. Прошу вас, говорите потише, а я дам вам то, что нужно.~
  IF ~  OR(2)StateCheck(LastTalkedToBy(Myself),STATE_DISEASED)StateCheck(Player1,STATE_DISEASED)~ THEN GOTO 12
  IF ~  !StateCheck(LastTalkedToBy(Myself),STATE_DISEASED)!StateCheck(Player1,STATE_DISEASED)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Мы помогаем больным чумой. А раньше мы занимались поисками артефактов, которые сейчас могут пригодиться как нельзя больше.~
  IF ~  Class(Player1,CLERIC_ALL)~ THEN GOTO 14
  IF ~  Class(Player1,PALADIN)~ THEN GOTO 15
  IF ~  Class(Player1,MONK)~ THEN GOTO 16
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~Есть много форм поклонения Тиру. Он Слепой Владыка, Справедливый. Он страж и господин справедливости. Священники обязаны открывать правду, наказывать виновных, исправлять неправое и всегда быть честными и справедливыми. Мы бываем судьями, присяжными и, если потребуется, палачами. Благосклонная сила и неусыпная бдительность ведут к справедливости.~
  IF ~~ THEN REPLY ~Некоторые сочтут это грубым.~ GOTO 18
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~~ THEN REPLY ~Какова ваша должность?~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY ~Храмовые услуги доступны, благодаря Арибет. Она решила помочь нам потому... ну, потому что мы тоже потеряли многих из-за чумы~
  IF ~~ THEN DO ~StartStore("Oleff",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~Что?! Он ограбил мертвых, когда они испустили последний вздох? Нет ничего более отвратительного! Какое неуважение! Это не совсем артефакт, но предмет довольно ценный. Только истинный почитатель Тира может пойти на такой риск. Возьмите 1000 золотых. Это самое меньшее, что мы можем дать. Мы ценим ваши усилия. Вы пролили свет на жизнь Хэлуэта Невера, но это еще не все.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~Нечего зубоскалить. Последователи Тира не потерпят таких насмешек.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~О боги...  кажется, тебе удалось подхватить какую-то болезнь. Тебе повезло, что это, судя по всему, не чума, однако я не могу подтвердить твой статус здорового существа, пока ты от нее не избавишься. Советую тебе навестить Арибет. Она сможет излечить твой недуг.~
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Посмотрим... Хммм... Да, вы и впрямь не заражены. Вот ваш документ. Офала не будет иметь ничего против вашего... присутствия.~
  IF ~~ THEN REPLY ~Почему вы возитесь с этим мерзким делом?~ GOTO 23
  IF ~~ THEN REPLY ~До свидания.~ DO ~TakePartyItem("OphalLet")DestroyItem("OphalLet")GiveItemCreate("OleffLet",LastTalkedToBy,1,0,0)~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~Вы ведь и сами жрец, так что вполне можете оценить все значение этого. Я неправ? Обычно я легко узнаю лиц с благочестивыми намерениями.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 15 // from: 7.2
  SAY ~Разумеется, вы поймете, как это важно. У вас походка паладина, это именно та степень целеустремленности, что нам нужна.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 16 // from: 7.3
  SAY ~Вы монах, правда? Я не знаю, какой вы веры, но думаю, вы поймете, как важно то, чего я прошу.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 7.4
  SAY ~Это дело заинтересовало бы лишь духовного человека, а, на мой взгляд, вы совершенно не того сорта персона. Не обижайтесь.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,WIS)~ THEN REPLY ~Может, я все же смогу помочь?~ GOTO 27
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,WIS)~ THEN REPLY ~Может, я все же смогу помочь?~ GOTO 28
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY ~Закон непоколебим, но истинная справедливость при иных обстоятельствах может и сжалиться. В трудные времена это труднее всего помнить.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~~ THEN REPLY ~Какова ваша должность?~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY ~Есть еще артефакты, свидетели его путешествий. За несколько недель до эпидемии мы нашли могилу Миаслазнии Фэйрблэйд. Она много путешествовала с Хэлуэтом Невером, основателем Невервинтера! Это замечательное открытие поможет быстрее отыскать могилу основателя. А вот это уже было бы поистине великое открытие! Чума несомненно все усложнила. Это очень печально, потому что раскопки могил могут помочь как-то исправить ситуацию в городе.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~Люди напуганы, лекарство так и не найдено, у них почти не осталось надежды. Такая находка укрепила бы их дух. Есть шансы, что рядом с останками Хэлуэта Невера можно найти мощные артефакты. Но лично я особо на это не надеюсь.~
  IF ~~ THEN REPLY ~Я помогу вам отыскать могилы.~ GOTO 21
  IF ~~ THEN REPLY ~Мне неинтересно вам помогать.~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~Я очень рад, что вы предложили свою помощь. Вы не могли появиться в более подходящее время. Вот, возьмите письмо с моей печатью. Это значит, что вы действуете по моему приказу. Отнесите это Брайли на полуостров, и он поможет вам. Он охраняет уже найденную могилу. Это в подвале одного из домов на востоке района полуострова. Возвращайтесь, если найдете что-нибудь, а уж я в долгу не останусь.~
  IF ~~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",1)TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveItemCreate("OleffL1",LastTalkedToBy,1,0,0)GiveGoldForce(1000)
AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY ~Печально, и я понимаю ваше нежелание. Если все же передумаете и решите помочь, поговорите со мной снова.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 23// from: 13.1
  SAY ~Что? Но... Послушайте, у Офалы есть очень влиятельные друзья. Маска Лунного Камня будет работать и без меня. Я всего лишь оказываю услуги. ~
  IF ~  Global("Robbed","LOCALS",0)~ THEN REPLY ~Золото. Мне надо золото, чтобы держать рот на замке.~ GOTO 24
  IF ~~ THEN REPLY ~До свидания.~ GOTO 25
END

IF ~~ THEN BEGIN 24// from: 23.1
  SAY ~И все? Только золото? Послушайте, вы! Я заплачу, но больше не приму никаких претензий! Понятно?! Так и знал, что мне это выйдет боком. Вот. 500 золотых. И больше не слова об этом! Ни слова!~
  IF ~~ THEN DO ~TakePartyItem("OphalLet")DestroyItem("OphalLet")GiveItemCreate("OleffLet",LastTalkedToBy,1,0,0)GiveGoldForce(500)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25// from: 23.2
  SAY ~Тир направит тебя к справедливости.~
  IF ~~ THEN DO ~TakePartyItem("OphalLet")DestroyItem("OphalLet")GiveItemCreate("OleffLet",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.1 15.1 16.1
  SAY ~За несколько недель до эпидемии мы нашли могилу Миаслазнии Фэйрблэйд. Она много путешествовала с Хэлуэтом Невером, основателем Невервинтера! Это замечательное открытие поможет быстрее отыскать могилу основателя. А вот это уже было бы поистине великое открытие!~
  IF ~~ THEN REPLY ~Чума несомненно все усложнила.~ GOTO 29
  IF ~~ THEN REPLY ~Все ваши усилия пропали даром, когда началась чума.~ GOTO 30
  IF ~~ THEN REPLY ~Пустая трата времени, даже не учитывая эпидемию.~ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY ~Возможно, я сужу слишком быстро. У вас честное лицо. Может, вы поймете, почему это так важно.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 17.2
  SAY ~Нет, я ценю ваше предложение, но пусть лучше этим займется человек, более сведущий в нуждах церкви.~
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~Каковы догматы тирранского вероучения?~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужны услуги храма. Что вы можете предложить?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY ~Да именно так. Это очень печально, потому что раскопки могил могут помочь как-то исправить ситуацию в городе.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY ~Вопреки вашему непросвещенному мнению, есть много веских причин раскапывать эти могилы, особенно теперь, когда в городе свирепствует чума.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.1
  SAY ~Люди напуганы, лекарство так и не найдено, у них почти не осталось надежды. Такая находка укрепила бы их дух. Есть шансы, что рядом с останками Хэлуэта Невера можно найти мощные артефакты. Но лично я особо на это не надеюсь.~
  IF ~~ THEN REPLY ~Что вы знаете о Хэлуэте Невере?~ GOTO 32
  IF ~~ THEN REPLY ~Я помогу вам отыскать могилы.~ GOTO 33
  IF ~~ THEN REPLY ~Мне неинтересно вам помогать.~ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY ~Он основал Невервинтер. Но о нем мало что известно. Он стал этакой легендарной личностью. Говорят, он укрепил еще совсем слабый Невервинтер, направив яростные орды варваров Иллуска в Лускан. С тех пор у нас непростые отношения с этим городом. Городу пошло бы на пользу, если бы стали известны подробности его жизни. Людям понравится, если в истории будет пример победы над трудностями.~
  IF ~~ THEN REPLY ~Я помогу вам отыскать могилы.~ GOTO 33
  IF ~~ THEN REPLY ~Мне неинтересно вам помогать.~ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY ~Я очень рад, что вы предложили свою помощь. Вы не могли появиться в более подходящее время. Вот, возьмите письмо с моей печатью. Это значит, что вы действуете по моему приказу. Отнесите это Брайли на полуостров, и он поможет вам. Он охраняет уже найденную могилу. Это в подвале одного из домов на востоке района полуострова. Возвращайтесь, если найдете что-нибудь, а уж я в долгу не останусь.~
  IF ~~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",1)GiveItemCreate("OleffL1",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.3
  SAY ~Печально, и я понимаю ваше нежелание. Если все же передумаете и решите помочь, поговорите со мной снова.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 35 // from:
  SAY ~Приветствую еще раз, <CHARNAME>. Хорошо, что вы вернулись в Дом Тира.~ [OLEFF053]
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("OleffQuestBreak","GLOBAL",3)~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",9)~ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~Надеюсь, поиски могилы Хэлуэта Невера продвигаются? Это укрепит дух горожан.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~  OR(4)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")PartyHasItem("Nwmisc18")~ THEN REPLY ~У меня есть артефакт, взятый в одной из могил.~ GOTO 38
  IF ~~ THEN REPLY ~Расскажите еще раз, что нужно делать.~ GOTO 39
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY ~Однако я хочу извиниться, если мое настроение покажется тебе слишком мрачным. До меня дошли новости, что... последователи Талоны получили в свое распоряжение артефакты из гробниц, которые мы искали. Больше артефактов ты не найдешь... они попали в руки зла. И вообразить не могу, как это могло произойти. Само собой разумеется, твоя помощь больше не требуется. Мне очень жаль...~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY ~Правда? Великолепно. Итак, расскажите, что же вы нашли?~
  IF ~  PartyHasItem("Nwmisc15")~ THEN REPLY ~Рассказать о том, как нашли Древние хроники Невера.~ GOTO 40
  IF ~  PartyHasItem("Nwmisc16")~ THEN REPLY ~Рассказать, как нашли ржавые доспехи Хэлуэта Невера.~ GOTO 41
  IF ~  PartyHasItem("Nwmisc17")~ THEN REPLY ~Рассказать, как был найден святой символ Тира.~ GOTO 42
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~Рассказать, как отобрали благословленное перо Якова у злобного Джиллса.~ GOTO 43
  IF ~~ THEN REPLY ~Извини, это была шутка.~ GOTO 11
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY ~За несколько недель до эпидемии мы нашли могилу Миаслазнии Фэйрблэйд. Она много путешествовала с Хэлуэтом Невером, основателем Невервинтера! Это замечательное открытие поможет быстрее отыскать могилу основателя. А вот это уже было бы поистине великое открытие! Чума несомненно все усложнила. Это очень печально, потому что раскопки могил могут помочь как-то исправить ситуацию в городе.~
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY ~Прекрасная находка! Невервинтеру будет полезно узнать больше о своих корнях. Возможно, такая чума уже была когда-то.~
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 45
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","LOCALS",2)~ THEN GOTO 46
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","LOCALS",2)~ THEN GOTO 47
END

IF ~~ THEN BEGIN 41 // from: 38.2
  SAY ~Его собственный доспех! И его могила! Кто бы мог подумать, что она там, внизу, среди других? Это говорит о его желании стать известным в качестве жителя Невервинтера. Даже в своем величии он не забывал о доме.~
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 49
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","LOCALS",2)~ THEN GOTO 50
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","LOCALS",2)~ THEN GOTO 51
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY ~Вот уже долгое время мы не видели ничего подобного. Это по-новому освещает мудрость Хэлуэта Невера и его соратников.~
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 52
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","LOCALS",2)~ THEN GOTO 53
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","LOCALS",2)~ THEN GOTO 54
END

IF ~~ THEN BEGIN 43 // from: 38.4
  SAY ~Что?! Он ограбил мертвых, когда они испустили последний вздох? Нет ничего более отвратительного! Какое неуважение! Это не совсем артефакт, но предмет довольно ценный. Только истинный почитатель Тира может пойти на такой риск. Возьмите 1000 золотых. Это самое меньшее, что мы можем дать.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY ~Люди напуганы, лекарство так и не найдено, у них почти не осталось надежды. Такая находка укрепила бы их дух. Есть шансы, что рядом с останками Хэлуэта Невера можно найти мощные артефакты. Но лично я особо на это не надеюсь.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~  OR(4)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")PartyHasItem("Nwmisc18")~ THEN REPLY ~У меня есть артефакт, взятый в одной из могил.~ GOTO 38
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 45 // from: 40.1
  SAY ~Как я и обещал, вот ваша награда. Возьмите эти 1000 золотых. Ну, хотелось бы дать больше, но до меня дошли новости, которые меня обеспокоили. Поиском захоронений занимались и другие, и... некоторые из вещей, что мы искали, попали в злые руки. Я не понимаю, как это могло произойти, но представители Талоны начали насмехаться над нами самым бессовестным образом... тыкая нам в лицо тем, что они у нас украли.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 46 // from: 40.2
  SAY ~Это превосходит все наши ожидания! Три великих артефакта, это лучшее из наследия Невера! Мы будем бережно хранить эти вещи и могилы, в которых они были найдены. Возьмите этот амулет и золото, и идите с благословлением Тира.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")IncrementGlobal("MyArtefact","LOCALS",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("OleffAmu",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 40.3
  SAY ~Мы ценим ваши усилия. Вы пролили свет на жизнь Хэлуэта Невера, но это еще не все. Есть еще артефакты, свидетели его путешествий. Возвращайтесь, когда отыщете их. Я хорошо вас награжу, а когда найдете все, получите еще.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY ~Ты поймешь меня, если я откажу в дальнейшем вознаграждении, не так ли? Нам понадобятся все ресурсы, чтобы постараться выяснить, что же случилось во время этого поиска.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 41.1
  SAY ~Как я и обещал, вот ваша награда. Возьмите эти 1000 золотых. Ну, хотелось бы дать больше, но до меня дошли новости, которые меня обеспокоили. Поиском захоронений занимались и другие, и... некоторые из вещей, что мы искали, попали в злые руки. Я не понимаю, как это могло произойти, но представители Талоны начали насмехаться над нами самым бессовестным образом... тыкая нам в лицо тем, что они у нас украли.~
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 50 // from: 41.2
  SAY ~Это превосходит все наши ожидания! Три великих артефакта, это лучшее из наследия Невера! Мы будем бережно хранить эти вещи и могилы, в которых они были найдены. Возьмите этот амулет и золото, и идите с благословлением Тира.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")IncrementGlobal("MyArtefact","LOCALS",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("OleffAmu",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 41.3
  SAY ~Вы хорошо потрудились, и даже отыскали последний приют Хэлуэта Невера, но мы думаем, это еще не все. Есть еще артефакты, свидетели его путешествий. Возвращайтесь, когда отыщете их. Я хорошо вас награжу, а когда найдете все, получите еще.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.1
  SAY ~Как я и обещал, вот ваша награда. Возьмите эти 1000 золотых. Ну, хотелось бы дать больше, но до меня дошли новости, которые меня обеспокоили. Поиском захоронений занимались и другие, и... некоторые из вещей, что мы искали, попали в злые руки. Я не понимаю, как это могло произойти, но представители Талоны начали насмехаться над нами самым бессовестным образом... тыкая нам в лицо тем, что они у нас украли.~
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 42.2
  SAY ~Это превосходит все наши ожидания! Три великих артефакта, это лучшее из наследия Невера! Мы будем бережно хранить эти вещи и могилы, в которых они были найдены. Возьмите этот амулет и золото, и идите с благословлением Тира.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")IncrementGlobal("MyArtefact","LOCALS",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("OleffAmu",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 42.3
  SAY ~Мы ценим ваши усилия. Вы пролили свет на жизнь Хэлуэта Невера, но это еще не все. Есть еще артефакты, свидетели его путешествий. Возвращайтесь, когда отыщете их. Я хорошо вас награжу, а когда найдете все, получите еще.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.1
  SAY ~Ты поймешь меня, если я откажу в дальнейшем вознаграждении, не так ли? Нам понадобятся все ресурсы, чтобы постараться выяснить, что же случилось во время этого поиска.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.1
  SAY ~Ты поймешь меня, если я откажу в дальнейшем вознаграждении, не так ли? Нам понадобятся все ресурсы, чтобы постараться выяснить, что же случилось во время этого поиска.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)!IsGabber(Player1)~ THEN BEGIN 57 // from:
  SAY ~Здравствуйте. Вы с <CHARNAME>? Интересно, как идут поиски могилы Хэлуэта Невера.~ [OLEFF054]
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("OleffQuestBreak","GLOBAL",3)~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",9)~ GOTO 37
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",9)~ THEN BEGIN 58 // from:
  SAY ~Мне отвратителен весь род людской, и я не буду вам помогать. Можете отнести это на счет моего дурного настроения. Какой ужас... представь себе, наши священные реликвии, что мы искали... в руках зла! Мы пытались найти древние захоронения... но теперь в этом мало смысла.~ [OLEFF051]
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY ~Прости меня. Ты все еще пытаешься найти источник чумы. Ты заслуживаешь благодарности хотя бы за это.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~Рассказать, как забрали благословленное перо Якова у злобного Джиллса.~ GOTO 60
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 60 // from: 59.2
  SAY ~Я рад возвращению этого предмета, но это лишь лучик света среди унылого дня. Он на самом деле почти не улучшил моего настроения. Вот. Возьмите немного золота. Похоже, некоторые люди только и ищут способ обогатиться.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(10000)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",2)~ THEN BEGIN 61 // from:
  SAY ~Чума свирепствует в сердце Невервинтера, но нельзя забывать об истории. Мы будем сражаться, и да пребудет с нами гнев Хэлуэта Невера! Благодарю за вашу помощь, она просто неоценима.~ [OLEFF050]
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~У меня к вам письмо от Офалы.~ GOTO 6
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~Рассказать, как забрали благословленное перо Якова у злобного Джиллса.~ GOTO 62
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 62 // from: 61.2
  SAY ~Это чудовище грабило павших воинов, когда они отдавал душу небесам? Отвратительно! Вы оказали всем большую услугу, призвав его к ответу! Вы истинный друг Тира, и мы этого не забудем. Вот, еще 1000 золотых. Это самое меньшее, что мы можем дать. К сожалению, больше мы не можем сделать почти ничего. Надеюсь, этого достаточно. Благодарю вас. Спасибо.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

