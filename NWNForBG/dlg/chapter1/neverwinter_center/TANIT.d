// Маска лунного камня 3 этаж Танит   Куртизан   Этот мужчина безразлично осматривает комнату и терпеливо ждет своего следующего клиента.

BEGIN ~TANIT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",0)Global("TanitTired","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~Здравствуйте, мадам. Я Танит. Я постараюсь сделать так, чтобы этот ваш визит в Маску был самым приятным.~ [TANIT54]
  IF ~~ THEN REPLY ~Я буду говорить с вами... И не только говорить.~ GOTO 1
  IF ~~ THEN REPLY ~Есть дела поважнее разговоров, а?~ GOTO 2
  IF ~~ THEN REPLY ~Ладно, куколка. Мне не разговоры нужны.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Уверен, моя леди, что мы хорошо проведем время. У вас есть пропуск? Маленькая формальность, я уверен, мы с вами приятно поболтаем.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 47
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Не нужно быть такой... Грубой. Только достаньте пропуск, и мы продолжим. Полагаю, вы смените тон на более приятный?~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 47
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~С таким тоном вам здесь делать нечего. Пропуск может купить вам мое время, но подобное поведение больше подходит для грязной таверны.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 47
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~До свидания. Может, мы еще встретимся и поговорим. Не забудьте достать пропуск. Их выдает бармен.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Прекрасно, <CHARNAME>. А теперь расскажите мне о себе. Что вас заботит? Здесь, в "Маске", мы все очень хорошо умеем слушать.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 48
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 11
  IF ~~ THEN REPLY ~Забудь про разговоры! Давай лучше позу выберем!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 47 // from: 1.1
  SAY ~Прекрасно, а теперь расскажите мне о себе. Что вас заботит? Здесь, в "Маске", мы все очень хорошо умеем слушать.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 48
  IF ~~ THEN REPLY ~Забудь про разговоры! Давай лучше позу выберем!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Мне жаль, но я не могу говорить с вами, если у вас его нет. Простите. Обратитесь к бармену, он вам его продаст.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Важные люди не всегда доверяют тем, кому есть до них дело. Я могу быть и помощником, и другом, если нужно. Скажите, что вас беспокоит?~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Я сильная. Ничего мне не страшно.~ GOTO 15
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Я? Этой ночью я буду, кем вы пожелаете. Если хотите, могу быть и верным другом, если вам это необходимо.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 18
  IF ~~ THEN REPLY ~Это очень самоотверженно - вот так растрачивать себя.~ GOTO 19
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 39
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 39 // from: 8.6
  SAY ~Послушайте, если вы хотите с кем-то подраться, то ищите приключений на улице. Я не желаю участвовать в словесной дуэли.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~Если это - то, чего вы хотите. Я бы не советовал, но я сделаю все, что в моих силах.~
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 23
  IF ~  RandomNum(2,1)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 25
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~Какая леди! Я бы с радостью, <CHARNAME>, но позвольте спросить, что вы от меня ожидаете? Как далеко можно зайти?~
  IF ~~ THEN REPLY ~Давай приляжем. И этого довольно.~ GOTO 40
  IF ~~ THEN REPLY ~Нежные ласки будут как нельзя кстати. Я еще не устала.~ GOTO 41
  IF ~~ THEN REPLY ~Утоми меня. Утоми как следует. Мужчина-зверь.~ GOTO 42
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 48 // from: 5.4
  SAY ~Какая леди! С радостью, но позвольте спросить, что вы от меня ожидаете? Как далеко можно зайти?~
  IF ~~ THEN REPLY ~Давай приляжем. И этого довольно.~ GOTO 40
  IF ~~ THEN REPLY ~Нежные ласки будут как нельзя кстати. Я еще не устала.~ GOTO 41
  IF ~~ THEN REPLY ~Утоми меня. Утоми как следует. Мужчина-зверь.~ GOTO 42
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 40 // from: 10.1
  SAY ~Понимаю. Спите спокойно, моя леди. Я пригляжу за вами.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",3)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 10.2
  SAY ~Думаю, это можно исполнить, моя леди. Следуйте за мной, мы немного пригасим этот яркий свет.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 10.3
  SAY ~Ну, я думаю, это можно устроить. Следуйте за мной. Держитесь крепче. Держитесь.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY ~Я не хочу вас обидеть, но... Моя леди, мне нужно чуть больше времени, чтобы познать вашу... внутреннюю красоту.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY ~Моя драгоценная леди, я был бы счастлив выполнить вашу просьбу... Попозже. Давайте... Не будем торопиться. А низменные устремления - для них где угодно найдется место.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY ~Это ваше право, но если вы захотите поговорить со мной еще раз, вам придется купить другой пропуск. Вы действительно желаете уйти?~
  IF ~~ THEN REPLY ~Я побуду здесь еще.~ GOTO 26
  IF ~~ THEN REPLY ~Мне нужно идти. Прощайте~ GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~Неудивительно, что вы так себя чувствуете. Многие важные люди страдают от тоски, которую ничем не избыть, помимо их огромной ответственности. Вы можете все мне рассказать. Я не собираюсь ни осуждать, ни превозносить вашу позицию. Я здесь, с вами - можно отбросить стеснение. Вы честны перед собой, и следуете выбранному пути потому, что он вам подходит. Вы - женщина, которая знает, что ей нужно.~
  IF ~~ THEN REPLY ~Ничего страшного. Я это выдержу.~ GOTO 15
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY ~Не сомневаюсь в ваших способностях, но нужно ли скрывать свои чувства? Женщины, обладающие властью, часто думают, что нужда - это та же слабость.~
  IF ~  Class(Player1,THIEF)~ THEN GOTO 28
  IF ~  OR(2)Class(Player1,DRUID)Class(Player1,RANGER)~ THEN GOTO 29
  IF ~  OR(3)Class(Player1,CLERIC)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN GOTO 30
  IF ~  OR(2)Class(Player1,MAGE)Class(Player1,BARD)~ THEN GOTO 31
  IF ~  Class(Player1,FIGHTER)~ THEN GOTO 32
  IF ~  !Class(Player1,THIEF)
