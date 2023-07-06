// Холодный лес, Ваат Орк Этот бандит-орк огромный и свирепый, какими они обычно и бывают. -  Голова Ваата 1340 зол 
// Моя сдавайся! Моя сдавайся!

BEGIN ~VAATH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Твоя не слишком умная, раз приходишь в лагерь великого Ваата!~
  IF ~~ THEN DO ~SetGlobal("VaatHostile","MYAREA",1)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",1)~ THEN BEGIN 1 // from:
  SAY ~Твоя не убивать Ваат. Твоя оставляй Ваат жить.~
  IF ~~ THEN REPLY ~Кто ты? Почему ты напал на меня?~ GOTO 2
  IF ~~ THEN REPLY ~Скажи, по какой причине мне стоит оставить тебя в живых!~ GOTO 3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~Зачем мне это? Мне нужна твоя голова.~ GOTO 4
  IF ~~ THEN REPLY ~Если хочешь жить, отвечай на мои вопросы!~ GOTO 5
  IF ~~ THEN REPLY ~Забудь об этом, собака! Настал твой смертный час!~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Твоя не знать могучий Ваат? Моя великий бандит, грабить богатый, отдавать моя! Это лагерь Ваата. Моя нападать, потому что твоя приходить в лагерь. Но твоя сильный. Слишком сильный для Ваат. Может, твоя оставлять Ваат жить?~
  IF ~~ THEN REPLY ~Скажи, по какой причине мне стоит оставить тебя в живых!~ GOTO 3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~Зачем мне это? Мне нужна твоя голова.~ GOTO 4
  IF ~~ THEN REPLY ~Если хочешь жить, отвечай на мои вопросы!~ GOTO 5
  IF ~~ THEN REPLY ~Забудь об этом, собака! Настал твой смертный час!~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Моя давать твоя золото, если твоя не убивать Ваат. 500 золотых, чтобы оставить Ваат жить.~
  IF ~~ THEN REPLY ~Отдай мне золото и убирайся отсюда, не то я передумаю!~ GOTO 7
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~Мне нужно еще кое-что: твоя голова.~ GOTO 8
  IF ~~ THEN REPLY ~Думаю, я попросту убью тебя и заберу твои вещи.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Что? Ваат не дать твоя своя голова! Ваат нужна голова, чтобы жить!~
  IF ~~ THEN REPLY ~Мне она нужна, чтобы получить вознаграждение.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Моя ничего не знать! Моя просто бандит. Но твоя пока не убивать моя... моя иметь вещи, моя отдавать твоя. Моя давать твоя золото, если твоя не убивать Ваат. 500 золотых, чтобы оставить Ваат жить.~
  IF ~~ THEN REPLY ~Отдай мне золото и убирайся отсюда, не то я передумаю!~ GOTO 7
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY ~Мне нужно еще кое-что: твоя голова.~ GOTO 4
  IF ~~ THEN REPLY ~Думаю, я попросту убью тебя и заберу твои вещи.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~Тогда моя умирать, сражаясь!~
  IF ~~ THEN DO ~ApplySpell(Myself,RESTORE_FULL_HEALTH)SetGlobal("VaatHostile","MYAREA",1)Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY ~Твоя великая <MALEFEMALE>! Ваат уходить далеко и не возвращаться!~
  IF ~~ THEN DO ~GivePartyGold("500")EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY ~Стой, моя есть идея! Моя давать твоя голова другой орк. Уже мертвая. Все головы орков для ваша одинаковый! Никто не знать, что этот не Ваат!~
  IF ~~ THEN REPLY ~Отлично. Я отрежу голова у другого орка.~ GOTO 9
  IF ~~ THEN REPLY ~Нет, я лучше отрежу голову с твоих плеч.~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 3.2 с головой и с золотом
  SAY ~Вот, твоя взять эта голова. Теперь не надо убивать Ваат. Твоя взять золото и оставлять Ваат жить, хорошо? Твоя получить награда с другая голова, а моя уходить далеко-далеко. Никто не узнать, что Ваат не мертвая. Это хорошая идея, нет?~
  IF ~~ THEN REPLY ~Думаю, я попросту убью тебя и заберу твои вещи.~ GOTO 6
  IF ~~ THEN REPLY ~Отдай мне золото, поддельную голову и убирайся отсюда, не то я передумаю!~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY ~Твоя великая <MALEFEMALE>! Ваат уходить далеко и не возвращаться!~
  IF ~~ THEN DO ~GiveItemCreate("VAATHEA2",LastTalkedToBy,0,0,0)EscapeAreaDestroy(60)~ EXIT
END

