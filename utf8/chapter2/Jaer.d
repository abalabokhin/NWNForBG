// Джаэр - полуэльф-друид женщина стоит в лагере распорядитель поединков

BEGIN ~JAER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Ничто не позволит испытать силу духа так, как жизнь в опасные времена! А ты как думаешь, бродяга?~
  IF ~~ THEN REPLY ~Да! Я каждый день испытываю судьбу, чтобы доказывать свою ценность.~ GOTO 1
  IF ~~ THEN REPLY ~Уф... ну да. Я думаю, ты любишь драться?~ GOTO 2
  IF ~~ THEN REPLY ~Я думаю, что лучше всего мне было бы жить в тихие, спокойные времена.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Великолепно! Я поставлю тебе стакан, потом, после работы. Правда, я тут всегда на работе, на страже природы. Ха! И что я могу для тебя сегодня сделать?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~Что здесь происходит?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Это обязанность того, кто следует природе. Выживает сильнейший, а единственный способ стать сильней - выдержать бой с достойным противником. И что я могу для тебя сегодня сделать?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~Что здесь происходит?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Тьфу! А что мы получаем вместе с миром? Слабость! Жизнь становится легкой, народ становится жирным и ленивым, потом приходит кто-нибудь с настоящей силой и забирает все. Так работает природа. Ты действительно думаешь, что все образуется, если сидеть на одном месте и ждать, пока проблемы решатся сами собой?~
  IF ~~ THEN REPLY ~Нет. Есть время драться и время говорить, но мудрые знают разницу.~ GOTO 9
  IF ~~ THEN REPLY ~На свете мало такого, чего нельзя добиться, используя мозг вместо мускулов.~ GOTO 9
  IF ~~ THEN REPLY ~Вот из-за таких недоумков, как ты, в мире царят война и разрушение.~ GOTO 10
  IF ~~ THEN REPLY ~Будешь еще выпендриваться тут, я тебе покажу, как выживает сильнейший!~ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Что ж, благодаря тебе все вернулось в более-менее нормальное состояние. Что-нибудь еще?~
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Все делают все возможное, чтобы оправиться от смерти Духа. Пройдет немало времени, но эта битва стоит того. Что-нибудь еще?~
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Прямо сейчас нам предстоит битва с Духом Леса. Он заставляет животных нападать на все и всех, будто они обезумели. Нет никакого удовольствия убивать взбесившихся животных. Я предлагаю тебе поговорить об этом с Аавиллом, если хочешь помочь. Он руководит этим расследованием. А у меня и здесь достаточно дел.~
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Ну хорошо. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~Я отвечаю за испытания на вхождение в круги друидов. Если друид хочет занять место в нашей роще, он или она должен вызвать на поединок одного из нас, чтобы войти в первый круг.~
  IF ~~ THEN REPLY ~Могу ли я вызвать одного из друидов?~ GOTO 12
  IF ~~ THEN REPLY ~Ну хорошо. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY ~Иди и проверь себя с достойным противником. Это укрепит твой характер и сделает тебя сильнее.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~Оттачивание разума - часть развития. Но не забывай: сильное тело и сильный разум должны объединиться, чтобы создать совершенное целое. И что я могу для тебя сегодня сделать?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~Что здесь происходит?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~И на этой реплике, я думаю, наш разговор можно окончить. Возвращайся, когда решишь изменишь свое мнение. До свидания.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.4
  SAY ~Великолепно! Ты подтверждаешь мои слова делами. Я-то боялась, что ты из этих глупых и слабых пацифистов! Что я могу для тебя сегодня сделать?~
  IF ~  Global("SpiritSaved","GLOBAL",1)~ THEN REPLY ~Что здесь происходит?~ GOTO 4
  IF ~  Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 5
  IF ~  Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~Хоть твое желание и вызывает у меня уважение, только друид из нашего леса может бросить вызов и войти в круг. Ты ведь искатель приключений? Сегодня ты здесь, а завтра тебя уже и не найдешь. Прощай.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Я вижу, ты снова здесь. Могу я тебе чем-нибудь помочь?~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~Чем ты здесь занимаешься?~ GOTO 7
  IF ~~ THEN REPLY ~Пожалуй, ничего. До свидания.~ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 14 // from:
  SAY ~Вы решили помочь нашему лесу? Вас ждет славная битва. Да пребудет с вами Сильванус.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY ~Что ж, благодаря тебе все вернулось в более-менее нормальное состояние. Должно быть это была славная битва!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 16 // from:
  SAY ~Мы делаем все возможное, чтобы оправиться от смерти Духа. Пройдет немало времени, но эта битва стоит того.~
  IF ~~ THEN EXIT
END
