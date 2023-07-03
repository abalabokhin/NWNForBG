// Центр Невервинтера Маска Лунного Камня   Джиллс   Служитель Талоса, просит принести артефакты Невера. Этот человек тщательно осматривает комнату, обращая внимание на всех присутствующих. Его холодные манеры разительно отличают его от остальных посетителей.

BEGIN ~GILLES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)Global("GillesQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~От тебя так и несет Тиром. Я слышал, ты на побегушках у Олеффа? Не надоело? Интересуешься работой?~
  IF ~~ THEN REPLY ~Я выслушаю вас. Что вы хотите сказать?~ GOTO 1
  IF ~~ THEN REPLY ~Говори, но если ты зря тратишь мое время, ты пожалеешь.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ох, как вежливо. Ха! Я манеры ни во что не ставлю. Можете ли вы убивать и воровать? Вот, что для меня важно.~
  IF ~~ THEN REPLY ~Я делаю то, что нужно. Что вы предлагаете?~ GOTO 4
  IF ~~ THEN REPLY ~Я не делаю ничего плохого!~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ах, какой грубый ответ! Неужели вы можете быть мне полезны? Вы умеете убивать и воровать? Или вы один из недовольных прислужников Тира? Посмотрим.~
  IF ~~ THEN REPLY ~Я делаю то, что нужно. Что вы предлагаете?~ GOTO 4
  IF ~~ THEN REPLY ~Я не делаю ничего плохого!~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Уходи. Жалкий прислужник.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Эта "справедливость" Тира захватила весь город. Талона хотела бы... Чтобы что-то произошло. Что-то, что подорвало бы тирранскую веру. Меня зовут Джиллс. Мне нужен тот, кто без зазрения совести отнимет у тирранцев то, что они хотят получить. Вы меня понимаете? Вы получили от Олеффа письмо с просьбой найти какие-то могилы, а в них - артефакты. Этот болван хочет укрепить дух людей.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Уверен, старомодная добродетель позволяет тебе спать спокойно. Возвращайся, когда устанете быть на побегушках у Тира и Олеффа, <GIRLBOY>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Эти реликвии Хэлуэта Невера могли бы пригодиться церкви Талоны, возможно, их можно подчинить ее воле. А если нет, то их надо уничтожить.~
  IF ~~ THEN REPLY ~Вы хотите, чтобы я принес их вам, а не Олеффу?~ GOTO 7
  IF ~~ THEN REPLY ~Даже во время эпидемии вы все интригуете. Как это мелочно.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Олефф и его приспешники не могут гарантировать, что эти предметы изгонят чуму. Известно лишь, что они могут оказаться очень мощными. Это богатство не должно попасть им в руки. Принесите все мне, а не Олеффу, от меня вы получите гораздо больше денег.~
  IF ~~ THEN REPLY ~С чего вы взяли, что я работаю на Олеффа?~ GOTO 9
  IF ~~ THEN REPLY ~О чем гласит вероучение Талоны?~ GOTO 10
  IF ~~ THEN REPLY ~Я принесу артефакты вам, а не Олеффу.~ GOTO 11
  IF ~~ THEN REPLY ~Мне это неинтересно.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY ~Талона становится сильнее, когда люди ослаблены болезнью. Это ее владения, неважно, она ли вызвала чуму или нет.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~У меня есть глаза по всему городу. Говорят, у вас есть письмо от Олеффа, с которым его тирранцы позволят вам войти. Меня интересует, беретесь ли вы за это ради веры, или ради золота. Если ради золота, то я дам больше. Проще некуда. Кроме того, я был на раскопках на полуострове. Им нужны такие, как вы. Их собратья мрут, как мухи.~
  IF ~~ THEN REPLY ~Ты был в могиле, и не помог умирающим?~ GOTO 13
  IF ~~ THEN REPLY ~Я принесу артефакты вам, а не Олеффу.~ GOTO 11
  IF ~~ THEN REPLY ~Мне это неинтересно.~ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY ~Ядовитая Госпожа наслаждается болезнью и всем, что разлагает тело. Она становится сильнее, когда все остальные слабеют. Так говорят... Чума - не ее рук дело, хотя мы очень рады получить дань тех, кто желает угодить Талоне. Талона - это равновесие жизни и смерти, но смерть сильнее. Ее нужно почитать и бояться, иначе она убьет вас, когда вы будете слабее всего.~
  IF ~~ THEN REPLY ~С чего вы взяли, что я работаю на Олеффа?~ GOTO 9
  IF ~~ THEN REPLY ~Я принесу артефакты вам, а не Олеффу.~ GOTO 11
  IF ~~ THEN REPLY ~Мне это неинтересно.~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~Ну конечно! Вы же понимаете, насколько слабы эти глупцы, и они совершенно вас не ценят. А вот я вас ценю. Принесите мне их "святые артефакты". Их испортят и уничтожат. Ваши злобные намерения придутся как нельзя кстати.~
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY ~А-га! Но мои слова задели вас за живое! Вы меня еще вспомните, каждый раз, когда Олефф вам недоплатит. Я подожду здесь. Решите, чего вы стоите, а я подожду.~
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY ~Я прикарманил кое-какие их вещи. Взял прекрасное перо у одного из них. Кажется, его звали Джейкобом. Ему оно больше не потребуется. Думаю, он умер. Он никак не отреагировал, когда я перевернул его, чтобы обчистить карманы.~
  IF ~~ THEN REPLY ~Это омерзительно! Отдай мне перо Джейкоба, СЕЙЧАС ЖЕ!~ GOTO 14
  IF ~~ THEN REPLY ~Я принесу артефакты вам, а не Олеффу.~ GOTO 11
  IF ~~ THEN REPLY ~Мне это неинтересно.~ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~Только попробуй, кретин, можешь больше не соваться ко мне! Оставайся в их тени, или переходи ко мне! Предлагаю в первый и последний раз! Выбирай!~
  IF ~~ THEN REPLY ~Отдай мне перо, злобный ублюдок!~ GOTO 15
  IF ~~ THEN REPLY ~Я принесу артефакты вам, а не Олеффу.~ GOTO 11
  IF ~~ THEN REPLY ~Мне это неинтересно.~ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY ~Хм! Подхалим! Лакей! Засуньте свою безделушку, свою мораль и слепую добродетель туда, куда не проникает свет Тира!~
  IF ~~ THEN DO ~SetGlobal("GillesQuest","GLOBAL",9)GiveItem("Nwmisc18",LastTalkedToBy(Myself))EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)Global("GillesQuest","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY ~Идите своей дорогой, вам нечего спросить, а мне незачем отвечать.~
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("OleffQuest","GLOBAL",0)!Global("OleffQuest","GLOBAL",2)Global("GillesQuest","GLOBAL",1)~ THEN BEGIN 17 // from:
  SAY ~Здравствуйте еще раз. Вам что-нибудь требуется? Надеюсь, вы не станете привлекать ко мне внимание без причины. Вы нашли артефакты Хэлуэта Невера? Последователям Талоны они очень нужны. Тир не получит свои побрякушки.~
  IF ~  OR(3)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")~ THEN REPLY ~У меня есть артефакт, взятый в одной из могил.~ GOTO 18
  IF ~~ THEN REPLY ~Расскажите еще раз, что нужно делать.~ GOTO 19
  IF ~~ THEN REPLY ~Ладно, ладно, в другой раз загляну.~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~Ну так давай сюда, тупица! Я не за болтовню тебе плачу!~
  IF ~  PartyHasItem("Nwmisc15")~ THEN REPLY ~Рассказать о том, как нашли Древние хроники Невера.~ GOTO 22
  IF ~  PartyHasItem("Nwmisc16")~ THEN REPLY ~Рассказать, как нашли ржавые доспехи Хэлуэта Невера.~ GOTO 23
  IF ~  PartyHasItem("Nwmisc17")~ THEN REPLY ~Рассказать, как был найден святой символ Тира.~ GOTO 24
  IF ~~ THEN REPLY ~Извини, это была шутка.~ GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY ~Вы получили от Олеффа письмо с просьбой найти какие-то могилы, а в них - артефакты. Этот болван хочет укрепить дух людей. Эти реликвии Хэлуэта Невера могли бы пригодиться церкви Талоны, возможно, их можно подчинить ее воле. А если нет, то их надо уничтожить. Олефф и его приспешники не могут гарантировать, что эти предметы изгонят чуму. Известно лишь, что они могут оказаться очень мощными.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~Это богатство не должно попасть им в руки. Принесите все мне, а не Олеффу, от меня вы получите гораздо больше денег.~
  IF ~  OR(3)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")~ THEN REPLY ~У меня есть артефакт, взятый в одной из могил.~ GOTO 18
  IF ~~ THEN REPLY ~Ладно, ладно, в другой раз загляну.~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY ~Не надоедайте мне, если у вас нет хороших новостей для почитателей Талоны! Не испытывайте ее гнев!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1
  SAY ~Ну и размазня! Эти хроники пойдут на растопку на следующем собрании посвященных  в Даэрнате. Будет прекрасный праздник!~
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 25
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 25
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 26
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 27
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 18.2
  SAY ~Панцирь самого Хэлуэта Невера! Он весь провонял им изнутри. Мои мастера посмотрят, что полезного из него можно сделать. Наверное, мы перекуем это в лопату и подарим городским конюшням. Как раз подойдет.~
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 28
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 28
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 29
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 30
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 18.3
  SAY ~Так-так, ну разве Олеффу не хочется заполучить это? Я прослежу, чтобы это... Было уничтожено подобающим образом.~
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",2)Global("MyArtefact","GLOBAL",0)~ THEN GOTO 31
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 31
  IF ~  Global("OleffQuestBreak","GLOBAL",2)~ THEN GOTO 32
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","GLOBAL",2)~ THEN GOTO 33
  IF ~  Global("OleffQuestBreak","GLOBAL",1)Global("MyArtefact","GLOBAL",1)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 22.1 22.2
  SAY ~Вот, получите 2000 золотых. Это намного больше, чем может дать Олефф, а я могу заплатить еще! Какое счастье! Они никогда не узнают о Хэлуэте! Какой триумф для Ядовитой Госпожи! Но найдено еще не все. Есть еще артефакты. Принесите их мне, и я дам вам столько золота, сколько пожелает ваша черная душа! И заплачу еще больше, когда будут найдены все!~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY ~Победа! Тир никогда  не получит эти вещи! Что бы ни ждало нас впереди, эта злобно-сладкая победа останется за Талоной! Возьмите еще 4000 золотых и помните, что Талона может вас пощадить отныне. Это все, чего вы достойны!~
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.4 22.5
  SAY ~Вот, получите 2000 золотых. Я хочу сказать, если ты этого заслуживаешь! То, что остальные артефакты попали к Олеффу - полностью твоя вина! Возможно, это была попытка с твоей стороны очистить свою совесть, но так дело не пойдет. Я прослежу, чтобы последователи Талоны использовали то, что у нас уже есть, чтобы извести идиотов-поклонников Тира. Убирайся с глаз моих.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1 23.2
  SAY ~Вот, получите 2000 золотых. Это намного больше, чем может дать Олефф, а я могу заплатить еще! Какое счастье! Они никогда не узнают о Хэлуэте! Какой триумф для Ядовитой Госпожи! Но найдено еще не все. Есть еще артефакты. Принесите их мне, и я дам вам столько золота, сколько пожелает ваша черная душа! И заплачу еще больше, когда будут найдены все!~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3
  SAY ~Победа! Тир никогда  не получит эти вещи! Что бы ни ждало нас впереди, эта злобно-сладкая победа останется за Талоной! Возьмите еще 4000 золотых и помните, что Талона может вас пощадить отныне. Это все, чего вы достойны!~
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.4 23.5
  SAY ~Вот, получите 2000 золотых. Я хочу сказать, если ты этого заслуживаешь! То, что остальные артефакты попали к Олеффу - полностью твоя вина! Возможно, это была попытка с твоей стороны очистить свою совесть, но так дело не пойдет. Я прослежу, чтобы последователи Талоны использовали то, что у нас уже есть, чтобы извести идиотов-поклонников Тира. Убирайся с глаз моих.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1 24.2
  SAY ~Вот, получите 2000 золотых. Это намного больше, чем может дать Олефф, а я могу заплатить еще! Какое счастье! Они никогда не узнают о Хэлуэте! Какой триумф для Ядовитой Госпожи! Но найдено еще не все. Есть еще артефакты. Принесите их мне, и я дам вам столько золота, сколько пожелает ваша черная душа! И заплачу еще больше, когда будут найдены все!~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.3
  SAY ~Победа! Тир никогда  не получит эти вещи! Что бы ни ждало нас впереди, эта злобно-сладкая победа останется за Талоной! Возьмите еще 4000 золотых и помните, что Талона может вас пощадить отныне. Это все, чего вы достойны!~
  IF ~~ THEN DO 
~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(4000)AddexperienceParty(30000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.4 24.5
  SAY ~Вот, получите 2000 золотых. Я хочу сказать, если ты этого заслуживаешь! То, что остальные артефакты попали к Олеффу - полностью твоя вина! Возможно, это была попытка с твоей стороны очистить свою совесть, но так дело не пойдет. Я прослежу, чтобы последователи Талоны использовали то, что у нас уже есть, чтобы извести идиотов-поклонников Тира. Убирайся с глаз моих.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(2000)AddexperienceParty(20000)IncrementGlobal("OleffQuestBreak","GLOBAL",1)SetGlobal("GillesQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.4
  SAY ~Ядовитая Госпожа не потерпит никаких задержек. За дело!~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("OleffQuest","GLOBAL",0)!Global("OleffQuest","GLOBAL",2)GlobalGT("GillesQuest","GLOBAL",1)~ THEN BEGIN 35 // from:
  SAY ~Что, во имя девяти бездн, тебе нужно? Почему ты считаешь, что мне вообще стоит с тобой разговаривать?~
  IF ~  Global("GillesQuest","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("GillesQuest","GLOBAL",2)~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~Мы ценим твою помощь, но последователи Талоны больше в твоих услугах не нуждаются. Оставь меня.~
  IF ~~ THEN REPLY ~Как тебе вообще удалось узнать об артефактах?~ GOTO 38
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY ~В конце концов, кто-то уже доставил Олеффу часть этих отвратительно чистых артефактов Тира. О да, у меня и там есть шпионы! Неужели ты считаешь, что можно так возвращаться сюда и ожидать похвалы за то, что это все произошло? Ты что, тупица? Фу! Убирайся с глаз моих!~
  IF ~~ THEN REPLY ~Как тебе вообще удалось узнать об артефактах?~ GOTO 38
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY ~У меня есть глаза по всему городу. Кроме того, я был на раскопках на полуострове. Им нужны такие, как вы. Их собратья мрут, как мухи.~
  IF ~~ THEN REPLY ~Как можно было находиться там и не помочь умирающим?~ GOTO 39
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY ~Я прикарманил кое-какие их вещи. Взял прекрасное перо у одного из них. Кажется, его звали Джейкобом. Ему оно больше не потребуется. Думаю, он умер. Он никак не отреагировал, когда я перевернул его, чтобы обчистить карманы.~
  IF ~~ THEN REPLY ~Это омерзительно! Отдай мне перо Джейкоба, СЕЙЧАС ЖЕ!~ GOTO 15
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",2)~ THEN BEGIN 35 // from:
  SAY ~Что, во имя девяти бездн, тебе нужно? Почему ты считаешь, что мне вообще стоит с тобой разговаривать? Кто-то уже доставил Олеффу все эти отвратительно чистые артефакты Тира. О да, у меня и там есть шпионы! Неужели ты считаешь, что можно ожидать похвалы за то, что это все произошло? Ты что, тупица? Фу! Убирайся с глаз моих!~
  IF ~~ THEN REPLY ~Как тебе вообще удалось узнать об артефактах?~ GOTO 38
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

