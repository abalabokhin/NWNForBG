// Гет - оборотень 

BEGIN ~GETH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Что ты здесь делаешь? Зачем ты здесь? Я не желаю, чтобы меня беспокоили.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Прости. Я ухожу.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Гет - некогда обычный человек, а не ужасный зверь - родом из Порт-Лласта. Зачем тебе это знать?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряные обереги от Ньюрика.~ GOTO 3
  IF ~~ THEN REPLY ~Как ты стал оборотнем?~ GOTO 4
  IF ~~ THEN REPLY ~Меня послали покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я попробую выяснить, что бы могло тебе помочь. Оставайся здесь.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я здесь, чтобы убить тебя, Гет. Ты готов?~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Спасибо...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Серебро? Может, я и не питаю иллюзий по поводу своего будущего, но все же не хотел бы преждевременного конца.~
  IF ~~ THEN REPLY ~Если ты хочешь изменить будущее, сделай это сам.~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~Этот оберег - от Ньюрика. Он безопасен.~ GOTO 9
  IF ~  RandomNum(2,2)~ THEN REPLY ~Этот оберег - от Ньюрика. Он безопасен.~ GOTO 10
  IF ~~ THEN REPLY ~Бери оберег, а то я тебя прикончу.~ GOTO 11
  IF ~~ THEN REPLY ~Да мне все равно. Сейчас я тебя прикончу.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Каратис привел сюда меня и несколько моих друзей: Урта, Брана и Эндера. Он хотел, чтобы мы помогли ему убить оборотня. Звучало все весело, и вот как закончилось. Все побежали. И все мы стали оборотнями, кроме Эндера. Насколько я знаю, его не поймали.~
  IF ~~ THEN REPLY ~Ты знаешь, где мне найти других?~ GOTO 12
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряные обереги от Ньюрика.~ GOTO 3
  IF ~~ THEN REPLY ~Меня послали покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я попробую выяснить, что бы могло тебе помочь. Оставайся здесь.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я здесь, чтобы убить тебя, Гет. Ты готов?~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Ладно, бери. Мне оно не нужно. Вряд ли оно что-то изменит в моей жизни.~
  IF ~~ THEN DO ~SetGlobal("GethFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("GetRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~Как будто есть смысл ходить куда-то. Но ты не поймешь. Ладно, прощай - просто оставь меня в покое.~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~Я не боюсь смерти - смерти зверя, в которого превратился. Если ты здесь, чтобы убить меня, так я не буду тебе мешать.~
IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~Полагаю, это разумно. Если я буду сидеть тут и ничего не делать, так ничего и не изменится, верно? Ладно, давай свой серебряный амулет.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Я чую проблеск надежды. Может, и правда? Ладно, давай свой амулет и посмотрим, что будет.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~Каратис сказал мне, что с ним я буду в безопасности, и погляди на меня сейчас. Нет, думаю, я отклоню твое предложение.~
  IF ~~ THEN REPLY ~Бери оберег, а то я тебя прикончу.~ GOTO 11
  IF ~~ THEN REPLY ~Да мне все равно. Сейчас я тебя прикончу.~ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 3.4
  SAY ~Ну, если такой у меня выбор, полагаю, лучше мне взять этот оберег. Смерть такая, смерть сякая - какая разница?~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY ~Нет, не знаю. И я устал от этого разговора. Может, мы его закончим, ты не против?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряные обереги от Ньюрика.~ GOTO 3
  IF ~~ THEN REPLY ~Меня послали покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я попробую выяснить, что бы могло тебе помочь. Оставайся здесь.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я здесь, чтобы убить тебя, Гет. Ты готов?~ GOTO 7
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("GethFraud","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Я - опять человек! Это что - шутка? Или все это видится мне во сне? Хотел бы я, чтобы это оказалось правдой! О, бери мое кольцо и отнеси его Ньюрику. ~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~Я не нахожу себе места от радости. Я снова человек! Спасибо тебе, добрая душа, спасибо. Я твой должник навеки!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADGET","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)GiveItem("GetRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)EscapeArea()~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("GethFraud","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY ~Я - опять человек! Это что - шутка? Или все это видится мне во сне? Хотел бы я, чтобы это оказалось правдой!~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY ~Я не нахожу себе места от радости. Я снова человек! Спасибо тебе, добрая душа, спасибо. Я твой должник навеки!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADGET","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)DestroyItem("GetRing")IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)EscapeArea()~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 15 // from:
  SAY ~Гррр - Пожалуйста! - Грррррр - Не могу удержать... себя!~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряные обереги от Ньюрика.~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я попробую выяснить, что бы могло тебе помочь. Оставайся здесь.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я здесь, чтобы убить тебя, Гет. Ты готов?~ GOTO 7
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 16 // from:
  SAY ~Довольно крови! Я больше не собираюсь на тебя нападать!~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 17 // from:
  SAY ~Гррр - Пожалуйста! - Грррррр - Не могу удержать... себя!~
  IF ~~ THEN EXIT
END
