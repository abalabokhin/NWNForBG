BEGIN ~TOMIP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY ~Твое общество было отвратительно! Когда мы снова встретимся, я не собираюсь больше играть в дружбу!~ [Tomitant]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("TomiEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Чи-иво? Ты че, дуришь меня? Такую великую банду хочешь похерить?~ [Tomidyin]
  IF ~~ THEN REPLY ~Да. Иди.~ GOTO 1
  IF ~~ THEN REPLY ~Нет. Останься.~ GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~О, ладно, ладно. Я где-нибудь еще поболтаюсь малехо, вдруг ты передумаешь.~
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY ~Возвращайся на ярмарку мечей.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Tomi",[1086.582])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Я найду тебя в казармах Кендрака.~ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Tomi",[275.477])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY ~Жди меня здесь.~ DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("TomiOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY ~Все ясно. Назад к приключениям!~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("TomiEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Я так и думал, что они в конце концов приволокут сюда и твою задницу, <LADYLORD>. Не хочешь ли опять прогуляться вместе?~ [TOMI060]
  IF ~~ THEN REPLY ~Да.~ GOTO 3
  IF ~~ THEN REPLY ~Нет.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Веди нас!~
  IF ~~ THEN DO ~SetGlobal("TomiOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Что ж, вы знаете, где меня искать.~
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("TomiReleased","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY ~Эге ж, да это же <CHARNAME>! Как я рад т'я видеть! Не правда ли, сельская местность очаровательна в это время года? Гораздо лучше, чем город со всем этим... м-м-м... горением и помиранием. Знаешь ли.~ [TOMI053]
  IF ~~ THEN REPLY ~Какой сюрприз видеть тебя здесь, Томи.~ GOTO 34
  IF ~~ THEN REPLY ~Опять ты? Ты что, преследуешь меня?~ GOTO 35
  IF ~~ THEN REPLY ~До свидания.~ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~Ага, ну а чего ты хочешь от полурослика? Куда деньги, туда и я. После того, как наши пути разошлись, мамзель Арибет там подошла ко мне и отвалила кучу денег за то, чтобы я подписался на эту ее увеселительную прогулку. Мы все должны помогать с поисками. Похоже, лорд Нашер хочет извести всех этих сектантов, что завязали свару. Вот и молодец, по-моему! Просто-таки живое доказательство того, что не всех стариков надо убивать за бесполезность, правда?~
  IF ~~ THEN REPLY ~Так Арибет и тебя призвала на службу?~ GOTO 37
  IF ~~ THEN REPLY ~Сколько будет стоить нанять тебя?~ GOTO 37
  IF ~~ THEN REPLY ~До свидания.~ GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY ~Ну... может быть, есть немного. В конце концов, не так уж много осталось живых работодателей, чтобы они строились ко мне в очередь, точно? И вообще... тебя особо и преследовать-то не приходится. Похоже, лорд Нашер хочет извести всех этих сектантов, что завязали свару. Вот и молодец, по-моему! Просто-таки живое доказательство того, что не всех стариков надо убивать за бесполезность, правда?~
  IF ~~ THEN REPLY ~Так Арибет и тебя призвала на службу?~ GOTO 37
  IF ~~ THEN REPLY ~Сколько будет стоить нанять тебя?~ GOTO 37
  IF ~~ THEN REPLY ~До свидания.~ GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 33.3
  SAY ~Угу. Ту-ту!~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.1
  SAY ~Мне уже заплатила эта мамзель Арибет... и, кстати, неплохо, доложу я тебе. Можно подумать, этот парень Нашер прям-таки гадит этим золотом. Мне сказали только, что я должен помогать всем, чем смогу. Какое милое, ни к чему не обязывающее требование, правда? Я, э-э, я не думаю, что ты в самом деле чего-нибудь хочешь, правда?~
  IF ~~ THEN REPLY ~У тебя есть какие-нибудь сведения о культе, который стоит за Воющей смертью?~ GOTO 39
  IF ~~ THEN REPLY ~Мне бы не помешал неплохой мошенник рядом.~ GOTO 40
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~ GOTO 41
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY ~Зашибись! Если тебе понадобится мошенник - я уже куплен и оплачен... не хватает только компании.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY ~Не, ниче такого, что другие бы не знали. Хотя спроси меня, так Лускан - самое то место.~
  IF ~~ THEN REPLY ~Лускан?~ GOTO 42
  IF ~~ THEN REPLY ~Мне бы не помешал неплохой мошенник рядом.~ GOTO 40
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY ~Ну разве не удачное совпадение, что я как раз хороший мошенник? Прекрасно... этот захолустный городишко уже начал надоедать мне, по-любому.~
  IF ~~ THEN DO ~SetGlobal("TomiEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("TomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.3
  SAY ~Кроме ванны? Как вам угодно, <LADYLORD>.~
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY ~Ага, ну... В этом городе завались ворья и пиратов... да там кому угодно рады, лишь бы не белому и пушистому, точно т'е говорю. Сам там был пару раз. Где ж лягушонку прятаться, как не среди жаб? Не то чтобы у меня были какие доказательства или что...~
  IF ~~ THEN REPLY ~Мне бы не помешал неплохой мошенник рядом.~ GOTO 40
  IF ~~ THEN REPLY ~Сейчас мне ничего не нужно.~ GOTO 41
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("TomiReleased","GLOBAL",1)~ THEN BEGIN 43 // from:
  SAY ~Здорово, <LADYLORD>! Что, никак жить не можешь без Томи Висельника, а? Эта работа на мамзель Арибет... все эти поиски культовых парней... пока что проходят очень весело. Ничего не надо делать, кроме как пялиться на всяких подозрительных личностей.~ [TOMI055]
  IF ~~ THEN REPLY ~Так ты работаешь на Арибет?~ GOTO 44
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 39
  IF ~~ THEN REPLY ~И что, так и собираешься здесь сидеть?~ GOTO 45
  IF ~~ THEN REPLY ~До свидания.~ GOTO 36
END

IF ~~ THEN BEGIN 44 // from: 33.1
  SAY ~Похоже, лорд Нашер хочет извести всех этих сектантов, что завязали свару. Вот и молодец, по-моему! Просто-таки живое доказательство того, что не всех стариков надо убивать за бесполезность, правда? В общем, мамзель Арибет отвалила мне кучу монет, чтобы я присоединился к этим поискам. Отличная работа, пока что.~
  IF ~~ THEN REPLY ~Не было ли каких-нибудь слухов о культе с тех пор, как ты здесь?~ GOTO 39
  IF ~~ THEN REPLY ~И что, так и собираешься здесь сидеть?~ GOTO 45
  IF ~~ THEN REPLY ~До свидания.~ GOTO 36
END

IF ~~ THEN BEGIN 45 // from: 33.3
  SAY ~Ну, вряд ли я много бы наворотил в одиночку, <LADYLORD>. Черт, мне просто сказали валить сюда и ждать, пока я кому-нибудь не занадоблюсь. Я же не герой вроде тебя... хотя и адски хороший мошенник, прости за нескромность. Ну и скучища в этом городишке. Я уже насчитал четырнадцать куриц, переходящих дорогу. Думаю, если я т'е нужен, так с радостью потащусь куда скажешь.~
  IF ~~ THEN REPLY ~Лишние руки всегда пригодятся. Ты в деле.~ GOTO 46
  IF ~~ THEN REPLY ~Извини, но меня это не интересует. До свидания.~ GOTO 36
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY ~Вот и ладненько, <LADYLORD>... Я весь твой. Если захочешь подправить чуток мое поведение, только свистни.~
  IF ~~ THEN DO ~SetGlobal("TomiEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("TomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

