// Центр Невервинтера  Куртизанка - больна чумой. Эта едва одетая женщина бесстыдно встречает ваш взгляд. Она могла бы даже показаться симпатичной, если бы не очевидные следы развивающейся чумы.
BEGIN ~HARLNWN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 0 // from:
  SAY ~Эй, там... Как насчет, если такая киса, типа тебя проведет ночку с такой девушкой, как я? Всего за пару монеток.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Пара монеток? Тебе? Да ты шутишь.~ GOTO 2
  IF ~~ THEN REPLY ~У тебя язвы. У тебя чума, так?~ GOTO 2
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ну ладно, хорошо. Похоже, сегодня мне не удастся легко заработать.~
  IF ~~ THEN REPLY ~Почему вы здесь, на улице? Вы больны и должны сидеть в помещении.~ GOTO 5
  IF ~~ THEN REPLY ~Как чума отразилась на вашем бизнесе?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ох, ну да, да. У меня чума, или что-то похожее, а у тебя нет. Можешь тыкать в меня пальчиком, но я пока что жива. Так вы чего-то хотите, или так и будете стоять и глазеть?~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~У тебя чума?! Уйди от меня!!~ GOTO 10
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я... Работающая девушка обычно не просит милостыни, <LADYLORD>... Но сейчас такие времена. Не поможете ли мне немного?~
  IF ~~ THEN REPLY ~Тратить деньги на тебя? Нет уж.~ GOTO 10
  IF ~~ THEN REPLY ~Я могу смилостивиться. Предлагаю быструю и безболезненную смерть.~ GOTO 11
  IF ~  PartyGoldLT(10)~ THEN REPLY ~У меня ничего нет.~ GOTO 12
  IF ~  PartyGoldGT(1)~ THEN REPLY ~Вот... Возьми золотой.~ DO ~TakePartyGold(1)SetGlobal("Alms","LOCALS",1)~ GOTO 13
  IF ~  PartyGoldGT(99)~ THEN REPLY ~Возьми 100 золотых. Найди себе теплое место, чтобы переночевать.~ DO ~TakePartyGold(100)SetGlobal("Alms","LOCALS",1)ReputationInc(1)~ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Ах, приходи еще.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Где? С чумой тебя никто не впустит. У тебя даже семьи нет. А я не пойду в Маску Лунного Камня, ни за что.~
  IF ~~ THEN REPLY ~Почему не пойдешь в Маску Лунного Камня?~ GOTO 17
  IF ~~ THEN REPLY ~Как чума отразилась на вашем бизнесе?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Ха! Думаешь, если девушки не найдут себе клиента на ночь во всем Невервинтере, они расстроятся? Вовсе нет, скажу я тебе. Люди в этом городе, они все думают, что умрут. Убеждены в этом, вот так. Вот они и собираются в Маске Лунного Камня, хотят немного развлечься. Ах, они ищут даже меня. Эти люди с Воющей Смертью... Они ее не заслужили. Им тоже охота повеселиться, как всегда... И я не стану их прогонять.~
  IF ~~ THEN REPLY ~Но вам точно ведь не нужны деньги...~ GOTO 16
  IF ~~ THEN REPLY ~Почему вы здесь, на улице? Вы больны и должны сидеть в помещении.~ GOTO 5
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Я много чего могу сказать о чуме. В основном, по собственному опыту. Так что же именно тебе хотелось знать, а?~
  IF ~~ THEN REPLY ~Вы знаете что-либо, что могло бы вызывать ее?~ GOTO 15
  IF ~~ THEN REPLY ~Не слышали ли вы о каких-нибудь странных животных в этой местности?~ GOTO 18
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~В Сердце города всегда что-то происходит. Я почти ничего не знаю, разве какой умирающий чего прошепчет.~
  IF ~~ THEN REPLY ~Не слышали ли вы чего-нибудь интересного?~ GOTO 20
  IF ~~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 21
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~Иди, давай, некогда мне показывать дорогу, можно и самому отыскать. Спроси стражников, может, тогда они займутся делом и не станут искать меня.~
  IF ~~ THEN REPLY ~Как чума отразилась на вашем бизнесе?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY ~Тогда уходите, <LADYLORD>, Ваша Жестокость. Чтоб вас чума взяла.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY ~Я... нет. Нет, <LADYLORD>. Спасибо, но мое время еще не пришло.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3
  SAY ~Тогда идите своей дорогой.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4
  SAY ~Спасибо, <LADYLORD>, вы добрее всех. Мои детки поедят сегодня, спасибо вам.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.5
  SAY ~Я... Вы слишком добры, <LADYLORD>! Благослови вас, благослови ваше сердце! Мои детки... Мои детки будут жить, когда меня не станет. Благослови вас!!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~Нет. Мы, девушки, иногда видимся с больными, но дело тут не в этом. Болезнь в воздухе, никто от нее не убережется. Девочки в Маске Лунного Камня, похоже, не больны чумой. А может, их мадам просто хорошо все скрывает. Скорее всего, так.~
  IF ~~ THEN REPLY ~Что еще ты можешь мне рассказать?~ GOTO 22
  IF ~~ THEN REPLY ~Не слышали ли вы о каких-нибудь странных животных в этой местности?~ GOTO 18
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 6.1
  SAY ~Если я умру, то что такого? Да, скоро я умру. Но у меня есть детки, и они здоровы. Они останутся сиротами. Для них это будет очень плохо. Я дам им, что смогу, пока меня не забрала Воющая Смерть. Это все, что я могу сделать.~
  IF ~~ THEN REPLY ~Почему вы здесь, на улице? Вы больны и должны сидеть в помещении.~ GOTO 5
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 5.1
  SAY ~Хмм. Мне не нравится мадам, эта Офала Шелдарсторн. Что-то с ней не так, скажу я вам. В Маске Лунного Камня чересчур много правил. Нет, нет, мое место здесь, на улице. Если подохну, то рядом с вон той кучей.~
  IF ~~ THEN REPLY ~Как чума отразилась на вашем бизнесе?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY ~Странные животные? То есть, чудовища? Нет, в этих местах никаких чудовищ, никогда не слышала. Если ты говоришь, что эти чудовища бродят по центру... Нет, я не хочу об этом слышать. По ночам и так полно народу умирает. Вы еще что-то хотели?~
  IF ~~ THEN REPLY ~Вы знаете что-либо, что могло бы вызывать чуму?~ GOTO 15
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.3
  SAY ~Что вы хотите знать?~
  IF ~~ THEN REPLY ~Почему вы здесь, на улице? Вы больны и должны сидеть в помещении.~ GOTO 5
  IF ~~ THEN REPLY ~Как чума отразилась на вашем бизнесе?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы рассказать мне что-нибудь о чуме?~ GOTO 7
  IF ~~ THEN REPLY ~Что-нибудь происходит в этой части города?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 8.1
  SAY ~Да много всякого. Можешь пойти в замок Невер, там точно интересно. Передавай от меня привет. Походи тут, если хочешь. Ты точно найдешь что-нибудь интересное.~
  IF ~~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 21
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 8.2
  SAY ~Все берегут денежки, и никого не нанимают. Разве что в Маске Лунного Камня... Но и там, скорее всего, нет. Но, я думаю, работу найти можно. Людям много чего надо сделать, особенно когда в городе такой бардак. Но мне ничего конкретного не приходилось слышать.~
  IF ~~ THEN REPLY ~Не слышали ли вы чего-нибудь интересного?~ GOTO 20
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY ~Нет. Постой тут немного, узнаешь все, что надо, и даже немного больше. Вам еще что-нибудь нужно?~
  IF ~~ THEN REPLY ~Не слышали ли вы о каких-нибудь странных животных в этой местности?~ GOTO 18
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 23 // from:
  SAY ~Что тебе нужно, девица? Мне нужно работать, за золото или еще как... Чтобы не пришлось спать на улице и не подхватить чуму.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~У тебя язвы. У тебя чума, так?~ GOTO 2
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

// -----------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 24 // from:
  SAY ~Вернулись? Не следует вам бродить здесь... Я *болею* Воющей Смертью, <LADYLORD>.~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 4
END

