// Доки Хеммел Мастерсон   Аристократ, пытающийся сохранять достоинство, явно не в своей тарелке. Он выглядит растерянным и не очень понимает, что ему теперь делать.
// Положить в инвентарь Nwmisc28 объявление о аукционе

BEGIN ~HEMMEL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Amulet","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~А, да, приветствую. Я, э, Хеммел Мастерсон. Это моя жена Агнес, и наш слуга Морден. Скажите, вы случайно не видели человека по имени Каллик? У него мой амулет, и он, э, похоже, забыл о нас.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 2 // Забыл? Я ГОВОРИЛА тебе, что ему нельзя доверять.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY ~Сверкающие глаза моей жены напоминают мне, как она предупреждала, что этому человеку не следует доверять, но, может быть, он только задерживается.~
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY ~Мастерсон? Полагаю, это ваш амулет у меня.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о портовом районе?~ GOTO 4
  IF ~~ THEN REPLY ~Так в чем проблема?~ GOTO 5
  IF ~~ THEN REPLY ~У меня нет на это времени. До свидания~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: AGNES 2
  SAY ~Я прекрасно помню, что ты сказала, дорогая. Ты видишь, что тут <MALEFEMALE> ожидает продолжения разговора?~
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY ~Мастерсон? Полагаю, это ваш амулет у меня.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о портовом районе?~ GOTO 4
  IF ~~ THEN REPLY ~Так в чем проблема?~ GOTO 5
  IF ~~ THEN REPLY ~У меня нет на это времени. До свидания~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Чудесно! Вырван у тяжкой судьбы и возвращен семье Мастерсонов! Ты видишь, Агнес? Мы, Мастерсоны, знаем, что делаем!~
  IF ~~ THEN REPLY ~Вот. С удовольствием возвращаю это вам.~ GOTO 7
  IF ~~ THEN REPLY ~Мне хотелось бы получить вознаграждение за возвращение этого предмета.~ GOTO 8
  IF ~~ THEN REPLY ~А теперь давайте поговорим о соответствующей оплате, дуралей.~ GOTO 8
  IF ~~ THEN REPLY ~Вообще-то, я думаю оставить его себе.~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Боюсь, очень немногое. Я приехал сюда... ну... Я прибыл сюда, надеясь обойти карантин Невервинтера. Я нанял корабль, который должен был отплыть из портового района. Я отдал фамильный амулет человеку, который клялся в своей честности.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 3 // Хеммел, я могу сколько угодно клясться, что ты умен, но от этого ты умнее не станешь.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Ну, это не очень удобно. Видите ли, нам сказали, что тут где-то находится выход из Невервинтера. Мы бежали из-за карантина. Я нанял корабль, который должен был отплыть из портового района. Я отдал фамильный амулет человеку, который клялся в своей честности.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 3 // Хеммел, я могу сколько угодно клясться, что ты умен, но от этого ты умнее не станешь.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Да, очень хорошо. До свидания. Мы просто... подождем здесь мистера Каллика. Да. Вот, что мы сделаем.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 4 // О, чудесно, Хеммел. Так ты распрощаешься с фамильным амулетом Мастерсонов.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY ~Как я счастлив получить его. Вот, возьмите немного золота за беспокойство. Может, вы переживете чуму чтобы потратить его. А теперь мне нужно скорее убраться отсюда. Мы не можем нарушить карантин, но если запремся в особняке...~
  IF ~~ THEN DO ~TakePartyItem("Mastamul")SetGlobal("Amulet","LOCALS",2)SetGlobal("AmuletQuest","MYAREA",1)
