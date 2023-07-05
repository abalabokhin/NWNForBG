// Гнездо нищих Храм Хельма Бертран   Ищет брата Этот человек сильно взволнован. Он все время оглядывает улицу, очевидно, кого-то ищет.

BEGIN ~BERTRAN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("QuestBroken","LOCALS",0)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Приветствую вас, запоздавшие. Простите мне мое разочарование, но ваше прибытие не принесло мне радости. Но где же мои манеры? Я Бертран. Простите мне мою растерянность. Но у меня была надежда, что... ну, не стоит обременять вас своими проблемами.~
  IF ~~ THEN REPLY ~Чего вы здесь ждете?~ GOTO 1
  IF ~~ THEN REPLY ~Вы только что это сделали. Что вам нужно?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я видел, как люди бежали от зомби. Мы с братом потеряли друг друга в этой суматохе, и у меня была надежда, что он вернется сюда.~
  IF ~~ THEN REPLY ~Расскажите о своем брате.~ GOTO 4
  IF ~~ THEN REPLY ~Вы не знаете, кто-нибудь выжил, или здесь только зомби?~ GOTO 5
  IF ~~ THEN REPLY ~Это единственное безопасное место? Где он может быть?~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Мне очень жаль, вы не так меня поняли, но я действительно несколько в рассеянном состоянии. Я жду своего брата. Мы с ним потеряли друг друга в этой суматохе.~
  IF ~~ THEN REPLY ~Расскажите о своем брате.~ GOTO 4
  IF ~~ THEN REPLY ~Вы не знаете, кто-нибудь выжил, или здесь только зомби?~ GOTO 5
  IF ~~ THEN REPLY ~Это единственное безопасное место? Где он может быть?~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Желаю вам счастливого пути. Если вы позволите, я вернусь к своей службе.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Его зовут Маркус, Маркус Пенхолд. Мне не стоит волноваться. Он может за себя постоять, и у него есть один очень могущественный предмет.~
  IF ~~ THEN REPLY ~Мне никто с таким именем не встречался.~ GOTO 7
  IF ~~ THEN REPLY ~Скорее всего, он погиб на улице.~ GOTO 8
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Маркус? Может, он был магом? Вел Дневник?~ GOTO 9
  IF ~~ THEN REPLY ~Могущественный предмет? Может, мне стоит найти его.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Не многие желают рисковать своей жизнью, путешествуя с места на место. Это место безопасно, но путь туда слишком сложен для большинства людей. Многие люди боятся собираться вместе из-за чумы. Но изоляция - не самый лучший способ борьбы с зомби.~
  IF ~~ THEN REPLY ~Расскажите о своем брате.~ GOTO 4
  IF ~~ THEN REPLY ~Это единственное безопасное место? Где он может быть?~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Скорее всего, он отправился именно туда. Говорят, "Сияющий змей" хорошо укреплен, но думаю, Маркусу не очень нравилось это место.~
  IF ~~ THEN REPLY ~Расскажите о своем брате.~ GOTO 4
  IF ~~ THEN REPLY ~Вы не знаете, кто-нибудь выжил, или здесь только зомби?~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~Очень жаль... ну думаю, с ним все в порядке. Мы с ним еще встретимся, в конце концов.~
  IF ~~ THEN REPLY ~Думаю, он еще найдется.~ GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Мне очень жаль, но зомби убили его. Его тело лежит там...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Ха! Он мертв! Его труп там, на улице, под дюжиной тел зомби!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~Вы этого не знаете. Он очень опытный, и я больше доверяю своему знанию, чем вашим глупым оскорблениям.~
  IF ~~ THEN REPLY ~Думаю, он еще найдется.~ GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Мне очень жаль, но зомби убили его. Его тело лежит там...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Ха! Он мертв! Его труп там, на улице, под дюжиной тел зомби!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY ~Да, это на него похоже. Так вы его видели?~
  IF ~~ THEN REPLY ~Думаю, он еще найдется.~ GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Мне очень жаль, но зомби убили его. Его тело лежит там...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Ха! Он мертв! Его труп там, на улице, под дюжиной тел зомби!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY ~Не советую приближаться к нему с таким жадным взглядом, как у вас. Он хорошо воспитан, но не станет терпеть ваших притязаний. Желаю вам счастливого пути. Если вы позволите, я вернусь к своей службе.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY ~Я не сомневаюсь. Он всегда мог о себе позаботиться. Желаю вам счастливого пути. Если вы позволите, я вернусь к своей службе.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY ~Это... этого не может быть. Я не хочу этому верить. И я не поверю, пока собственными глазами не увижу его вещи.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~Клянусь вам, он был мертв. Вам придется поверить мне на слово.~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~Клянусь вам, он был мертв. Вам придется поверить мне на слово.~ GOTO 15
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~(Показать дневник) Мне попалось его тело. Посмотрите, вот у меня его дневник.~ DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~(Показать дневник) Мне попалось его тело. Посмотрите, вот у меня его дневник.~ GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(Показать посох) Вы узнаете этот посох? Он был на его теле.~ GOTO 18
  IF ~~ THEN REPLY ~Не хочешь, не верь, тупица. Что было, то я и говорю.~ GOTO 19
  IF ~~ THEN REPLY ~Мне бы очень хотелось помочь.~ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY ~Вы смеетесь надо мной в вашей грубой манере. Я не поверю вам, пока не увижу его вещи собственными глазами.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~Клянусь вам, он был мертв. Вам придется поверить мне на слово.~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY ~Клянусь вам, он был мертв. Вам придется поверить мне на слово.~ GOTO 15
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~(Показать дневник) Мне попалось его тело. Посмотрите, вот у меня его дневник.~ DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~(Показать дневник) Мне попалось его тело. Посмотрите, вот у меня его дневник.~ GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(Показать посох) Вы узнаете этот посох? Он был на его теле.~ GOTO 18
  IF ~~ THEN REPLY ~Не хочешь, не верь, тупица. Что было, то я и говорю.~ GOTO 19
  IF ~~ THEN REPLY ~Мне бы очень хотелось помочь.~ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY ~Ваши слова звучат правдиво. Очень правдиво. Придется мне вам поверить. Проклятье, точно придется! Он мертв... Тогда что у вас за намерения? Разве у него ничего не было? У него должна была быть фамильная ценность... посох. Мне бы очень хотелось получить его обратно.~
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~Мне удалось найти его вещи. Я могу отдать их вам.~ GOTO 21
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~Хе, его вещи у меня. Давайте обговорим цену.~ GOTO 22
  IF ~~ THEN REPLY ~Мне бы очень хотелось помочь.~ GOTO 20
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY ~Нет, мне нужны твердые доказательства! Принесите его вещи, и я вам поверю. А до тех пор я буду верить в то, что он еще вернется!~
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~(Показать дневник) Мне попалось его тело. Посмотрите, вот у меня его дневник.~ DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~(Показать дневник) Мне попалось его тело. Посмотрите, вот у меня его дневник.~ GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(Показать посох) Вы узнаете этот посох? Он был на его теле.~ GOTO 18
  IF ~~ THEN REPLY ~Не хочешь, не верь, тупица. Что было, то я и говорю.~ GOTO 19
  IF ~~ THEN REPLY ~Мне бы очень хотелось помочь.~ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY ~Вы продемонстрировали эту книгу без тени сомнения в глазах. Я... Мне придется вам поверить. Я... Я в первый раз слышу, что он что-то писал. А вы... Чего же вы тогда добиваетесь? У вас есть его дневник... а не было ли там чего-нибудь еще? У него была фамильная реликвия, которую я попрошу вас вернуть.~
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~У него был этот посох.~ GOTO 18
  IF ~~ THEN REPLY ~У меня нет других его вещей.~ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 12.4
  SAY ~Нет, я не приму этого. Может, у него и был дневник, он никогда его не показывал. Нет, он может принадлежать кому угодно. Я даже смотреть на него не стану. Если вы хотите убедить меня в его смерти, принесите мне фамильный посох, который он носил, как реликвию. Он бы никогда не расстался с ним. До тех пор я продолжу свое ожидание.~
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~(Показать посох) Вы узнаете этот посох? Он был на его теле.~ GOTO 18
  IF ~~ THEN REPLY ~Не хочешь, не верь, тупица. Что было, то я и говорю.~ GOTO 19
  IF ~~ THEN REPLY ~Мне бы очень хотелось помочь.~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 12.5
  SAY ~Этот... Этот посох - фамильная реликвия нашей семьи... Он бы никогда не расстался с ним. Должно быть, он умер. Мне придется поверить вам. Придется...~
  IF ~~ THEN REPLY ~Давайте обговорим цену.~ GOTO 24
  IF ~~ THEN REPLY ~Вот, возьмите посох.~ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 12.6
  SAY ~Я ни за что не поверю, пока не увижу его вещи. Он жив, я знаю, просто потерялся. Вы ошибаетесь. Идите. И заберите с собой вашу жестокость. Мне нужно продолжать поиски.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.7
  SAY ~Ваши слова меня не утешают. Я не поверю им, пока не увижу его вещи. Не поверю. Пожалуйста, позвольте мне продолжать поиски. Пожалуйста.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY ~Я не могу поверить...~
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~У него был этот посох.~ GOTO 18
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY ~У него был дневник. Возьмите его.~ GOTO 28
  IF ~~ THEN REPLY ~Вообще-то, это была ошибка. У меня нет его вещей.~ GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 14.2
  SAY ~Цена? Давайте скажем прямо... Вы хотите получить с меня деньги за вещи моего покойного брата? Что же вы за сквалыга...~
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY ~У меня его дневник. Я отдам его вам.~ GOTO 28
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY ~Я требую награды за его дневник.~ GOTO 27
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~У меня его посох. Можете просто забрать его.~ GOTO 25
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY ~У меня его посох. Думаю, вы за него хорошо заплатите.~ GOTO 24
  IF ~~ THEN REPLY ~Вообще-то, это была ошибка. У меня нет его вещей.~ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 16.1
  SAY ~Это очень жестоко. Оставьте меня наедине с моим горем.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 22.4
  SAY ~Что ж, похоже, у меня нет выбора. Если я хочу получить свою фамильную реликвию, которую держал в руках мой брат в свой СМЕРТНЫЙ ЧАС, видно, мне придется заплатить. Что ж, так и быть. Тогда вот вам мое предложение. У меня есть 600 золотых. Ни больше ни меньше. Полагаю, этого будет достаточно?~
  IF ~~ THEN REPLY ~Этого вполне хватит. Возьмите посох.~ GOTO 29
  IF ~~ THEN REPLY ~Этого недостаточно. Я требую большего.~ GOTO 30
