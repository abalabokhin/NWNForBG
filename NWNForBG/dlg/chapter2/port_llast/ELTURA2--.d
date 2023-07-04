// Порт-Лласт Лазарет Эльтура    Эльтура Сарптил      Эта дама с глазами, как льдинки, смотрит в небо задумчивым взглядом.

BEGIN ~ELTURA2~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  OR(2)Global("ElturaQuest","GLOBAL",0)Global("ElturaQuest","GLOBAL",6)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в лавку, как я ее называю. Я Эльтура Сарптил, и вряд ли вы найдете где-то еще такой прекрасный выбор товаров.~ [ELTUR055]
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть одна из книг, которые вы ищете.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть все книги, которые вы ищете.~ GOTO 15
  IF ~~ THEN REPLY ~Какие товары вы продаете здесь?~ GOTO 2
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ну что за великолепные новости. Пожалуйста, покажите мне, что у вас есть. О, все это так волнующе!~
  IF ~  PartyHasItem("NWBOOK37")~ THEN REPLY ~Предложить Том Огня.~ GOTO 6
  IF ~  PartyHasItem("NWBOOK34")~ THEN REPLY ~Предложить Том Льда.~ GOTO 7
  IF ~  PartyHasItem("NWBOOK32")~ THEN REPLY ~Предложить Том Жизни.~ GOTO 8
  IF ~  PartyHasItem("NWBOOK36")~ THEN REPLY ~Предложить Том Смерти.~ GOTO 9
  IF ~  PartyHasItem("NWBOOK38")~ THEN REPLY ~Предложить Том Резонанса.~ GOTO 10
  IF ~~ THEN REPLY ~Пока что я не буду расставаться с книгами.~ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Ну, я продаю лишь лучшие из магических принадлежностей. Воистину, вряд ли вам удастся найти более прекрасное собрание, чем у меня.~
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть одна из книг, которые вы ищете.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть все книги, которые вы ищете.~ GOTO 15
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Да, ничего не имею против. Вот, в таком случае не угодно ли взглянуть на то, что мы можем вам предложить?~
  IF ~~ THEN DO ~  StartStore("ELTURA",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Вы можете озвучить вопрос, и вполне возможно, я даже смогу на него ответить.~
  IF ~~ THEN REPLY ~Вы слышали что-нибудь о волках-оборотнях вблизи от Порт-Лласта?~ GOTO 12
  IF ~  Global("ElturaQuest","GLOBAL",0)~ THEN REPLY ~Я ищу работу. Ничего не можете подсказать?~ GOTO 13
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~Я ищу работу. Ничего не можете подсказать?~ GOTO 16
  IF ~~ THEN REPLY ~Вообще-то мне нужно узнать дорогу.~ GOTO 14
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~Можете мне напомнить об этой работе по обнаружению книг?~ GOTO 19
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY ~Я желаю вам приятно провести <DAYNIGHT>, <SIRMAAM>. Пожалуйста, заходите еще.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Ах, Том Огня! Это будет прекрасное дополнение к моей коллекции. Спасибо вам большое, а теперь поговорим о награде. Я полагаю, вы этим будете вполне довольны. Не так ли?~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK37")GiveItemCreate("ELTRITM1",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Ага, Том Льда. Еще одна прекрасная работа пополнит мое собрание. Спасибо вам за это. А теперь поговорим о награде. Я полагаю, вы этим будете вполне довольны. Не так ли?~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK34")GiveItemCreate("ELTRITM2",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~О, вот эту восхитительную книгу я с удовольствием просмотрю, полагаю. Вот это меня по-настоящему радует. А для вас.... Я полагаю, вы этим будете вполне довольны. Не так ли?~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK32")GiveItemCreate("ELTRITM3",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~Ах, какая исключительная книга. Я всегда думала, что смерть - это такая чудная, недопонятая вещь. Эта книга будет служить украшением моей коллекции. Я полагаю, вы этим будете вполне довольны наградой.~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK36")GiveItemCreate("ELTRITM4",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.5
  SAY ~Так-так, Том Резонанса. Хоть я и надеялась на лучшее, но была уверена, что никогда ее не увижу в своей библиотеке. Выражаю вам свое восхищение - и признательность. Я полагаю, вы будете вполне довольны наградой.~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK38")GiveItemCreate("ELTRITM5",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.6
  SAY ~Ну, это более чем справедливо. Тем не менее, если вы захотите получить что-нибудь за этот том, просто приходите ко мне.~
  IF ~~ THEN REPLY ~Какие товары вы продаете здесь?~ GOTO 2
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY ~Да, я кое-что слышала. Рыцарь - по-моему, сэр Каратис?.. он искал себе помощников, чтобы убить какого-то оборотня, кажется. Честно говоря, это могло быть несколько дней назад или еще раньше; я мало обращаю внимания на подобные вещи. Вы хотели что-нибудь еще?~
  IF ~  Global("ElturaQuest","GLOBAL",0)~ THEN REPLY ~Я ищу работу. Ничего не можете подсказать?~ GOTO 13
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~Я ищу работу. Ничего не можете подсказать?~ GOTO 16
  IF ~~ THEN REPLY ~Вообще-то мне нужно узнать дорогу.~ GOTO 14
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~Можете мне напомнить об этой работе по обнаружению книг?~ GOTO 19
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY ~Так-так-так. У меня и в самом деле есть для вас задание. Как вы насчет того, чтобы разыскать для меня несколько старых книг?~
  IF ~~ THEN REPLY ~Хорошо. Рассказывайте дальше.~ GOTO 17
  IF ~~ THEN REPLY ~Что в этих книгах? Что они делают?~ GOTO 18
  IF ~~ THEN REPLY ~Не интересует, но у меня есть еще вопрос.~ GOTO 4
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 4.4
  SAY ~Ну, я уверена, кто-нибудь здесь вам с этим обязательно поможет... Если только вы не хотите знать, где я храню кресло или что-либо подобное.~
  IF ~~ THEN REPLY ~Вы слышали что-нибудь о волках-оборотнях вблизи от Порт-Лласта?~ GOTO 12
  IF ~  Global("ElturaQuest","GLOBAL",0)~ THEN REPLY ~Я ищу работу. Ничего не можете подсказать?~ GOTO 13
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~Я ищу работу. Ничего не можете подсказать?~ GOTO 16
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~Можете мне напомнить об этой работе по обнаружению книг?~ GOTO 19
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY ~Ах, неужели, как это замечательно! Ах, какие исключительные книги. Эти книги будет служить украшением моей коллекции. Я полагаю, вы будете вполне довольны наградой.~
  IF ~~ THEN ~ DO ~SetGlobal("ElturaQuest","GLOBAL",6)TakePartyItem("NWBOOK37")
TakePartyItem("NWBOOK34")TakePartyItem("NWBOOK32")TakePartyItem("NWBOOK36")TakePartyItem("NWBOOK38")
GiveItemCreate("ELTRITM1",LastTalkedToBy(Myself))GiveItemCreate("ELTRITM2",LastTalkedToBy(Myself))GiveItemCreate("ELTRITM3",LastTalkedToBy(Myself))
GiveItemCreate("ELTRITM4",LastTalkedToBy(Myself))GiveItemCreate("ELTRITM5",LastTalkedToBy(Myself))AddexperienceParty(200000)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY ~Я могла бы поклясться, что уже предлагала вам работу, и вы даже согласились. Вы хотите освежить память?~
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть одна из книг, которые вы ищете.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть все книги, которые вы ищете.~ GOTO 15
  IF ~~ THEN REPLY ~Да, я думаю, это поможет.~ GOTO 19
  IF ~~ THEN REPLY ~Что в этих книгах? Что они делают?~ GOTO 18
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY ~Пять Томов Древнего Имаскара находятся где-то в этом районе в разрозненном виде. Я хочу, чтобы вы нашли эти тома и вернули их мне. Если вы сможете это сделать, я дам вам гораздо больше, чем стоят книги. Уж в этом вы можете быть уверены. Пять книг, которые я прошу вас найти, это тома Резонанса, Жизни, Смерти, Льда и Огня.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 23
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY ~Самое простое и краткое объяснение, которое я могу придумать - эти тома похожи на кулинарные книги. В них есть рецепты создания магических предметов. Я могу предложить достойную награду за эти книги.~
  IF ~~ THEN REPLY ~Хорошо. Рассказывайте дальше.~ GOTO 17
  IF ~~ THEN REPLY ~Не интересует, но у меня есть еще вопрос.~ GOTO 4
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY ~Пять Томов Древнего Имаскара находятся где-то в этом районе в разрозненном виде. Я хочу, чтобы вы нашли эти тома и вернули их мне. Если вы сможете это сделать, я дам вам гораздо больше, чем стоят книги. Уж в этом вы можете быть уверены. Пять книг, которые я прошу вас найти, это тома Резонанса, Жизни, Смерти, Льда и Огня.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 28
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 17.6
  SAY ~Очень хорошо. Буду ждать с нетерпением.~
  IF ~~ THEN DO ~SetGlobal("ElturaQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY ~Определить местонахождение Тома Огня для меня сложновато. Мой магический кристалл показывает, что он где-то далеко на юге, но где конкретно, я не вижу. Разумно было бы предположить, что этот том где-то в Чарвуде. Хоть я и не знаю, почему, но это место сопротивляется моему ясновидению. Будь книга где-нибудь еще, думаю, я смогла бы ее обнаружить.~
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 23
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY ~Неподалеку отсюда к югу вы найдете башню. В этой башне и лежит Том Льда. Конечно же, владелец башни - могущественный волшебник в своем праве, так что не стоит действовать опрометчиво.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 23
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 17.3
  SAY ~Этот том находился во владении Брата Тораса, члена Братства Таинств. Я собиралась купить у него книгу, но не успела, поскольку он скончался. Когда я услышала о его смерти, я поискала вокруг, но среди его личных вещей тома не было. Единственное место, где я еще не смотрела, это его гробница; у меня просто не было времени.~
  IF ~~ THEN REPLY ~Что это за Братство Таинств?~ GOTO 31
  IF ~~ THEN REPLY ~Где его гробница?~ GOTO 32
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 17.4
  SAY ~Как и с Томом Огня, мое ясновидение говорит мне, что Том Смерти ушел по долгой, темной дороге в Чарвуд. Если бы только я могла видеть больше, но этот район для меня непроницаем.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 23
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 17.5
  SAY ~Мое ясновидение показывает, что вначале эта книга попала на восток, в лес Невервинтер. Возможно, если вы отправитесь в лес Невервинтер, пара-другая зацепок у вас появится.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 23
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 19.1
  SAY ~Определить местонахождение Тома Огня для меня сложновато. Мой магический кристалл показывает, что он где-то далеко на юге, но где конкретно, я не вижу. Разумно было бы предположить, что этот том где-то в Чарвуде. Хоть я и не знаю, почему, но это место сопротивляется моему ясновидению. Будь книга где-нибудь еще, думаю, я смогла бы ее обнаружить.~
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 28
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 19.2
  SAY ~Неподалеку отсюда к югу вы найдете башню. В этой башне и лежит Том Льда. Конечно же, владелец башни - могущественный волшебник в своем праве, так что не стоит действовать опрометчиво.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 28
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 19.3
  SAY ~Этот том находился во владении Брата Тораса, члена Братства Таинств. Я собиралась купить у него книгу, но не успела, поскольку он скончался. Когда я услышала о его смерти, я поискала вокруг, но среди его личных вещей тома не было. Единственное место, где я еще не смотрела, это его гробница; у меня просто не было времени.~
  IF ~~ THEN REPLY ~Что это за Братство Таинств?~ GOTO 33
  IF ~~ THEN REPLY ~Где его гробница?~ GOTO 34
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 29 // from: 19.4
  SAY ~Как и с Томом Огня, мое ясновидение говорит мне, что Том Смерти ушел по долгой, темной дороге в Чарвуд. Если бы только я могла видеть больше, но этот район для меня непроницаем.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 28
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 19.5
  SAY ~Мое ясновидение показывает, что вначале эта книга попала на восток, в лес Невервинтер. Возможно, если вы отправитесь в лес Невервинтер, пара-другая зацепок у вас появится.~
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Мне нужно больше сведений о Томе Жизни.~ GOTO 28
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY ~Ну будет вам, вы, конечно, шутите. Вы не знаете о Братстве Таинств? Оно расположено в Лускане и является истинным правительством этого города. Братья печально известны своей безжалостной тактикой, и единственное, что удерживает их от широкой экспансии, это постоянные драки и ссоры между собой.~
  IF ~~ THEN REPLY ~Где его гробница?~ GOTO 32
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 23.2
  SAY ~Поскольку он был богат и могуществен, я полагаю, у него есть собственный мавзолей за городскими стенами Лускана. Только будьте осторожны. Брат Торас был сильным волшебником и мог установить смертельные ловушки или стражу для защиты своей гробницы от грабителей.~
  IF ~~ THEN REPLY ~Что это за Братство Таинств?~ GOTO 31
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 21
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 22
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 24
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 25
  IF ~~ THEN REPLY ~Я принесу вам эти книги.~ GOTO 20
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY ~Ну будет вам, вы, конечно, шутите. Вы не знаете о Братстве Таинств? Оно расположено в Лускане и является истинным правительством этого города. Братья печально известны своей безжалостной тактикой, и единственное, что удерживает их от широкой экспансии, это постоянные драки и ссоры между собой.~
  IF ~~ THEN REPLY ~Где его гробница?~ GOTO 34
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 28.2
  SAY ~Поскольку он был богат и могуществен, я полагаю, у него есть собственный мавзолей за городскими стенами Лускана. Только будьте осторожны. Брат Торас был сильным волшебником и мог установить смертельные ловушки или стражу для защиты своей гробницы от грабителей.~
  IF ~~ THEN REPLY ~Что это за Братство Таинств?~ GOTO 33
  IF ~~ THEN REPLY ~Где может быть Том Огня?~ GOTO 26
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Льда?~ GOTO 27
  IF ~~ THEN REPLY ~Где мне найти Том Смерти?~ GOTO 29
  IF ~~ THEN REPLY ~Вы знаете, где находится Том Резонанса?~ GOTO 30
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN BEGIN 35 // from:
  SAY ~Ну, здравствуйте. Вы принесли мне волнующие новости, или это просто визит вежливости? В любом случае, я рада видеть вас снова.~ [ELTUR054]
  IF ~~ THEN REPLY ~Что за волнующие новости я могу принести?~ GOTO 36
  IF ~  OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть одна из книг, которые вы ищете.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть все книги, которые вы ищете.~ GOTO 15
  IF ~~ THEN REPLY ~Вы можете напомнить мне детали этой работы?~ GOTO 19
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~Ах, о книгах, конечно! Вы что-нибудь нашли? Вы же помните, что согласились помочь мне, верно? Я еще, помнится, предложила вам награду за их возвращение.~
  IF ~  OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть одна из книг, которые вы ищете.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~У меня есть все книги, которые вы ищете.~ GOTO 15
  IF ~~ THEN REPLY ~Вы можете напомнить мне детали этой работы?~ GOTO 19
  IF ~~ THEN REPLY ~Могу я посмотреть ваши товары?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

