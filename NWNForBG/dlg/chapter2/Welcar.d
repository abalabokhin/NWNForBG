// Велкар - человек-друид стоит в лагере

BEGIN ~WELCAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 0 // from:
  SAY ~Приветствую, путник. Добро пожаловать в рощу. Мое имя Велкар, а с кем имею честь?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Я <CHARNAME>. Ты выглядишь очень дружелюбно.~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Мы группа приключенцев под предводительством <CHARNAME>.~ GOTO 1
  IF ~~ THEN REPLY ~Это не твое дело. Как насчет ответить на несколько вопросов?~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ох, как же я взволнован. Ты вряд ли в курсе, но я недавно прошел очень важное испытание.~
  IF ~~ THEN REPLY ~Что это было за испытание?~ GOTO 3
  IF ~~ THEN REPLY ~Да кому это интересно. Я всего лишь хочу, чтобы ты ответил на вопросы.~ GOTO 2
  IF ~~ THEN REPLY ~Поздравляю. Как ты смотришь на то, чтобы ответить на пару вопросов?~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Ты знаешь, даже твои скверные манеры не ухудшают мое настроение. Что у тебя за вопросы?~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 7
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~Я только что стал защитником четвертого круга в этой роще.~
  IF ~~ THEN REPLY ~Что это значит?~ GOTO 9
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Ладно. Что ты хочешь спросить?~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 7
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Сейчас самые главные новости - это про то, что животные в Лесу начали нападать на всех подряд. Мне даже не позволяют больше выходить из рощи. Некоторые говорят, Дух Леса сошел с ума и всех зверей свел с ума тоже. Я на самом-то деле не очень себе представляю, что происходит, поскольку в последний месяц все время торчу здесь, в роще. Тебе надо поговорить об этом с Аавиллом, если нужна еще информация.~
  IF ~~ THEN REPLY ~Кто такой Аавилл?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 7
  IF ~~ THEN REPLY ~Да вроде ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~Аавилл - наш архидруид. Он управляет всеми остальными друидами, чтобы они все вместе работали на благо Леса. Если ты хочешь помочь нам со всякими местными проблемами, я предложил бы тебе поговорить с ним.~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 7
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~Я защитник четвертого круга друидов в этой роще.~
  IF ~~ THEN REPLY ~Что это значит?~ GOTO 9
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY ~Ну ладно, удачи!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 7.1
  SAY ~Если друид приходит в рощу и хочет присоединиться к нам, тогда он или она должны поговорить с Джаэр о том, чтобы бросить вызов защитнику четвертого круга. Если бросивший вызов победит, он или она присоединяется к четвертому кругу. Джаэр как раз недавно повысила меня до защитника.~
  IF ~~ THEN REPLY ~И как ты получил это повышение?~ GOTO 10
  IF ~~ THEN REPLY ~Я хочу задать несколько других вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Ладно. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~Это долгая история. Я не хотел бы утомлять тебя ей. У вас есть еще вопросы?~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Я вижу, ты снова здесь. Могу я тебе чем-нибудь помочь?~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~~ THEN REPLY ~Кто здесь главный?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы здесь делаете?~ GOTO 7
  IF ~~ THEN REPLY ~У меня нет вопросов. До свидания.~ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 12 // from:
  SAY ~Вы согласились помочь нашему лесу? Это трудная задача, удачи вам. Да пребудет с вами Сильванус.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY ~Благодаря тебе наш лес снова живет прежней жизнью. Благодарю тебя, пусть тебе всегда сопутствует удача!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 13 // from:
  SAY ~Дух леса мертв! Наш лес никогда не станет прежним, это огромная потеря!~
  IF ~~ THEN EXIT
END
