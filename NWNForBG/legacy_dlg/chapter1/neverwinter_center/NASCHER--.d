// Центр Невервинтера  Зал ритуала   Лорд Нашер ликует. У лорда Нашера царственная осанка, его легко можно представить себе искателем приключений в молодости. Тем не менее, на его теле видны ранние признаки чумы.  Global("MedicineTalkNWN","MYAREA",5) - можно начать ритуал

BEGIN ~NASCHER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Итак, должно быть вы - <CHARNAME>. Арибет рассказала мне обо всем, что вы сделали. Нужно признать, я весьма ценю вашу помощь.~ [NASHE050]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // 0.1
  SAY ~Приятно знать, что можно рассчитывать на простого странника, готового прийти на помощь Невервинтеру в это нелегкое время.~ [NASHE075]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~Хотелось бы попросить вас не вмешиваться в дела моих доверенных советников. Я полностью доверяю Фентику, а он поручился за Дестера, так что я доверяю и ему тоже.~ [NASHE052]
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Спасибо вам, но этот ритуал будут проводить Арибет, Фентик и Дестер. Подробности не должны вас волновать.~ [NASHE063]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Порядка не будет, пока мы не поймаем и не покараем преступников, наславших эту чуму. Никогда еще моему Невервинтеру не наносили таких глубоких ран.~ [NASHE064]
  IF ~  CheckStatGT(LastTalkedToBy,10,CHR)~ THEN REPLY ~Судя по расспросам в портовом районе, вы были знакомы с Венгаулом Кровавым Парусом?~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,11,CHR)~ THEN REPLY ~Судя по расспросам в портовом районе, вы были знакомы с Венгаулом Кровавым Парусом?~ GOTO 12
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~Если вам так нужна информация о моих доверенных советниках, могу посоветовать обратиться непосредственно к ним. Они получили инструкцию, оказывать содействие.~ [NASHE071]
  IF ~~ THEN REPLY ~Но они все имеют разные мнения.~ GOTO 13
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 4
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Не забивайте себе этим голову. Замок Невервинтер хорошо укреплен, и ничто не помешает проведению ритуала. Единственное, что сейчас имеет значение - это лекарство.~ [NASHE053]
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from:
  SAY ~Да, лучше будет, если мы немедленно начнем ритуал. Приготовьтесь, чуме настает конец.~ [NASHE054]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~Да, лучше будет, если мы немедленно начнем ритуал. Приготовьтесь, чуме настает конец.~ [NASHE054]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~Прощайте. Позвольте мне еще раз поблагодарить вас за все, что вы сделали для Невервинтера. Мало кто смог бы сделать столько же, сколько вы.~ [NASHE055]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from:
  SAY ~Прощайте. Позвольте мне еще раз поблагодарить вас за все, что вы сделали для Невервинтера. Мало кто смог бы сделать столько же, сколько вы.~ [NASHE055]
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 11 // from:
  SAY ~Венгаул? Да, у меня есть отчеты о его деятельности в порту. Во времена моей бурной молодости мы, бывало, сталкивались, но... теперь все изменилось.~ [NASHE065]
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 12 // from:
  SAY ~У меня когда-то были кое-какие дела с этим негодяем, но сейчас не время обсуждать это. Эпидемия - это не в его стиле. Слишком мерзко для него.~ [NASHE069]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY ~Вы имеете в виду разногласия между Арибет, Фентиком и Дестером? Да, они все предлагали разные способы борьбы с чумой. Таково было мое требование.~ [NASHE072]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14 // from:
  SAY ~О, и не забудьте поговорить со всеми остальными. Они, несомненно, захотят поблагодарить вас за помощь.~ [NASHE062]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY ~О, и не забудьте поговорить со всеми остальными. Они, несомненно, захотят поблагодарить вас за помощь.~ [NASHE062]
  IF ~~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY ~Нужно было бы непременно разыскать его, но у меня слишком... мало сил. Поединок с ним бросит тень на битвы, в которых мы участвовали раньше. А сейчас есть новые преступники, которыми мне нужно заняться.~ [NASHE066]
  IF ~~ THEN REPLY ~Тоже разбойники, но не те, с какими вы привыкли иметь дело.~ GOTO 17
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from:
  SAY ~Нет, ничего подобного. Эти трусы сразу спрятались в кусты, пока мы тут сохли и умирали от чумы, как какие-то старые развалины...~ [NASHE067]
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY ~(кхм) Ну, может, Венгаул и хочет вернуть старые добрые времена, но у меня есть много обязанностей, и... Я не стану его оправдывать.~ [NASHE068]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 19 // from:
  SAY ~Мне не нужны советники и офицеры, которые повторяют все друг за другом. Мне было нужно, чтобы были использованы все возможности, и неважно, все ли там согласны или нет.~ [NASHE073]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY ~А теперь мне ясно, что Арибет была права, предложив вашу помощь, а Фентик был прав, когда так яростно защищал Дестера. Скоро лекарство будет у нас в руках.~ [NASHE074]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 4
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 21 // from:
  SAY ~Я могу уделить вам минутку, но сказать мне особо нечего. Вам нужно поговорить со всеми остальными, чтобы мы смогли начать церемонию.~ [NASHE077]
  IF ~  GlobalGT("KnowAboutDester","MYAREA",0)~ THEN REPLY ~Фентик говорит, что он раскрыл Дестеру тайну защитных заклинаний замка.~ GOTO 2
  IF ~~ THEN REPLY ~Мне хотелось бы спросить про ритуал.~ GOTO 3
  IF ~~ THEN REPLY ~Теперь все будет хорошо?~ GOTO 4
  IF ~~ THEN REPLY ~У меня есть вопросы о тех, кто здесь присутствует.~ GOTO 5
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 7
  IF ~  GlobalGT("MedicineTalkNWN","MYAREA",3)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 8
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",0)~ THEN REPLY ~До свидания.~ GOTO 9
  IF ~  GlobalLT("MedicineTalkNWN","MYAREA",4)Global("Blanc","LOCALS",1)~ THEN REPLY ~До свидания.~ GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",0)~ THEN BEGIN 22 // from:
  SAY ~Предательство! Нас предали, лекарство от чумы украдено, и мне предлагается поверить в то, что во всем этом замешан Фентик?! Кто-то непременно поплатится за это головой!~ [NASHE078]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY ~Вы, <CHARNAME>, должны призвать Дестера к ответу. Мы обязаны отыскать его и потребовать объяснений! И у Фентика тоже!~ [NASHE079]
  IF ~~ THEN REPLY ~Похоже, что Дестер оказался предателем. А вы сами как считаете?~ GOTO 24
  IF ~~ THEN REPLY ~Что вы можете сказать по поводу того, что сделал Фентик?~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from:
  SAY ~Не знаю, что и сказать по этому поводу. Если Дестер был против нас с самого начала, то его злодеяния коснулись каждого из нас... Каждую жертву чумы...~ [NASHE080]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from:
  SAY ~Его поступки выглядят очень глупо. Если он не найдет себе достойного оправдания, его ждет суровое наказание. Можно было бы пойти ему навстречу, но у меня уже не осталось совершенно никакого терпения.~ [NASHE090]
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from:
  SAY ~У нас были подозрения, что чума эта неестественна, что это что-то вроде диверсии, но у меня в голове не укладывается, что один из нас активно препятствовал тому, чтобы мы излечили ее...~ [NASHE081]
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from:
  SAY ~Эта чума изуродовала Невервинтер. А я видел и попытки отравления. А теперь эти нападения, которые сеют смятение и панику... Это уже слишком.~ [NASHE091]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from:
  SAY ~ Мне совершенно непонятны мотивы этого человека. Он, несомненно, хочет, чтобы мы страдали, но вот зачем - этого я не могу понять.~ [NASHE082]
  IF ~~ THEN REPLY ~Дестера нужно убить?~ GOTO 30
  IF ~~ THEN REPLY ~Что это за люди, которым Дестер велел напасть на нас?~ GOTO 31
  IF ~~ THEN REPLY ~Что вы можете сказать по поводу того, что сделал Фентик?~ GOTO 25
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from:
  SAY ~Я больше никому не доверяю. Если Фентик был замешан в этом нападении, его обвинят вместе с Дестером, и быстрое правосудие не заставит себя ждать. Народ потребует этого.~ [NASHE092]
  IF ~~ THEN REPLY ~Зачем ему идти за Дестером?~ GOTO 33
  IF ~~ THEN REPLY ~А что такого натворил Фентик? Пока я не вижу никакого преступления.~ GOTO 34
  IF ~~ THEN REPLY ~Похоже, что Дестер оказался предателем. А вы сами как считаете?~ GOTO 24
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from:
  SAY ~ Дестер заслуживает смертной казни, как и все его сообщники, но мне нужно знать, почему это произошло, почему на мой Невервинтер было совершено нападение!~ [NASHE083]
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 31 // from:
  SAY ~ На первый взгляд они выглядели как собратья хельмитов, которые раздавали благословения по всему городу. Думаю, если Дестер был фальшивкой, то и они, должно быть, тоже.~ [NASHE086]
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 32 // from:
  SAY ~Идите быстрее, пока Арибет удерживает этот портал. Невервинтеру... *МНЕ* нужны объяснения!~ [NASHE089]
  IF ~~ THEN DO ~SetGlobal("Blanc2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY ~Я не знаю, зачем ему понадобилось следовать за Дестером, но зато мне удалось узнать кое-что об эльфах за все годы общения с ними.~ [NASHE093]
  IF ~  OR(2)Race(LastTalkedToBy(Myself),ELF)Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 37
  IF ~  !Race(LastTalkedToBy(Myself),ELF)!Race(LastTalkedToBy(Myself),HALF_ELF)~ THEN GOTO 38
END

IF ~~ THEN BEGIN 34 // from:
  SAY ~Невервинтер  - это честный город, но такая трагедия может очень многое изменить. Граждане потребуют справедливости. Им будет нужна голова врага, насаженная на кол.~ [NASHE098]
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 35 // from:
  SAY ~ И у нас до сих пор нет лекарства... Ритуал ничем не был нарушен, так что Дестер, скорее всего, забрал себе чистый результат. Нужно вернуть его.~ [NASHE084]
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 36 // from:
  SAY ~ Я пошлю стражников обыскать храм хельмитов, и попытаюсь понять, чего же все-таки хотели достичь эти люди. Вам же я доверю найти самого Дестера.~ [NASHE087]
  IF ~~ THEN REPLY ~Дестера нужно убить?~ GOTO 30
  IF ~~ THEN REPLY ~Что вы можете сказать по поводу того, что сделал Фентик?~ GOTO 25
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 37 // from:
  SAY ~Вы ведь тоже эльф, так что должны все понять. Разум человека вам кажется неприятным. Вы живете дольше, вы меняетесь постепенно и перемены занимают больше времени.~ [NASHE094]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 38 // from:
  SAY ~Мне объяснили, что разум человека отличается от разума эльфа. Эльфы живут гораздо дольше и меняются постепенно. Они дольше думают.~ [NASHE095]
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY ~Они не будут церемониться с очевидными предателями. Каковы бы ни были его мотивы, Фентик выступал за Дестера много раз, так что и его запятнало это сотрудничество.~ [NASHE099]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from:
  SAY ~ Как только у меня будет лекарство - как только у ВСЕХ нас будет лекарство - тогда Дестера будут судить, его заговор и его хозяев разоблачат, и все они понесут наказание.~ [NASHE085]
  IF ~~ THEN REPLY ~Что это за люди, которым Дестер велел напасть на нас?~ GOTO 31
  IF ~~ THEN REPLY ~Что вы можете сказать по поводу того, что сделал Фентик?~ GOTO 25
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 41 // from:
  SAY ~Фентик и Арибет - молодые эльфы. Я не могу судить о том, что сделал Фентик, но, вероятно, он не понимает, насколько быстро может измениться человек, или притворяется, что не понимает.~ [NASHE096]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42 // from:
  SAY ~Если он не предоставит нам достаточно веских оправданий, я не думаю, что все закончится благополучно для него. Арибет знает, что должно случиться. Думаю, все мы знаем.~ [NASHE100]
  IF ~~ THEN REPLY ~Зачем ему идти за Дестером?~ GOTO 33
  IF ~~ THEN REPLY ~А что такого натворил Фентик? Пока я не вижу никакого преступления.~ GOTO 34
  IF ~~ THEN REPLY ~Похоже, что Дестер оказался предателем. А вы сами как считаете?~ GOTO 24
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

IF ~~ THEN BEGIN 43 // from:
  SAY ~Вчера Дестер был нам другом, а сегодня стал врагом? Эльф и за всю жизнь не смог бы так перемениться. Думаю, один день - это полнейшая чушь.~ [NASHE97]
  IF ~~ THEN REPLY ~Зачем ему идти за Дестером?~ GOTO 33
  IF ~~ THEN REPLY ~А что такого натворил Фентик? Пока я не вижу никакого преступления.~ GOTO 34
  IF ~~ THEN REPLY ~Похоже, что Дестер оказался предателем. А вы сами как считаете?~ GOTO 24
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)Global("Blanc2","LOCALS",1)~ THEN BEGIN 44 // from:
  SAY ~Мне уже надоели люди, стоящие передо мной без дела, когда наше лекарство в руках у негодяев! Разыщите Дестера! И Фентика! Я смогу все объяснить!~ [NASHE101]
  IF ~~ THEN REPLY ~Похоже, что Дестер оказался предателем. А вы сами как считаете?~ GOTO 24
  IF ~~ THEN REPLY ~Что вы можете сказать по поводу того, что сделал Фентик?~ GOTO 25
  IF ~~ THEN REPLY ~До свидания.~ GOTO 32
END

