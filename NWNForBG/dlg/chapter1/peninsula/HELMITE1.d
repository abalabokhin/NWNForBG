// Полуостров Жрец Хельма   Эльф Облачение этого человека украшено гордым символом Хельма. Он с подозрением ловит ваш взгляд, но затем приветливо улыбается.

BEGIN ~HELMITE1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Эй, там, давай я благословлю тебя живой водой, которую держал в своей руке Страж? Она охранит тебя от чумы, хотя бы на время.~
  IF ~~ THEN REPLY ~Да, пожалуйста, дайте мне благословление Хельма.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~Не ответите ли вы мне на пару вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Нет, спасибо, а что еще вы можете предложить?~ GOTO 3
  IF ~~ THEN REPLY ~Нет, нет. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Да будет благословлено это дитя смертных владений, омытое успокаивающими водами, благословленными Дестером во имя Хельма. Пусть Его око наблюдает за твоей судьбой.~
  IF ~~ THEN REPLY ~Не ответите ли вы мне на пару вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Нет, спасибо, а что еще вы можете предложить?~ GOTO 3
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Что вам хотелось бы узнать?~
  IF ~~ THEN REPLY ~Расскажите мне о Дестере, вашем настоятеле.~ GOTO 5
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Что это за ожерелье у вас и ваших жрецов?~ GOTO 8
  IF ~~ THEN REPLY ~Что вы знаете о Воющей Смерти?~ GOTO 9
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Храм предлагает услуги, если вам интересно.~
  IF ~~ THEN REPLY ~В таком случае, покажи мне, что у тебя есть.~ DO ~StartStore("Helmite1",LastTalkedToBy(Myself))~ EXIT
  IF ~  Global("Robbed","LOCALS",0)~ THEN REPLY ~Стало быть, у тебя есть при себе золото?~ GOTO 10
  IF ~  GlobalGT("Robbed","LOCALS",0)~ THEN REPLY ~Стало быть, у тебя есть при себе золото?~ GOTO 11
  IF ~~ THEN REPLY ~У меня остались еще вопросы.~ GOTO 2
  IF ~~ THEN REPLY ~Мне ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Идите спокойно. Да пребудет с вами удача в предстоящих невзгодах.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY ~Рыцарь-хранитель Дестер святой человек, это точно. Он был призван присматривать за Невервинтером из Шилдмита. Это великая честь. Мы все пришли с ним из Замка Хельма и прибыли сюда через несколько дней после того, как леди Арибет объявила карантин.~
  IF ~~ THEN REPLY ~Какие услуги вы предлагаете?~ GOTO 3
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Что это за ожерелье у вас и ваших жрецов?~ GOTO 8
  IF ~~ THEN REPLY ~Что вы знаете о Воющей Смерти?~ GOTO 9
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY ~С ополчением я был в безопасности. Но я бы сказал, что все это отвлекает меня от святой миссии целительства, согласитесь?~
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 3
  IF ~~ THEN REPLY ~Расскажите мне о Дестере, вашем настоятеле.~ GOTO 5
  IF ~~ THEN REPLY ~Что это за ожерелье у вас и ваших жрецов?~ GOTO 8
  IF ~~ THEN REPLY ~Что вы знаете о Воющей Смерти?~ GOTO 9
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY ~Похоже на то, что за всем этим стоит одно из уотердипских существ. Стражники сейчас подавляют последние очаги сопротивления...~
  IF ~~ THEN REPLY ~Мне нужны услуги храма.~ GOTO 3
  IF ~~ THEN REPLY ~Расскажите мне о Дестере, вашем настоятеле.~ GOTO 5
  IF ~~ THEN REPLY ~Что это за ожерелье у вас и ваших жрецов?~ GOTO 8
  IF ~~ THEN REPLY ~Что вы знаете о Воющей Смерти?~ GOTO 9
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY ~Да... Святой символ Хельма. ну, как видите, это открытая перчатка, символизирующая... мир, приносимый присутствием вооруженного защитника. Мы -защищаем. А в центре ладони - глаз. Глаза очень важны. Они все видят, все знают, говорят с нами. Они смотрят и познают. Да.~
  IF ~~ THEN REPLY ~Какие услуги вы предлагаете?~ GOTO 3
  IF ~~ THEN REPLY ~Расскажите мне о Дестере, вашем настоятеле.~ GOTO 5
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы знаете о Воющей Смерти?~ GOTO 9
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY ~Это ужасная чума со смертельным исходом, от нее нет никакого лекарства. Да, верующие остаются невредимы - ни у одного хельмита нет нарывов... Мы лишены оков, дабы приносить утешительное благословление.~
  IF ~~ THEN REPLY ~Какие услуги вы предлагаете?~ GOTO 3
  IF ~~ THEN REPLY ~Расскажите мне о Дестере, вашем настоятеле.~ GOTO 5
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 6
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY ~Что вы знаете о бунте в тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Что это за ожерелье у вас и ваших жрецов?~ GOTO 8
  IF ~~ THEN REPLY ~Мне больше ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY ~Ну да, есть немного. А почему ты спрашиваешь?~
  IF ~~ THEN REPLY ~Отдавай, быстро! Иначе я тебя прикончу!~ GOTO 12
  IF ~~ THEN REPLY ~Да ничего. Давай вернемся к другим вопросам.~ GOTO 2
  IF ~~ THEN REPLY ~Забудь. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY ~Кое-кто уже решил, что меня пора избавить от излишков золота. Я не мог драться с ними, на это у меня просто нет времени.~
  IF ~~ THEN REPLY ~В таком случае, покажи мне, что у тебя есть.~ DO ~StartStore("Helmite1",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~У меня остались еще вопросы.~ GOTO 2
  IF ~~ THEN REPLY ~Мне ничего не нужно. Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY ~Тупица! Я служу Дестеру! Это тебе так просто с рук не сойдет!~
  IF ~~ THEN REPLY ~Я служу Арибет. Меня никто не заподозрит, если твой труп найдут здесь!~ GOTO 13
  IF ~~ THEN REPLY ~Прошу прощения, я вообще-то не хочу вредить тебе.~ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~Ха! У меня на эти глупости нет времени. Хочешь получить те крохи золота, которые у меня есть? Хорошо! Вот, это все, что у меня есть с собой. У меня нет времени на споры или драки. Я выполняю ответственную работу, которую нельзя прерывать из-за твоего мелкого желания стибрить, что плохо лежит. Просто учти, я тебя приметил, как и их всех... Иди, но ты еще получишь по заслугам в свое время.~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)GiveGoldForce(166)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~Не знаю, что ты там собираешься делать, но я в этом не участвую. Уходи.~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)Global("Robbed","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY ~О, у вас такое мрачное лицо... не хотите ли, чтобы я очистил вас живой водой, которую держал в своей руке Страж? Она охранит вас от чумы, хотя бы на время.~
  IF ~~ THEN REPLY ~Да, пожалуйста, дайте мне благословление Хельма.~ DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ GOTO 1
  IF ~~ THEN REPLY ~Не ответите ли вы мне на пару вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Нет, спасибо, а что еще вы можете предложить?~ GOTO 3
  IF ~~ THEN REPLY ~Нет, нет. Я пойду.~ GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 16 // from:
  SAY ~Видеть тебя не хочу! Проваливай, и дай мне вернуться к работе!~
  IF ~~ THEN EXIT
END