GiveGoldForce(240)AddexperienceParty(24000)ActionOverride("Agnes",EscapeAreaDestroy(90))EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY ~Думаю, вы меня убедили, я заплачу справедливую сумму. Вот. 700 золотых и кое-что из арсенала Мастерсонов.~
  IF ~~ THEN REPLY ~Это будет чудесно. Спасибо.~ GOTO 14
  IF ~~ THEN REPLY ~А ты не думаешь, что я стою больше?~ GOTO 15
  IF ~~ THEN REPLY ~Я хочу большего. Не заставляйте меня сердиться.~ GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY ~Я... Я тут ничего поделать не могу... Я не боец, Агнес не даст соврать. Я могу только просить вас передумать. Я буду здесь... Больше мне некуда идти, правда. Я не знаю даже, действительно ли он у вас.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: AGNES 3.1
  SAY ~Здоровый такой парень. Каллик его звали. Он сказал, что скоро вернется на свой корабль.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 6 // И корабль тоже наверняка краденый. Правда, Хеммел, как ты мог вести себя так глупо.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 20
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~Моя жена не согласна с моей оценкой этого человека, но он обещал вернуться.~
  IF ~~ THEN REPLY ~Кто был этот человек?~ GOTO 10
  IF ~~ THEN REPLY ~Вы заплатили этим амулетом?~ GOTO 17
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 31
END

IF ~~ THEN BEGIN 12 // from: AGNES 4
  SAY ~Дорогая моя, заткнись.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Да, если я не умру от взглядов моей жены. Как будто потери фамильного амулета Мастерсонов недостаточно...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.1
  SAY ~Позвольте мне выразить вам мою благодарность и мое облегчение. А теперь, если вы не возражаете, мы пойдем и забаррикадируемся в своем особняке.~
  IF ~~ THEN DO ~TakePartyItem("Mastamul")SetGlobal("Amulet","LOCALS",2)SetGlobal("AmuletQuest","MYAREA",1)
GiveGoldForce(700)AddexperienceParty(18000)ActionOverride("Agnes",EscapeAreaDestroy(90))EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2
  SAY ~Я совершенно согласен с тем, что ваши услуги стоят гораздо больше, но у меня просто нет с собой денег.~
  IF ~~ THEN REPLY ~Ладно, давай сколько есть.~ GOTO 14
  IF ~~ THEN REPLY ~Тогда я оставлю амулет себе.~ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 8.3
  SAY ~Пожалуйста! В этом нет никакого смысла! У меня нет денег. Я не ношу с собой банк! У меня больше ничего нет!~
  IF ~~ THEN REPLY ~Ладно, давай сколько есть.~ GOTO 14
  IF ~~ THEN REPLY ~Тогда я оставлю амулет себе.~ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: AGNES 3.2
  SAY ~Этот амулет был ценной фамильной реликвией. Высокая цена, но ради безопасности моих любимых, я решил не скупиться.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 7 // Я говорила тебе, что это просто хитрость. Но этот Каллик раздавал свои завуалированные обещания, а ты был готов отдать ему все.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 18 // from: AGNES 3.3
  SAY ~О, если бы вы смогли сделать это, моя благодарность была бы безграничной. Мистер Каллик, кажется... уж слишком задерживается. Он сказал, что пойдет готовить корабль, но ушел вовсе не в сторону моря. Он что-то упоминал об аукционе.~
  IF ~  PartyHasItem("Nwmisc28")~ THEN GOTO 24
  IF ~  !PartyHasItem("Nwmisc28")~ THEN GOTO 25
END

IF ~~ THEN BEGIN 19 // from: AGNES 5
  SAY ~Он сказал, что пойдет готовить корабль, но ушел вовсе не в сторону моря. Он что-то упоминал об аукционе.~
  IF ~  PartyHasItem("Nwmisc28")~ THEN GOTO 24
  IF ~  !PartyHasItem("Nwmisc28")~ THEN GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 10.1
  SAY ~Я имею в виду, он казался честным. А прошло всего... денек...~
  IF ~~ THEN REPLY ~Вы заплатили этим амулетом?~ GOTO 17
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 31
END

