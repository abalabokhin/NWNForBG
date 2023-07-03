// Бран - оборотень 

BEGIN ~BRUN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Грррр. Убирайся из моей пещеры...~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я Бран, из Порт-Лласта - когда-то был нормальный, пока не схватил эту... гррр... ликантропскую заразу. Почему бы тебе не убрать отсюда свою язвительную морду?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~Ньюрик дал мне эти серебряные амулеты. Я думаю, это тебе поможет.~ GOTO 2
  IF ~~ THEN REPLY ~Расскажи мне, как ты стал оборотнем.~ GOTO 3
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY ~Я должен покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 4
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Слушай, сиди тихо, лады? Я посмотрю, можно ли тебе помочь.~ GOTO 5
  IF ~~ THEN REPLY ~Ты уже выкопал себе могилу, ликантроп? Время умирать.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Грррр... серебро? Ты пытаешься убить меня, не так ли?~
  IF ~~ THEN REPLY ~Не стесняйся, лапушка - они тебя не укусят.~ GOTO 7
  IF ~  RandomNum(2,1)~ THEN REPLY ~Ерунда. Их сделал Ньюрик, а если уж ему не доверять, значит, никому не доверять.~ GOTO 8
  IF ~  RandomNum(2,2)~ THEN REPLY ~Ерунда. Их сделал Ньюрик, а если уж ему не доверять, значит, никому не доверять.~ GOTO 9
  IF ~~ THEN REPLY ~Послушай, детка. Возьми их, или я убью тебя. Вот так все просто.~ GOTO 10
  IF ~~ THEN REPLY ~Ну ладно, детка, копай себе могилу.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Я направился сюда с экспедицией, в ней были сэр Каратис и несколько друзей - Урт, Эндер и Гет. Мы охотились на - гррр - оборотней. Битва, конечно, обернулась не так, как мы рассчитывали. Каратис стал оборотнем - или его убили. Я не знаю. И знать не хочу. Остальные из нас разбежались. Только Эндер избежал участи оборотня.~
  IF ~~ THEN REPLY ~Не знаешь, где я могу найти Урта?~ GOTO 11
  IF ~~ THEN REPLY ~Можешь сказать, где теперь искать Гета?~ GOTO 12
  IF ~~ THEN REPLY ~А где теперь Каратис?~ GOTO 13
  IF ~~ THEN REPLY ~Давай поговорим о чем-нибудь другом.~ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Мое приключенческое кольцо? Грррр. То есть ты не убьешь меня, если я просто отдам его тебе?~
  IF ~~ THEN REPLY ~Я не убью тебя. Обещаю.~ GOTO 15
  IF ~~ THEN REPLY ~Ты уже выкопал себе могилу, ликантроп? Время умирать.~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Гррр... если ты настаиваешь...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.1
  SAY ~Грррр... тогда отнеси его Ньюрику и скажи ему, что я умер, или излечился, или еще чего. Просто оставь меня и мою пещеру в покое, ладно?~
  IF ~~ THEN DO ~SetGlobal("BranFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("BrunRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~Грррр... я умер, когда я стал этой - тварью. Эта битва лишь окончит мои страдания.~
IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~Никто раньше не называл меня так ласково... грррр. Дай мне тогда один из этих оберегов. Я не боюсь его...~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~Гррр... Ньюрик был добр ко мне с тех пор как я был малышом, ведь так же... ну ладно, давай мне один из этих оберегов...~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY ~Точно - я и не доверяю никому. Грррр... Теперь отвали.~
  IF ~~ THEN REPLY ~Послушай, детка. Возьми их, или я убью тебя. Вот так все просто.~ GOTO 10
  IF ~~ THEN REPLY ~Да мне все равно. Сейчас я тебя прикончу.~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY ~Грррр, ты думаешь, я боюсь смерти... дай мне тогда этот оберег, и я докажу тебе это.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY ~Урт сбежал назад в Порт-Лласт. Я пытался остановить его, но - я просто не хотел видеть, как кто-то из Порт-Лласта пострадает.~
  IF ~~ THEN REPLY ~Можешь сказать, где теперь искать Гета?~ GOTO 12
  IF ~~ THEN REPLY ~А где теперь Каратис?~ GOTO 13
  IF ~~ THEN REPLY ~Давай поговорим о чем-нибудь другом.~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 3.2
  SAY ~Гет? Нет... Я не знаю, куда он бежал, если он вообще ухитрился бежать, то есть.~
  IF ~~ THEN REPLY ~Не знаешь, где я могу найти Урта?~ GOTO 11
  IF ~~ THEN REPLY ~А где теперь Каратис?~ GOTO 13
  IF ~~ THEN REPLY ~Давай поговорим о чем-нибудь другом.~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 3.3
  SAY ~Я не знаю, где Каратис, но если б знал, я бы уж нашел его. Он сломал мне жизнь. Это даже не жизнь. Уже нет.~
  IF ~~ THEN REPLY ~Не знаешь, где я могу найти Урта?~ GOTO 11
  IF ~~ THEN REPLY ~Можешь сказать, где теперь искать Гета?~ GOTO 12
  IF ~~ THEN REPLY ~Давай поговорим о чем-нибудь другом.~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 3.4
  SAY ~О чем вы хотите поговорить?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~Ньюрик дал мне эти серебряные амулеты. Я думаю, это тебе поможет.~ GOTO 2
  IF ~~ THEN REPLY ~Я должен покончить с оборотнями. Если ты отдашь мне свое кольцо, я уйду и тебя больше не будут искать.~ GOTO 4
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Слушай, сиди тихо, лады? Я посмотрю, можно ли тебе помочь.~ GOTO 5
  IF ~~ THEN REPLY ~Ты уже выкопал себе могилу, ликантроп? Время умирать.~ GOTO 6
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("BranFraud","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY ~Он - он сработал, я это чувствую. Спасибо тебе огромное. Вот, возьми мое кольцо и отнеси его Ньюрику, чтобы он знал, что я в порядке!~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY ~Фи, в этом месте страшно воняет! Я пойду, дыхну свежим воздухом, не возражаешь?~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADBRUN","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)GiveItem("BrunRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)EscapeAreaObject("Tran2300")~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("BranFraud","GLOBAL",1)~ THEN BEGIN 17 // from:
  SAY ~Он - он сработал, я это чувствую! Я никогда не думал, что стану опять нормальным, но - твоя взяла, я был неправ!~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY ~Фи, в этом месте страшно воняет! Я пойду, дыхну свежим воздухом, не возражаешь?~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADBRUN","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)DestroyItem("BrunRing")IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)EscapeAreaObject("Tran2300")~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 19 // from:
  SAY ~Гррр - Пожалуйста! - Грррррр - Не могу удержать... себя!~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~У меня есть серебряные обереги от Ньюрика.~ GOTO 2
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~Я попробую выяснить, что бы могло тебе помочь. Оставайся здесь.~ GOTO 5
  IF ~~ THEN REPLY ~Я здесь, чтобы убить тебя, Гет. Ты готов?~ GOTO 6
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 20 // from:
  SAY ~Пожалуйста! Я же теперь снова человек! Не убивай меня!~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 21 // from:
  SAY ~Гррр - Пожалуйста! - Грррррр - Не могу удержать... себя!~
  IF ~~ THEN EXIT
END