END

IF ~~ THEN BEGIN 25 // from: 18.2 22.3
  SAY ~Благодарю вас. Скажу вам по правде, это была ужасная ночь. Если бы пришлось торговаться за то, что достойно лишь уважения... Это было бы ужасно. Ваш дар - единственное, что останется мне на память. У меня больше не осталось золота, но я благодарю вас. А теперь, пожалуйста, оставьте меня наедине с моими мыслями.~
  IF ~~ THEN DO ~TakePartyItem("MarcusS")DestroyItem("MarcusS")AddexperienceParty(50000)SetGlobal("Staff","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY ~Это очень жестокая шутка. Оставьте меня наедине с моим горем. Сейчас у меня не хватит терпения на такие вещи.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY ~Понятно. Что ж, похоже, если я хочу увидеть последние слова, написанные моим братом, мне придется заплатить. Ну что ж, хорошо. У меня есть 400 золотых. Не больше, и не меньше. Полагаю, этого будет достаточно?~
  IF ~~ THEN REPLY ~Этого вполне хватит. Забирайте этот дурацкий журнал.~ GOTO 31
  IF ~~ THEN REPLY ~Нет, этого недостаточно.~ GOTO 32
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY ~Благодарю вас. По крайней мере, мне вернули какую-то его часть. Это его не заменит, но... хотя бы что-то.~
  IF ~~ THEN DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.1
  SAY ~Возьмите ваше проклятое грязное золото! Чтоб вам им подавиться!~
  IF ~~ THEN DO ~TakePartyItem("MarcusS")DestroyItem("MarcusS")GiveGoldForce(600)AddexperienceParty(20000)SetGlobal("Staff","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.2
  SAY ~Послушайте, у меня больше ничего нет! Ничего! Я не собираюсь с вами торговаться! У меня 600 золотых! Берите или нет, но перестаньте насмехаться надо мной!~
  IF ~~ THEN REPLY ~Этого вполне хватит. Возьмите посох.~ GOTO 29
  IF ~~ THEN REPLY ~Что ж, тогда вы ничего не получите.~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY ~Возьмите ваше проклятое грязное золото! Чтоб вам им подавиться!~
  IF ~~ THEN DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")GiveGoldForce(400)SetGlobal("Journal","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY ~У меня больше ничего нет! И не надо со мной торговаться! Возьмете вы это или нет, но перестаньте насмехаться надо мной!~
  IF ~~ THEN REPLY ~Этого вполне хватит. Забирайте этот дурацкий журнал.~ GOTO 31
  IF ~~ THEN REPLY ~Что ж, тогда вы ничего не получите.~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY ~Тогда прочь отсюда, собака! Жалкая тварь! Надеюсь, в каждом сне тебя будет преследовать дух моего брата!~
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)~ EXIT
END

// -------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY ~Приятно увидеть дружелюбное лицо. В последнее время, в ожидании брата, я вижу только зомби.~
  IF ~~ THEN REPLY ~Расскажите о своем брате.~ GOTO 4
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Мне очень жаль, но зомби убили его. Его тело лежит там...~ GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY ~Ха! Он мертв! Его труп там, на улице, под дюжиной тел зомби!~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// -------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)OR(2)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)OR(2)!Global("Journal","LOCALS",0)!Global("Staff","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY ~Приветствую... Здесь вы будете в безопасности, хотя я не знаю, почему я здесь... Теперь я знаю, что он мертв... Поиски моего брата закончены. Я знаю, что он мертв. Я просто... не могу это осознать. Не могу смириться.~
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~Мне удалось найти его вещи. Я могу отдать их вам.~ GOTO 21
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY ~Хе, его вещи у меня. Давайте обговорим цену.~ GOTO 22
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// -------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)!Global("Journal","LOCALS",0)!Global("Staff","LOCALS",0)~ THEN BEGIN 36 // from:
  SAY ~Это не лучшее утешение, полагаю, но теперь я могу принять его путь. Мой брат был хорошим человеком, понимаете?~
  IF ~~ THEN EXIT
END

// -------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",1)~ THEN BEGIN 37 // from:
  SAY ~Странно, правда? Почему в людях растет зло, когда другие слабеют? Хорошо, что мой брат не дожил до этого момента и не видел, на что способны люди.~
  IF ~~ THEN EXIT
END