!Class(Player1,DRUID)
!Class(Player1,RANGER)
!Class(Player1,CLERIC)!Class(Player1,PALADIN)!Class(Player1,MONK)!Class(Player1,MAGE)!Class(Player1,BARD)!Class(Player1,FIGHTER)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 7.4
  SAY ~Конечно. Мы можем делать все, что ты захочешь. В пределах разумного, конечно. Главное - это настроение.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 48
  IF ~  RandomNum(2,2)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 11
  IF ~~ THEN REPLY ~Забудь про разговоры! Давай лучше позу выберем!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY ~Понимаю. Как женщине, вам наверняка порой приходится скрывать свои истинные чувства. Мне не нравится ваш тон, но я все понимаю.~
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 39
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY ~Думаю, мне вас уже хватило. Идите, и забирайте с собой свои проблемы.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY ~Многие, кто приходит сюда, сами не знают, чего хотят. Я пытаюсь помочь им. Пытаюсь облегчить их тревоги. Некоторым людям лишь нужен внимательный слушатель. Я стараюсь проявить сдержанность и понимание, которое они, возможно, не находят у мужчин в своей жизни.~
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 39
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY ~Я рос в доме с пятью сестрами. Когда я вырос, я не смог работать рабочим в доках или дровосеком. Думаю, я немного потерял.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 18
  IF ~~ THEN REPLY ~Это очень самоотверженно - вот так растрачивать себя.~ GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Что *мне* нужно? Ага, ясно. Вы делаете это, чтобы помочь другим. Ха!~ GOTO 39
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY ~Послушайте, если вы хотите с кем-то подраться, то ищите приключений на улице. Я не желаю участвовать в словесной дуэли. Мое дело - слушать. Если вы не верите в мою честность, дверь у вас за спиной. Так... О чем вы хотите поговорить?~
  IF ~~ THEN REPLY ~Я не потерплю грубости.~ GOTO 33
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY ~Вы выглядите так, словно вы умело обращаетесь с оружием, кроме того вы обладаете и другими талантами. Такая разносторонность и тяга к сражениям может отпугнуть ваших друзей. Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY ~Простите, но Офала не разрешает говорить об этом. Боится, что мы накаркаем. Мы хотим, чтобы Маска Лунного Камня была чистым местом.~
  IF ~~ THEN REPLY ~Сказать, что вы поможете сыграть свою значительную роль в изгнании  чумы.~ GOTO 38
  IF ~  RandomNum(2,1)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 25
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY ~Люди презирают женщин этой профессии, но я прямо-таки развратный дьявол. Это их проблема, а не моя. Если вы мне не верите, я ничего не могу с этим поделать. Дверь за вами. Можете открыть ее и уйти. Или остаться.~
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 23
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 9.3
  SAY ~Думаю, мне вас уже хватило. Идите, и забирайте с собой свои проблемы.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY ~Я рад. Может, мы еще поговорим?~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~Может мы... Пойдем к вам в спальню?~ GOTO 48
  IF ~  RandomNum(2,2)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY ~Тогда до встречи. Пропуски продаются у бармена.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY ~Вы ведете себя довольно грубо. Невоспитанно. Возможно, вы любите играть с людьми. Это может отпугнуть от вас друзей. Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY ~Вы похожи на того, кто любит природу. Хорошее занятие, но не отталкивает ли оно от вас друзей? Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 15.3
  SAY ~Вы выглядите довольно набожной, уверенной в своей духовной стороне. Если друзья вас не понимают, они могут отдалиться от вас. Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY ~Вы выглядите так, словно знаете много тайных вещей. Возможно, из-за этого вы одиноки? Некоторых людей это настораживает. Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 15.5
  SAY ~Вы выглядите так, словно вы умело обращаетесь с оружием. Такая тяга к сражениям может отпугнуть ваших друзей. Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY ~Разговор окончен. Убирайтесь, пока я не позвал стражу.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.1
  SAY ~Конечно, это большой стресс. Так много людей рассчитывают на вас, порой даже не осознавая этого. Это тяжкое бремя. Я не могу помочь вам в ваших делах, <CHARNAME>, но вы можете излить мне душу. Я ничего от вас не ожидаю.~
  IF ~~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 34 // from:
  SAY ~Прошу прощения, господин, но моя компания подходит только женщинам. Посмотрите, свободны ли Тамора или Люс.~ [TANIT50]
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",1)~ THEN BEGIN 34 // from:
  SAY ~Сегодня мне этого совсем не хочется. Мне не нужна критика.~ [TANIT51]
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",0)GlobalGT("TanitTired","MYAREA",0)~ THEN BEGIN 35 // from:
  SAY ~Простите, но я больше не работаю, а делаю то, что хочу. Надеюсь, это не причинит вам неудобств.~ [TANIT52]
  IF ~  IsGabber(Player1)~ THEN GOTO 43
  IF ~  !IsGabber(Player1)~ THEN GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY ~Ах, <CHARNAME>. Вы хорошо выглядите. Надеюсь, наша встреча оставила у вас приятные воспоминания?~
  IF ~~ THEN REPLY ~Я хорошо провела время. Надеюсь, и вы тоже.~ GOTO 44
  IF ~~ THEN REPLY ~Вы мне нравитесь. Надеюсь, я вам тоже немного нравлюсь.~ GOTO 45
  IF ~~ THEN REPLY ~Ты лишь один из многих на моем пути. Ха!~ GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY ~<CHARNAME>, вы самая настоящая леди.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY ~Я никогда не стану осуждать ваши манеры, милая леди. Не позволяйте ничему испортить ваше простое и доброе сердце. Никогда.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY ~Ненужное замечание. Жаль, что я не смог вытянуть из вас честного ответа.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 35.1
  SAY ~Ах, это вы. Вы хорошо выглядите. Надеюсь, наша встреча оставила у вас приятные воспоминания?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Я хорошо провела время. Надеюсь, и вы тоже.~ GOTO 44
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Я хорошо провела время. Надеюсь, и вы тоже.~ GOTO 50
  IF ~~ THEN REPLY ~Вы мне нравитесь. Надеюсь, я вам тоже немного нравлюсь.~ GOTO 45
  IF ~~ THEN REPLY ~Ты лишь один из многих на моем пути. Ха!~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 43.1
  SAY ~О, вы самая настоящая леди.~
  IF ~~ THEN EXIT
END

