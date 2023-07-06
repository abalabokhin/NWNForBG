// Южная дорога 2 - Эрик  Этот парень явно относится к трудным подросткам. Дом запереть  Ingo  ErikNW  Constanc Mary

BEGIN ~ERIKNW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0 // from:
  SAY ~Эй, что вы себе позволяете, почему вламываетесь в комнату к человеку! Дверь же не зря была заперта...~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 2
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я Эрик, сын Инго. Ну вот, это было очень вежливо с моей стороны, а теперь скажите, пожалуйста, зачем вы вломились ко мне в дом?~
  IF ~  Global("KnowAboutErik","GLOBAL",1)Global("ErikQuest","GLOBAL",0)~ THEN REPLY ~Твой отец сказал мне, что тебе нужно приободриться.~ GOTO 4
  IF ~~ THEN REPLY ~Я просто изучаю обстановку.~ GOTO 5
  IF ~~ THEN REPLY ~Для тебя будет лучше, если ты больше не будешь задавать этот вопрос.~ GOTO 6
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Думаю, у меня найдется время, чтобы ответить на пару вопросов. Только побыстрее, пожалуйста.~
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу еще поговорить об этой брошке.~ GOTO 7
  IF ~~ THEN REPLY ~Что ты знаешь об этом культе, который заразил Невервинтер?~ GOTO 8
  IF ~  Global("ErikQuest","GLOBAL",0)~ THEN REPLY ~Если знаете, скажите, где найти работу.~ DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 10
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Приходите, когда брошь будет у вас, и вы непременно получите вознаграждение.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Надо было догадаться, что тебя послал отец. Он всегда слишком сильно за меня переживает. Что бы ни привело тебя сюда, можешь поворачиваться и уходить. Если только у тебя нет какого-нибудь важного дела.~
  IF ~~ THEN REPLY ~Что ты знаешь об этом культе, который заразил Невервинтер?~ GOTO 8
  IF ~  Global("ErikQuest","GLOBAL",0)~ THEN REPLY ~Если знаете, скажите, где найти работу.~ DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 10
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Искатель приключений, да? Так иди изучай обстановку где-нибудь в другом месте, хорошо?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Угрозы? Отлично, как раз этого мне и не хватало. Ты, должно быть, из этих искателей приключений. Убирайся из моего дома!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY ~Я тоже, я тоже. Но продолжайте, спрашивайте, что вы хотели. Я постараюсь ответить.~
 IF ~  Global("ErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY ~Брошь у меня.~ GOTO 34
  IF ~~ THEN REPLY ~Так что такого важного в этой броши?~ GOTO 12
  IF ~~ THEN REPLY ~Скажи еще раз, где мне ее искать.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажи мне еще раз о Констанс.~ GOTO 14
  IF ~~ THEN REPLY ~Может быть ты кое-что о ней забыл упомянуть?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~До нас новости почти не доходят. С неделю назад я видел, как какой-то подозрительный парень шел по дороге в Чарвуд. Может, он из них. Вам еще что-нибудь нужно?~
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу еще поговорить об этой брошке.~ GOTO 7
  IF ~  Global("ErikQuest","GLOBAL",0)~ THEN REPLY ~Если знаете, скажите, где найти работу.~ DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 10
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY ~Хм. Вообще-то, мне действительно нужно кого-то попросить об одной услуге, а вы, <man/woman>, как раз подойдете. Хотите услышать подробности?~
  IF ~~ THEN REPLY ~Я никому не оказываю никаких услуг. Я выполняю работу. Если ты мне хочешь заплатить за это, тогда рассказывай.~ GOTO 21
  IF ~~ THEN REPLY ~Расскажи мне, о какой услуге речь.~ GOTO 22
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY ~Я об этих местах много знаю, так что, думаю, смогу вам помочь. Что именно вы хотите узнать?~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 17
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 18
  IF ~~ THEN REPLY ~Где я могу купить нужные припасы?~ GOTO 19
  IF ~~ THEN REPLY ~Где я могу переночевать?~ GOTO 20
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY ~Приятно было поговорить с вами, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~Это все, что осталось у па в память о маме... Из всех вещей, которые я мог бы показать Констанс! *Вздыхает* Надо было ограничиться полевыми цветами... Хотите еще что-то спросить - перед тем, как добудете брошь?~
 IF ~  Global("ErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY ~Брошь у меня.~ GOTO 34
  IF ~~ THEN REPLY ~Скажи еще раз, где мне ее искать.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажи мне еще раз о Констанс.~ GOTO 14
  IF ~~ THEN REPLY ~Может быть ты кое-что о ней забыл упомянуть?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY ~Она у дочка О'Дила, который держит коров на соседней ферме... Помните, не причиняйте ей вреда. Я просто хочу получить назад брошь.~
 IF ~  Global("ErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY ~Брошь у меня.~ GOTO 34
  IF ~~ THEN REPLY ~Так что такого важного в этой броши?~ GOTO 12
  IF ~~ THEN REPLY ~Расскажи мне еще раз о Констанс.~ GOTO 14
  IF ~~ THEN REPLY ~Может быть ты кое-что о ней забыл упомянуть?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 7.3
  SAY ~Волосы у нее цвета спелой пшеницы, смех словно журчание ручейка... А глаза голубые, как небо! Хотите еще что-то спросить - перед тем, как добудете брошь?~
 IF ~  Global("ErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY ~Брошь у меня.~ GOTO 34
  IF ~~ THEN REPLY ~Так что такого важного в этой броши?~ GOTO 12
  IF ~~ THEN REPLY ~Скажи еще раз, где мне ее искать.~ GOTO 13
  IF ~~ THEN REPLY ~Может быть ты кое-что о ней забыл упомянуть?~ GOTO 15
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY ~Ну, я не знаю, имеет ли это значение, но в последнее время у ее отца какие-то проблемы с волками. Может, вы сможете завоевать его доверие, если попробуете с этим справиться.~
 IF ~  Global("ErikQuest","GLOBAL",1)PartyHasItem("NWMisc01")~ THEN REPLY ~Брошь у меня.~ GOTO 34
  IF ~~ THEN REPLY ~Так что такого важного в этой броши?~ GOTO 12
  IF ~~ THEN REPLY ~Скажи еще раз, где мне ее искать.~ GOTO 13
  IF ~~ THEN REPLY ~Расскажи мне еще раз о Констанс.~ GOTO 14
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 16
  SAY ~Что вы хотели узнать?~
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~Я хочу еще поговорить об этой брошке.~ GOTO 7
  IF ~~ THEN REPLY ~Что ты знаешь об этом культе, который заразил Невервинтер?~ GOTO 8
  IF ~ Global("ErikQuest","GLOBAL",0)~ THEN REPLY ~Если знаете, скажите, где найти работу.~ DO ~SetGlobal("MyOuest","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 10
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~Северная дорога? Она приведет вас к башне этого волшебника, Вэйнива, а потом в Порт-Лласт.~
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 18
  IF ~~ THEN REPLY ~Где я могу купить нужные припасы?~ GOTO 19
  IF ~~ THEN REPLY ~Где я могу переночевать?~ GOTO 20
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~Эта ведет куда-то в лес. Па говорит, там привидения водятся, а уж он-то знает. Вообще-то, где-то там еще есть деревня Чарвуд, но я ее никогда не видел...~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 17
  IF ~~ THEN REPLY ~Где я могу купить нужные припасы?~ GOTO 19
  IF ~~ THEN REPLY ~Где я могу переночевать?~ GOTO 20
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY ~Боюсь, до самого Порт-Лласта почти ничего нет. Мы туда ездим только во время уборки урожая. Я, па и О'Дилы тут сами по себе. О'Дилы живут на востоке от нашей фермы.~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 17
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 18
  IF ~~ THEN REPLY ~Где я могу переночевать?~ GOTO 20
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY ~Гостиниц тут нет, я думаю, отец не будет возражать, если вы переночуете в нашем доме.~
  IF ~~ THEN REPLY ~Куда ведет северная дорога?~ GOTO 17
  IF ~~ THEN REPLY ~Куда ведет восточная дорога?~ GOTO 18
  IF ~~ THEN REPLY ~Где я могу купить нужные припасы?~ GOTO 19
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 9.1
  SAY ~Что? О, конечно, наверное, это возможно. Я заплачу тебе, если ты это сделаешь.~
  IF ~~ THEN REPLY ~Расскажи мне, о какой услуге речь.~ GOTO 22
  IF ~~ THEN REPLY ~У меня есть другие вопросы.~ GOTO 16
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 9.2
  SAY ~Может, па говорил вам, что в последнее время я вроде как малость не в себе. Ну вот, так он и половины не знает. Сердце у меня разбито, но... Все эта язва, Констанс О'Дил - знает, что я бы жизнь отдал за ее мизинчик, и дразнит меня. Ох, какой я дурак... Она хотела посмотреть на мамину брошку, вот я ее и принес. А теперь эта ведьма не хочет отдавать ее обратно!~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY ~Бес с ним, с моим сердцем, вот если я не верну мамину брошку, отец с меня просто шкуру сдерет!~
  IF ~~ THEN REPLY ~Что такого важного в этой брошке?~ GOTO 24
  IF ~~ THEN REPLY ~А не можешь ты просто купить у нее брошь?~ GOTO 25
  IF ~~ THEN REPLY ~Расскажи мне о Констанс.~ GOTO 26
  IF ~~ THEN REPLY ~Ладно, я это сделаю.~ GOTO 27
  IF ~~ THEN REPLY ~Мне это не интересно. До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY ~Это все, что осталось у па в память о маме... Из всех вещей, которые я мог бы показать Констанс! *Вздыхает* Надо было ограничиться полевыми цветами... Так вы думаете, что сможете получить брошь? Я награжу любого, кто принесет мне ее, обещаю.~
  IF ~~ THEN REPLY ~Как ты думаешь, что бы сказала об этом матушка?~ GOTO 28
  IF ~~ THEN REPLY ~А не можешь ты просто купить у нее брошь?~ GOTO 25
  IF ~~ THEN REPLY ~Расскажи мне о Констанс.~ GOTO 26
  IF ~~ THEN REPLY ~Ладно, я это сделаю.~ GOTO 27
  IF ~~ THEN REPLY ~Мне это не интересно. До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY ~Вы не знаете Констанс. Да кто ее вообще знает! Ей вовсе не деньги нужны. Она просто хочет, чтобы я ее умолял. Ну, а я не буду! В конце концов, она должна понять, что человеческое сердце не игрушка... Пожалуйста! Я вас щедро вознагражу, обещаю.~
  IF ~~ THEN REPLY ~Откуда ты знаешь, что она не хочет денег?~ GOTO 29
  IF ~~ THEN REPLY ~Что такого важного в этой брошке?~ GOTO 24
  IF ~~ THEN REPLY ~Расскажи мне о Констанс.~ GOTO 26
  IF ~~ THEN REPLY ~Ладно, я это сделаю.~ GOTO 27
  IF ~~ THEN REPLY ~Мне это не интересно. До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY ~Волосы у нее цвета спелой пшеницы, смех словно журчание ручейка, глаза голубые, как небо... А сердце хватает тебя, словно медвежий капкан! И благодаря мне, дураку, у нее теперь мамина брошка!!! Я щедро награжу любого, кто мне ее вернет, клянусь.~
  IF ~~ THEN REPLY ~Что такого важного в этой брошке?~ GOTO 24
  IF ~~ THEN REPLY ~А не можешь ты просто купить у нее брошь?~ GOTO 25
  IF ~~ THEN REPLY ~Ладно, я это сделаю.~ GOTO 27
  IF ~~ THEN REPLY ~Мне это не интересно. До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 27 // from: 23.4
  SAY ~Правда? Она дочка О'Дила, который держит коров на соседней ферме... Делайте все, что хотите, чтобы вернуть мамину брошь, только даже пальцем ее не трогайте... *Вздыхает* Только посмотрите на меня, я все еще беспокоюсь о ней, даже теперь...~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY ~Если бы она была жива, она бы, может, давным-давно сама отдала эту брошку Констанс. Но ведь мамы уже нет, понимаете? Вот в чем вся проблема...~
  IF ~~ THEN REPLY ~А не можешь ты просто купить у нее брошь?~ GOTO 25
  IF ~~ THEN REPLY ~Расскажи мне о Констанс.~ GOTO 26
  IF ~~ THEN REPLY ~Ладно, я это сделаю.~ GOTO 27
  IF ~~ THEN REPLY ~Мне это не интересно. До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 25.1
  SAY ~Кажется, я уже вообще ничего не знаю. Идите, попробуйте выкупить у нее брошь, может это и сработает. *Вздыхает* С женщинами всегда все так сложно...~
  IF ~~ THEN REPLY ~Что такого важного в этой брошке?~ GOTO 24
  IF ~~ THEN REPLY ~Расскажи мне о Констанс.~ GOTO 26
  IF ~~ THEN REPLY ~Ладно, я это сделаю.~ GOTO 27
  IF ~~ THEN REPLY ~Мне это не интересно. До свидания.~ GOTO 11
END

// ----------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 30 // from:
  SAY ~Хмм... интересная ситуация. В мою комнату никогда раньше не вламывалась женщина.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 2
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

// ------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   Gender(LastTalkedToBy,MALE)Global("ErikQuest","GLOBAL",0)~ THEN BEGIN 31 // from:
  SAY ~Вы так быстро вернулись, да, взломщик? Надеюсь, вы здесь не для того, чтобы насмехаться надо мной и сыпать мне соль на раны.~
  IF ~  Global("MyOuest","LOCALS",1)~ THEN REPLY ~Перед этим вы сказали что-то насчет работы.~ GOTO 22
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 2
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

// ------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   Gender(LastTalkedToBy,FEMALE)Global("ErikQuest","GLOBAL",0)~ THEN BEGIN 32 // from:
  SAY ~А, очаровательный взломщик. Чему я обязан повторным визитом?~
  IF ~  Global("MyOuest","LOCALS",1)~ THEN REPLY ~Перед этим вы сказали что-то насчет работы.~ GOTO 22
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 2
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

// ------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~   Global("ErikQuest","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY ~Как продвигаются ваши поиски? Вы нашли брошь, или я еще чем-то могу вам помочь?~
  IF ~  PartyHasItem("NWMisc01")~ THEN REPLY ~Брошь у меня.~ GOTO 34
  IF ~~ THEN REPLY ~Я хочу еще поговорить об этой брошке.~ GOTO 7
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 2
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~Как вам удалось убедить ее!? Нет, не отвечайте... Пожалуй, лучше мне этого не знать. Так, а теперь к вопросу о вознаграждении...~
  IF ~  Global("PriceXL","GLOBAL",1)~ THEN GOTO 35
  IF ~  Global("PriceM","GLOBAL",1)~ THEN GOTO 36
  IF ~  OR(2)Global("PriceL","GLOBAL",1)Dead("Constanc")~ THEN GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY ~Вы очень помогли несчастному, которому не повезло в жизни. Вот, возьмите, 850 золотых в обмен на брошь.~
  IF ~~ THEN REPLY ~Это очень много. Ты уверен, что можешь это себе позволить?~ GOTO 38
  IF ~~ THEN REPLY ~Лучше давай побольше, не то ты не успеешь пожалеть о своей скупости!~ GOTO 39
  IF ~~ THEN REPLY ~Спасибо. Приятно было помочь тебе.~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 35.1
  SAY ~Это деньги, которые я заработал на собственном клочке земли. Я копил их, чтобы жениться на Констанс, но теперь думаю, что было очень глупо с моей стороны.~
  IF ~~ THEN REPLY ~Спасибо. Приятно было помочь тебе.~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY ~А сейчас мне пора. Папа начнет волноваться, если я не выполню, наконец, его поручения...~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(850)AddexperienceParty(36000)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.2
  SAY ~У-успокойтесь, не стоит так нервничать. Давайте без грубостей. Вот, у меня есть еще 100 золотых, это все мои деньги. Возьмите А сейчас мне пора. Папа начнет волноваться, если я не выполню, наконец, его поручения....~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(850)GivePartyGold(100)AddexperienceParty(36000)~ EXIT
END

//----------------------

IF ~~ THEN BEGIN 36 // from: 35.2
  SAY ~Вы очень помогли несчастному, которому не повезло в жизни. Вот, возьмите, 650 золотых в обмен на брошь.~
  IF ~~ THEN REPLY ~Это очень много. Ты уверен, что можешь это себе позволить?~ GOTO 41
  IF ~~ THEN REPLY ~Лучше давай побольше, не то ты не успеешь пожалеть о своей скупости!~ GOTO 42
  IF ~~ THEN REPLY ~Спасибо. Приятно было помочь тебе.~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY ~Это деньги, которые я заработал на собственном клочке земли. Я копил их, чтобы жениться на Констанс, но теперь думаю, что было очень глупо с моей стороны.~
  IF ~~ THEN REPLY ~Спасибо. Приятно было помочь тебе.~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.3
  SAY ~А сейчас мне пора. Папа начнет волноваться, если я не выполню, наконец, его поручения...~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(650)AddexperienceParty(36000)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.2
  SAY ~У-успокойтесь, не стоит так нервничать. Давайте без грубостей. Вот, у меня есть еще 100 золотых, это все мои деньги. Возьмите А сейчас мне пора. Папа начнет волноваться, если я не выполню, наконец, его поручения....~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(650)GivePartyGold(100)AddexperienceParty(36000)~ EXIT
END

//----------------------

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY ~Вы очень помогли несчастному, которому не повезло в жизни. Вот, возьмите, 400 золотых в обмен на брошь.~
  IF ~~ THEN REPLY ~Это очень много. Ты уверен, что можешь это себе позволить?~ GOTO 44
  IF ~~ THEN REPLY ~Лучше давай побольше, не то ты не успеешь пожалеть о своей скупости!~ GOTO 45
  IF ~~ THEN REPLY ~Спасибо. Приятно было помочь тебе.~ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY ~Это деньги, которые я заработал на собственном клочке земли. Я копил их, чтобы жениться на Констанс, но теперь думаю, что было очень глупо с моей стороны.~
  IF ~~ THEN REPLY ~Спасибо. Приятно было помочь тебе.~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 39.3
  SAY ~А сейчас мне пора. Папа начнет волноваться, если я не выполню, наконец, его поручения...~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(400)AddexperienceParty(36000)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.2
  SAY ~У-успокойтесь, не стоит так нервничать. Давайте без грубостей. Вот, у меня есть еще 100 золотых, это все мои деньги. Возьмите А сейчас мне пора. Папа начнет волноваться, если я не выполню, наконец, его поручения....~
  IF ~~ THEN DO ~SetGlobal("ErikQuest","GLOBAL",2)TakePartyItem("NWMisc01")GiveGoldForce(400)GivePartyGold(100)AddexperienceParty(36000)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("ErikQuest","GLOBAL",1)~ THEN BEGIN 47 // from:
  SAY ~*Вздыхает* Женщина... Вот все, что я могу сказать по этому поводу...~
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 2
  IF ~  Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  !Global("ErikQuest","GLOBAL",1)~ THEN REPLY ~До свидания.~ GOTO 11
END

