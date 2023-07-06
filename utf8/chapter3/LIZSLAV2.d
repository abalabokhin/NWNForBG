// Форт Илкард Руины Расы Созидателей - в прошлом Рабочий раб, Человек  По железному воротнику на шее этого человека можно с уверенностью сказать, что он - раб.

BEGIN ~LIZSLAV2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY ~Улак сабба пор! Поад хайса уть патчеа феа гал!~
  IF ~~ THEN REPLY ~Прошу прощения, я ничего не могу понять.~ GOTO 1
  IF ~~ THEN REPLY ~Что ты хочешь сказать?~ GOTO 1
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Джула ва пекито. Раува асагус.~
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))Global("PlayerTalk","LOCALS",0)~ THEN BEGIN 2 // from:
  SAY ~Ты не можешь находиться здесь! Если Госпожи поймают сбежавшего раба в комнате големов, они убьют и тебя и меня!~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 3
  IF ~~ THEN REPLY ~Я не беглый раб! Я гость из далекого будущего.~ GOTO 4
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Я один из рабов, которым Хозяйки приказали строить големов. Когда големов достроят, они станут неразрушимыми стражами убежища. Мне под страхом мучительной смерти запрещено разговаривать с другими рабами. Вот почему тебе не стоит быть здесь!~
  IF ~~ THEN REPLY ~Я не беглый раб! Я гость из далекого будущего.~ GOTO 4
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Госпожам наплевать кто ты и что ты! Ты не из Расы Созидателей и они уничтожат тебя, если поймают здесь!~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 3
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~Я расскажу тебе все, что смогу, но потом тебе непременно надо уйти! Не могу рисковать - тебя ведь могут сцапать прямо тут!~
  IF ~~ THEN REPLY ~Что ты можешь мне рассказать о Расе Созидателей?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы тут строите?~ GOTO 8
  IF ~~ THEN REPLY ~Я ищу одно из Слов Власти.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY ~Будь осторожнее! Если Госпожи тебя поймают, они прикажут всех рабов избить... или еще хуже!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Я могу рассказать тебе лишь самые простые вещи. Люди Ящера крепко держат весь мир в кулаке. Они порабощают нас, считая низшими расами, заставляют нас прислуживать Госпожам-рептилиям до самой смерти. Они дикие и жестокие, и не заботятся о тех, кто им служит. Много рабов погибло во время строительства этого комплекса под кнутами Господ. Боюсь, это все, что я знаю о Расе Созидателей.~
  IF ~~ THEN REPLY ~Что вы тут строите?~ GOTO 8
  IF ~~ THEN REPLY ~Я ищу одно из Слов Власти.~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Госпожи заставляют нас строить огромное хранилище. Когда его завершат, оно будет охраняться магическими защитами дыма, света и звука, и кроме того, стражами-големами, над которыми я работаю.~
  IF ~  Global("PlayerTalk","LOCALS",0)~ THEN REPLY ~Что ты можешь мне рассказать о стражах-големах?~ GOTO 10
  IF ~~ THEN REPLY ~Что ты говорил про магических стражей?~ GOTO 11
  IF ~~ THEN REPLY ~Ты знаешь, что будет храниться в убежище?~ GOTO 12
  IF ~~ THEN REPLY ~Благодарю за помощь. Теперь мне пора.~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~Извини, никогда не слышал о подобных вещах. Но я всего лишь раб, рожденный, чтобы прислуживать. Мое знание ограничено тем, что расскажет мне моя Госпожа. Может, ты хочешь знать еще что-нибудь?~
  IF ~~ THEN REPLY ~Что ты можешь мне рассказать о Расе Созидателей?~ GOTO 7
  IF ~~ THEN REPLY ~Что вы тут строите?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~Когда постройка закончится, хранилище будут охранять три неразрушимых стража: големы невосприимчивы к любой физической или магической атаке. Я должен сделать одного из этих големов.~
  IF ~~ THEN REPLY ~Могу ли я как-то убедить тебя не доделывать голема?~ GOTO 13
  IF ~~ THEN REPLY ~Что ты говорил про магических стражей?~ GOTO 11
  IF ~~ THEN REPLY ~Ты знаешь, что будет храниться в убежище?~ GOTO 12
  IF ~~ THEN REPLY ~Благодарю за помощь. Теперь мне пора.~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~Когда постройка закончится, убежище будут защищать три системы: дыма, света и звука. Как только их включат, каждую систему можно будет выключить только из особой комнаты, внутри комплекса, где находятся механизмы, которые дают энергию каждой системе.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY ~Госпожи не говорили о том, что будет храниться в хранилище. Но, пока делаются магические системы, которые будут охранять хранилище, оно пусто и неохраняемое. Любой может войти, но есть риск быть пойманным Госпожами.~
  IF ~  Global("PlayerTalk","LOCALS",0)~ THEN REPLY ~Что ты можешь мне рассказать о стражах-големах?~ GOTO 10
  IF ~~ THEN REPLY ~Что ты говорил про магических стражей?~ GOTO 11
  IF ~~ THEN REPLY ~Благодарю за помощь. Теперь мне пора.~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY ~Если я не доделаю голема, Госпожи будут пытать меня, пока я не стану умолять о смерти... и они подберут для меня ее худший вариант.~
  IF ~~ THEN REPLY ~Я могу освободить тебя из рабства.~ GOTO 15
  IF ~~ THEN REPLY ~Я могу дать тебе золото. Много золота!~ GOTO 16
  IF ~  PartyHasItem("Lokarrng")~ THEN REPLY ~Вот кольцо Локара. Он сказал, что ты мне поможешь.~ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY ~Я не знаю секрета выключения систем, но мне кажется, тебе придется решить загадки дыма, света и звука, чтобы пройти их. И, как только моя работа будет закончена, придется проходить еще и големов.~
  IF ~  Global("PlayerTalk","LOCALS",0)~ THEN REPLY ~Что ты можешь мне рассказать о стражах-големах?~ GOTO 10
  IF ~~ THEN REPLY ~Ты знаешь, что будет храниться в убежище?~ GOTO 12
  IF ~~ THEN REPLY ~Благодарю за помощь. Теперь мне пора.~ GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY ~Куда мне идти? Проклятые ящерицы правят всем миром! Я буду обречен жить все время в бегах, зная ужасную судьбу, которая ждет, если меня поймают. Я привилегированный раб высокого ранга. У меня есть собственный угол и приличная еда. Мне позволено заводить спутницу и меня редко бьют. Ты не можешь предложить ничего сравнимого с этим.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Прошу, если ты мне поможешь, это будет сильнейший удар по тирании Расы Созидателей.~ GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Прошу, если ты мне поможешь, это будет сильнейший удар по тирании Расы Созидателей.~ GOTO 19
  IF ~~ THEN REPLY ~Я могу дать тебе золото. Много золота!~ GOTO 16
  IF ~  PartyHasItem("Lokarrng")~ THEN REPLY ~Вот кольцо Локара. Он сказал, что ты мне поможешь.~ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY ~Зачем мне золото? У меня не может быть собственности, я ничего не смогу купить. Если Госпожи его у меня найдут, то отберут и, без сомнений, высекут меня как вора. Я привилегированный раб высокого ранга. У меня есть собственный угол и приличная еда. Мне позволено заводить спутницу и меня редко бьют. Ты не можешь предложить ничего сравнимого с этим.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Прошу, если ты мне поможешь, это будет сильнейший удар по тирании Расы Созидателей.~ GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Прошу, если ты мне поможешь, это будет сильнейший удар по тирании Расы Созидателей.~ GOTO 19
  IF ~~ THEN REPLY ~Я могу освободить тебя из рабства.~ GOTO 15
  IF ~  PartyHasItem("Lokarrng")~ THEN REPLY ~Вот кольцо Локара. Он сказал, что ты мне поможешь.~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY ~Ну и чего ты молчишь об этом? Если тебя послал Локар, значит, твоя миссия жизненно важна для судеб всех, кто живет в рабстве у Расы Созидателей! Если я не дострою голема, Госпожи узнают, что я помогал тебе. Но я могу сделать голема с одним хитрым изъяном, который они не смогут обнаружить. Это даст одну серьезную уязвимость для голема.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY ~В тебе есть что-то странное. Ты больше, чем просто сбежавший раб. Возможно, ты говоришь правду. Если я стану тебе помогать, для меня это будет огромный риск, но он того стоит, если тебе удастся нанести подобный удар Госпожам. Если я не дострою голема, Госпожи узнают, что я помогал тебе. Но я могу сделать голема с одним хитрым изъяном, который они не смогут обнаружить. Это даст одну серьезную уязвимость для голема.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.2
  SAY ~Извини, но риск слишком велик. Я не стану помогать тебе и, если ты меня убьешь, они просто найдут другого раба вместо меня. Голем все равно будет построен. Ты никак не убедишь меня.~
  IF ~  PartyHasItem("Lokarrng")~ THEN REPLY ~Вот кольцо Локара. Он сказал, что ты мне поможешь.~ GOTO 17
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY ~Я могу сделать один изъян. Если сделаю больше, Хозяйки наверняка заметят. Мне сделать голема уязвимым для огня, холода, дробящего оружия или режущего и колющего оружия?~
  IF ~~ THEN REPLY ~Огонь.~ GOTO 21
  IF ~~ THEN REPLY ~Холод.~ GOTO 22
  IF ~~ THEN REPLY ~Дробящее оружие.~ GOTO 23
  IF ~~ THEN REPLY ~Режущее и колющее оружие.~ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~Я все сделаю. Однако мои изменения будут лишь в том големе, которого делаю я. Есть и другие големы и тебе стоит поговорить с рабами, которые их делают, иначе другие големы будут неуязвимыми. Прошу, уходи, пока Госпожи тебя здесь не увидели.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY ~Я все сделаю. Однако мои изменения будут лишь в том големе, которого делаю я. Есть и другие големы и тебе стоит поговорить с рабами, которые их делают, иначе другие големы будут неуязвимыми. Прошу, уходи, пока Госпожи тебя здесь не увидели.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.3
  SAY ~Я все сделаю. Однако мои изменения будут лишь в том големе, которого делаю я. Есть и другие големы и тебе стоит поговорить с рабами, которые их делают, иначе другие големы будут неуязвимыми. Прошу, уходи, пока Госпожи тебя здесь не увидели.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.4
  SAY ~Я все сделаю. Однако мои изменения будут лишь в том големе, которого делаю я. Есть и другие големы и тебе стоит поговорить с рабами, которые их делают, иначе другие големы будут неуязвимыми. Прошу, уходи, пока Госпожи тебя здесь не увидели.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Fire","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY ~Не беспокойся, мы сделаем голема уязвимым для огня, как ты просишь.~
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для холода.~ GOTO 26
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для дробящего оружия.~ GOTO 27
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для режущего и колющего оружия.~ GOTO 28
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Cold","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY ~Не беспокойся, мы сделаем голема уязвимым для холода, все, как ты просишь.~
  IF ~~ THEN REPLY ~Нет, я думаю, что мне нужно другое. Я хочу, чтобы голем стал уязвимым для огня.~ GOTO 30
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для дробящего оружия.~ GOTO 31
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для режущего и колющего оружия.~ GOTO 32
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",0)SetGlobal("Golem2_Afraid1_of_Crushing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",0)SetGlobal("Golem2_Afraid1_of_Slashing","GLOBAL",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Crushing","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY ~Не беспокойся, мы сделаем голема уязвимым для дробящего оружия, все, как ты просишь.~
  IF ~~ THEN REPLY ~Нет, я думаю, что мне нужно другое. Я хочу, чтобы голем стал уязвимым для огня.~ GOTO 34
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для холода.~ GOTO 35
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для режущего и колющего оружия.~ GOTO 36
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Slashing","GLOBAL",1)~ THEN BEGIN 37 // from:
  SAY ~Не беспокойся, мы сделаем голема уязвимым для режущего и колющего оружия, все, как ты просишь.~
  IF ~~ THEN REPLY ~Нет, я думаю, что мне нужно другое. Я хочу, чтобы голем стал уязвимым для огня.~ GOTO 38
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для холода.~ GOTO 39
  IF ~~ THEN REPLY ~Нет, мне нужно другое. Я хочу, чтобы голем стал уязвимым для дробящего оружия.~ GOTO 40
  IF ~~ THEN REPLY ~Мне хотелось бы задать несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Мне нужно идти.~ GOTO 6
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.3
  SAY ~Мы сделаем как ты скажешь.~
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",1)~ EXIT
END

