// Доки Таверна Сиди Повар  человек толстый  Этот большой мужчина явно охраняет дверь позади него, но он не похож на хорошо обученного охранника. Захожу в дверь – там стоит шеф-повар. Чтобы пройти надо узнать пароль (а вообще пройти можно всеми возможными способами). Подымаюсь на этаж выше. В конце коридора справа в бане сидит и парится Ульфанг, который говорит пароль к подвалу. 

BEGIN ~CHEFNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Password","LOCALS",0)OpenState("Door4",FALSE)~ THEN BEGIN 0 // from:
  SAY ~Не надо меня беспокоить. Я не просил эту работу, и она мне не нужна. Просто говорите пароль и проходите, как все остальные. И не надо меня спрашивать ни о каком ключе. Если вы знаете пароль, то у вас должен быть свой ключ. У меня его нет.~
  IF ~~ THEN REPLY ~Кто вы? Что вы делаете?~ GOTO 1
  IF ~~ THEN REPLY ~Вам нужен пароль?~ GOTO 2
  IF ~~ THEN REPLY ~Можно поинтересоваться, что это за таверна, и что находится под ней?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Кто, я? Я - повар, и эти "Кровавые моряки" поставили меня сюда охранять дверь, потому что они уже потеряли из-за мора слишком много людей. Мне это все равно. Я предпочитаю готовить. А теперь, если вы знаете пароль, говорите.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~Что ж, дорогуша, может, мы сможем... что-нибудь придумать?~ GOTO 8
  IF ~~ THEN REPLY ~Может, несколько золотых заставят вас забыть, что вам нужен пароль?~ GOTO 9
  IF ~~ THEN REPLY ~Пропусти меня, или я скормлю тебе твой же позвоночник!~ GOTO 10
  IF ~~ THEN REPLY ~Я не знаю пароля.~ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Да, тупица, пароль. Если эта дверь откроется до того, как я услышу пароль, я должен позвать стражу. Теперь говорите пароль.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~Что ж, дорогуша, может, мы сможем... что-нибудь придумать?~ GOTO 8
  IF ~~ THEN REPLY ~Может, несколько золотых заставят вас забыть, что вам нужен пароль?~ GOTO 9
  IF ~~ THEN REPLY ~Пропусти меня, или я скормлю тебе твой же позвоночник!~ GOTO 10
  IF ~~ THEN REPLY ~Я не знаю пароля.~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Послушайте, я просто повар. Я заменяю "Кровавого моряка", который умер от чумы. Если у вас дела внизу, хорошо. Просто говорите пароль и проходите.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~Что ж, дорогуша, может, мы сможем... что-нибудь придумать?~ GOTO 8
  IF ~~ THEN REPLY ~Может, несколько золотых заставят вас забыть, что вам нужен пароль?~ GOTO 9
  IF ~~ THEN REPLY ~Пропусти меня, или я скормлю тебе твой же позвоночник!~ GOTO 10
  IF ~~ THEN REPLY ~Я не знаю пароля.~ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Не беспокойте меня больше. С меня достаточно того, что я торчу здесь весь день напролет.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Хорошо, мне это подходит. На самом деле, для этой ночи не так уж плохо. Если с вами кто-нибудь есть, могут тоже заходить. Мне надоело следить за их глупой дверью. Я свое отработал, теперь я ухожу.~
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Знаете, думаю, вы правы. Да забери бесы эти все пароли! Я им не стражник! Я им не дворецкий! Вы хотите пройти через дверь, проходите. На самом деле, я даже скажу всем, что вы знаете пароль.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 12
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Нет, не думаю, что это стоит делать. Я не стражник, но эти "Кровавые моряки" - непростые клиенты.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~Что ж, дорогуша, может, мы сможем... что-нибудь придумать?~ GOTO 8
  IF ~~ THEN REPLY ~Может, несколько золотых заставят вас забыть, что вам нужен пароль?~ GOTO 9
  IF ~~ THEN REPLY ~Пропусти меня, или я скормлю тебе твой же позвоночник!~ GOTO 10
  IF ~~ THEN REPLY ~Я не знаю пароля.~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~Ну что ж, просто не могу отказать такой хорошенькой мордашке. А, в бездну все. Я не стражник. Зачем они вообще меня попросили здесь стоять? Вы хотите пройти через дверь, проходите. На самом деле, я даже скажу всем, что вы знаете пароль.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 12
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~Об этом я ничего не знаю. Тот факт, что вы меня спрашиваете, означает, что вам здесь не место.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)PartyGoldGT(49)~ THEN REPLY ~Как насчет 50 золотых, чтобы вы отвернулись и меня не заметили?~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)PartyGoldGT(49)~ THEN REPLY ~Как насчет 50 золотых, чтобы вы отвернулись и меня не заметили?~ GOTO 15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)PartyGoldGT(99)~ THEN REPLY ~Как насчет 100 золотых, чтобы вы отвернулись и меня не заметили?~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)PartyGoldGT(99)~ THEN REPLY ~Как насчет 100 золотых, чтобы вы отвернулись и меня не заметили?~ GOTO 17
  IF ~  PartyGoldGT(199)~ THEN REPLY ~200 золотых помогут вам забыть обо мне, хмм?~ GOTO 18
  IF ~~ THEN REPLY ~Я просто проверяю вас. Не обращайте внимания.~ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~Что? Нет, спасибо! Я не собираюсь из-за этого драться! Стража! Стража!~
  IF ~~ THEN DO ~SetGlobal("Guards","MYAREA",1)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7
  SAY ~Тогда убирайтесь и больше меня не отвлекайте. Если вы не знаете пароль, тогда вам здесь не место.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Пусть сами смотрят за своими проклятыми дверями. Да, бесы их побери.~
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Естественно, вам все равно придется открыть дверь. Об этом я ничего не знаю. Если вам надо вниз, у вас должен быть свой ключ.~
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY ~Думаю, это подойдет. Вы мне нравитесь, и вообще, что я здесь делаю, возле этой двери? Я повар! Вы хотите пройти через дверь, проходите. На самом деле, я даже скажу всем, что вы знаете пароль.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 20
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 21
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY ~Нет, не думаю, что это стоит делать. Я не стражник, но эти "Кровавые моряки" - непростые клиенты.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Как насчет 100 золотых, чтобы вы отвернулись и меня не заметили?~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Как насчет 100 золотых, чтобы вы отвернулись и меня не заметили?~ GOTO 17
  IF ~~ THEN REPLY ~200 золотых помогут вам забыть обо мне, хмм?~ GOTO 18
  IF ~~ THEN REPLY ~Я просто проверяю вас. Не обращайте внимания.~ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY ~Думаю, этого будет достаточно. То есть, зачем они вообще просили меня караулить эту дверь?! Я же повар. Повар! Вы хотите пройти через дверь, проходите. На самом деле, я даже скажу всем, что вы знаете пароль.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 22
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY ~Нет, я не хочу рисковать своей шеей за такую сумму. Вы мне не нравитесь. Неужели у вас не найдется предложения получше?.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~~ THEN REPLY ~200 золотых помогут вам забыть обо мне, хмм?~ GOTO 18
  IF ~~ THEN REPLY ~Я просто проверяю вас. Не обращайте внимания.~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 9.5
  SAY ~Кажется, неплохая сделка. То есть, зачем они вообще просили меня охранять эту дверь? Я же повар! Вы хотите пройти через дверь, проходите. На самом деле, я даже скажу всем, что вы знаете пароль.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 24
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 9.6
  SAY ~Это значит, что вы знаете пароль или все же нет?~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~Пароль 'Угловой камень'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~Если вам все равно, может, просто забудем об этом?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~Что ж, дорогуша, может, мы сможем... что-нибудь придумать?~ GOTO 8
  IF ~~ THEN REPLY ~Может, несколько золотых заставят вас забыть, что вам нужен пароль?~ GOTO 9
  IF ~~ THEN REPLY ~Пропусти меня, или я скормлю тебе твой же позвоночник!~ GOTO 10
  IF ~~ THEN REPLY ~Я не знаю пароля.~ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY ~Пусть сами смотрят за своими проклятыми дверями. Да, бесы их побери.~
  IF ~~ THEN DO ~TakePartyGold(50)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY ~Естественно, вам все равно придется открыть дверь. Об этом я ничего не знаю. Если вам надо вниз, у вас должен быть свой ключ.~
  IF ~~ THEN DO ~TakePartyGold(50)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY ~Пусть сами смотрят за своими проклятыми дверями. Да, бесы их побери.~
  IF ~~ THEN DO ~TakePartyGold(100)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.2
  SAY ~Естественно, вам все равно придется открыть дверь. Об этом я ничего не знаю. Если вам надо вниз, у вас должен быть свой ключ.~
  IF ~~ THEN DO ~TakePartyGold(100)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~Пусть сами смотрят за своими проклятыми дверями. Да, бесы их побери.~
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~Естественно, вам все равно придется открыть дверь. Об этом я ничего не знаю. Если вам надо вниз, у вас должен быть свой ключ.~
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Password","LOCALS",0)OpenState("Door4",TRUE)~ THEN BEGIN 26 // from:
  SAY ~Да, так кто открыл дверь? Я никого не пущу без пароля, есть у них ключ или нет. Конечно, не то чтобы мне было до этого дело. Зачем они поставили повара охранять эту глупую дверь, кто его знает.~
  IF ~~ THEN REPLY ~Кто вы? Что вы делаете?~ GOTO 1
  IF ~~ THEN REPLY ~Вам нужен пароль?~ GOTO 2
  IF ~~ THEN REPLY ~Можно поинтересоваться, что это за таверна, и что находится под ней?~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Password","LOCALS",0)~ THEN BEGIN 27 // from:
  SAY ~Не надоедайте мне, хорошо? Моя часть работы с дверью закончена, и мне все равно, кто теперь через нее пройдет.~
  IF ~~ THEN EXIT
END