IF ~~ THEN BEGIN 21 // from: AGNES 6
  SAY ~Я имею в виду, он казался честным. А прошло всего... денек...~
  IF ~~ THEN REPLY ~Вы заплатили этим амулетом?~ GOTO 17
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 31
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY ~Подозрения моей жены встревожили меня. Мне бы хотелось получить гарантии того, что он вернется. В конце концов, амулет очень ценен для меня.~
  IF ~~ THEN REPLY ~Что значит 'ценно'?~ GOTO 26
  IF ~~ THEN REPLY ~Кто был этот человек?~ GOTO 10
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ GOTO 18
   IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: AGNES 7
  SAY ~Ничего еще не доказано, дорогая. Но все равно, мне хотелось бы получить гарантии. В конце концов, это был ценный амулет. Наследие пращуров.~
  IF ~~ THEN REPLY ~Что значит 'ценно'?~ GOTO 26
  IF ~~ THEN REPLY ~Кто был этот человек?~ GOTO 10
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 31
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~У вас, скорее всего, уже есть объявление об аукционе, вы ведь хорошо знаете этот район. Мне он добра не принес... Я здесь чужой. Пожалуйста, верните мне амулет, если найдете. На нем стоит герб Мастерсонов. Я решил не нарушать карантин; просто хочу вернуть то, что мне принадлежит.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~Вот, можете взять это объявление об аукционе. Я с этими местами незнаком, так что мне оно все равно ни к чему. Пожалуйста, верните мне амулет, если найдете. На нем стоит герб Мастерсонов. Я решил не нарушать карантин; просто хочу вернуть то, что мне принадлежит.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)GiveItem("Nwmisc28",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY ~Ну, надо сказать, что он имеет в первую очередь эмоциональную ценность. Его видели на нашей каминной полке многие поколения.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 8 // Только потому, что ты слишком большой трус, чтобы пользоваться им, Хеммел.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: AGNES 8
  SAY ~Ну, я имею в виду, что у этой вещи были и другие применения, но прошло уже много лет с тех пор, как Мастерсоны прекратили исследовать подземелья.~
  IF ~~ THEN REPLY ~Кто был этот человек?~ GOTO 10
  IF ~~ THEN REPLY ~Думаю, я могу разобраться в этом ради вас.~ GOTO 18
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ EXTERN ~AGNES~ 5
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN REPLY ~Я не собираюсь помогать тебе.~ GOTO 31
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Amulet","LOCALS",0)~ THEN BEGIN 28 // from:
  SAY ~Скажите, вы случайно не видели человека по имени Каллик? У него мой амулет, и он, э, похоже, забыл о нас.~
  IF ~  See("Agnes")!StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN EXTERN ~AGNES~ 2 // Забыл? Я ГОВОРИЛА тебе, что ему нельзя доверять.
  IF ~  OR(2)!See("Agnes")StateCheck("Agnes",CD_STATE_NOTVALID)~ THEN GOTO 1
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Amulet","LOCALS",1)~ THEN BEGIN 29 // from:
  SAY ~Здравствуйте еще раз. Я надеюсь, у вас есть для меня хорошие новости? Я не обнаружил никаких следов Каллика или моего амулета.~
  IF ~  PartyHasItem("Mastamul")~ THEN REPLY ~Вот, у меня ваш амулет.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно, чтобы вы повторили кое-что.~ GOTO 30
  IF ~~ THEN REPLY ~Я подумаю, что тут можно сделать.~ GOTO 18
  IF ~~ THEN REPLY ~У меня нет на это времени. До свидания~ GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY ~Если вам это нужно, только я не знаю, что еще можно добавить.~
  IF ~~ THEN REPLY ~Кто был этот человек?~ GOTO 10
  IF ~~ THEN REPLY ~Вы заплатили этим амулетом?~ GOTO 17
END

IF ~~ THEN BEGIN 31 // from: 3.4
  SAY ~Пожалуйста, надеюсь, ты передумаешь. Этот Каллик воспользовался мной, и я ничего не могу сделать, кроме того, как подсказать тебе, где он.~
  IF ~~ THEN GOTO 19
END

