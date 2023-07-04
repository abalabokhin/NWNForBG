// Маска лунного камня 3 этаж Тамора гном   Куртизанка   просит забрать брошь  Эта женщина бесстыдно на вас смотрит. Она подмигивает вам и делает непристойные жесты.

BEGIN ~TAMORA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в Маску Лунного Камня, прекрасный незнакомец! Я Тамора, и я буду вашей мечтой весь этот вечер. А вы станете моей мечтой?~ [TAMORA53]
  IF ~~ THEN REPLY ~Я буду говорить с вами... И не только говорить.~ GOTO 1
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~Есть дела поважнее разговоров, а?~ GOTO 2
  IF ~~ THEN REPLY ~Замолчи, шлюха. Я не для разговоров здесь.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ого, джентльмен. Не то, что некоторые. Ладно, показывайте пропуск, и я уделю вам свое время. А кроме времени... Там видно будет.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 49
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~Как насчет остальных клиентов?~ GOTO 18
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Может быть, если вы не такой уж подонок. Мне здорово досталось от... Ладно, не будем об этом. Давайте ваш пропуск, и мы прекрасно поболтаем.~
  IF ~~ THEN REPLY ~Как насчет остальных клиентов? От кого вам досталось?~ GOTO 18
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 49
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~Как насчет остальных клиентов?~ GOTO 18
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ой, какой грубый! У меня полно таких клиентов, но это не ваше дело. Вам нужно мое время? Добудьте пропуск и немного уважительного отношения.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 49
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~Как насчет остальных клиентов?~ GOTO 18
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Тогда до свидания. Надумаете вернуться - не забудьте пропуск. Иначе я мало что смогу сказать.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Хорошо, <CHARNAME>. Расскажите мне о себе. О чем вы думаете? Я хорошо умею слушать, если вам нужно именно это.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 50
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 49 // from: 1.1
  SAY ~Хорошо, расскажите мне о себе. О чем вы думаете? Я хорошо умею слушать, если вам нужно именно это.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 50
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Что, я должна разговаривать задаром? Ну уж нет. Купите у бармена пропуск. У него их полно.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Наверное. Зависит от того, нравятся они мне или нет. Они доверяются мне, а я им помогаю. Вы пришли за этим? Что вас беспокоит?~
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Я сильный. Ничего мне не страшно.~ GOTO 15
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Я? Нет, дело не во мне. Я буду той, кем вы желаете меня видеть. Кроме того, поверите ли вы моим словам, если вы за это платите?~
  IF ~~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~~ THEN REPLY ~Это очень самоотверженно - вот так растрачивать себя.~ GOTO 19
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~~ THEN REPLY ~Грубо! Разве у вас не доброе сердце?~ GOTO 21
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~Я не принимаю вещи близко к сердцу. Очень редко. Нужно постараться, чтобы я чем-то прониклась.~
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 23
  IF ~~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~Настоящий джентльмен. Знаете, <CHARNAME>, вы мне нравитесь. Думаю, я приму ваше предложение. Следуйте за мной. Мы ненадолго потушим свет.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TamoraTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 5.4
  SAY ~Настоящий джентльмен, вы мне нравитесь. Думаю, я приму ваше предложение. Следуйте за мной. Мы ненадолго потушим свет.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TamoraTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY ~Давайте поговорим еще. Вы ведь не из тех, кто вечно спешит? Нет, вы хотите немного подождать. Давайте поговорим еще.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY ~Полегче! Вы не лошадь стреноживаете! Будете так спешить, получите от меня коленом под зад. Поверьте, вам это не понравится.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY ~Если вы этого хотите... но вы не сможете вернуться просто так. Если вы вернетесь, придется заплатить еще. Так что вы решили?~
  IF ~~ THEN REPLY ~Я побуду здесь еще.~ GOTO 26
  IF ~~ THEN REPLY ~Мне нужно идти. Прощайте~ GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~Что ж, неудивительно, что вы себя так чувствуете. Может, вы это заслужили. Я не знаю. Никогда не понимала, как люди могут столько иметь и при этом быть такими пустыми. Я не собираюсь никого осуждать. Всем нужно сочувствие, неважно, насколько счастливая у них жизнь.~
  IF ~~ THEN REPLY ~Ничего страшного. Я это выдержу.~ GOTO 15
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY ~Грубые слова, но я знаю много мужчин, которые разговаривают так же, а на самом деле они сущие котята. А как насчет вас? Может, вы чувствуете себя одиноко, или не нравитесь людям так, как должны бы? Не говорите, что вам не нужна компания. Иначе бы вы сюда не пришли, не так ли? Конечно, вы могли прийти сюда лишь затем, чтобы не мучиться с настоящими отношениями. В этом нет ничего постыдного.~
  IF ~~ THEN REPLY ~Грубо! Разве у вас не доброе сердце?~ GOTO 21
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 7.4
  SAY ~Конечно. Мы можем делать все, что ты захочешь. В пределах разумного, конечно. Главное - это настроение.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 50
  IF ~  RandomNum(2,2)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY ~Думаю, вам не повезло. Люди постоянно прячутся друг от друга. Лучше я это заранее скажу.~
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~~ THEN REPLY ~Пожаловаться, что все искатели приключений так одиноки.~ GOTO 14
  IF ~~ THEN REPLY ~Посожалеть о том, как тяжело быть презираемым всеми.~ GOTO 14
  IF ~~ THEN REPLY ~Грубо! Разве у вас не доброе сердце?~ GOTO 21
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY ~Это не ваше дело, говорю же. Так что, вы хотели слиться во взаимном понимании, или просто тратите мое время?~
  IF ~~ THEN REPLY ~У вас проблемы? Может, мне стоит *заняться* этим делом?~ GOTO 22
  IF ~~ THEN REPLY ~Не дразнитесь! Расскажите мне о вашем клиенте, или замолчите!~ GOTO 25
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск.~ GOTO 49
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY ~Наверное. Я об этом не думаю. Я люблю скрываться за масками. Да и не все любят рассказывать о своей жизни. А некоторые просто любят говорить, им все равно, слушают их, или нет.~
  IF ~~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~~ THEN REPLY ~Грубо! Разве у вас не доброе сердце?~ GOTO 21
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY ~Это ведь неважно, так? Я отсюда. Я пробуду здесь достаточно долго, чтобы принести вам удовольствие. Пусть этот факт нас радует и дальше. Меня он радует.~
  IF ~~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~~ THEN REPLY ~Это очень самоотверженно - вот так растрачивать себя.~ GOTO 19
  IF ~~ THEN REPLY ~Грубо! Разве у вас не доброе сердце?~ GOTO 21
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY ~Ха! Неважно. Я здесь, потому что мне хорошо платят. Очень хорошо. И люди хорошие... В большинстве своем. Если с кем возникают проблемы, то с ними разбираются. Я разговариваю с людьми, они расслабляются, а потом мы иногда проводим какое-то время в темноте. Как в жизни, но без напряжения. Куда лучше, чем работать на ферме.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY ~Вы поможете мне? Да! Давайте я вам все расскажу, а там посмотрим, сможете ли вы помочь. Понимаете, есть один парень, которому безумно нравится издеваться надо мной. Он повсюду преследует меня и отпугивает хороших клиентов... Такие вот дела. Его зовут Хофф. Вечно торчит в доках. Контролирует все. Может, вы передадите ему послание? Лучше всего в виде пинка под зад.~
  IF ~  Dead("Hoff")~ THEN REPLY ~Хофф? Полуорк? Он уже мертв.~ GOTO 28
  IF ~~ THEN REPLY ~Что мне с этого?~ GOTO 29
  IF ~~ THEN REPLY ~Может, стоит посмотреть, что там. Увидим.~ GOTO 30
  IF ~~ THEN REPLY ~Может, я и взгляну. Так что насчет разговора?~ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY ~ Нет, только не это. Офала не любит, когда здесь говорят об этом. Говорит, что можно накликать беду.~
  IF ~~ THEN REPLY ~Сказать, что вы поможете сыграть свою значительную роль в изгнании  чумы.~ GOTO 32
  IF ~~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY ~ Если мне должно быть стыдно, то что уж говорить о вас? Вы сами поддерживаете эту профессию. Вас никто сюда не затаскивал. Может, мы вернемся к нашей приятной беседе, или вы желаете уйти?~
  IF ~~ THEN REPLY ~Грубо! Разве у вас не доброе сердце?~ GOTO 21
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 23
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~Может, стоило просто вышвырнуть вас отсюда... А хотя, такой подонок поможет мне разобраться с другим подонком. Понимаете, есть один парень, которому безумно нравится издеваться надо мной. Он повсюду преследует меня и отпугивает хороших клиентов... Такие вот дела. Его зовут Хофф. Вечно торчит в доках. Контролирует все. Может, вы передадите ему послание? Лучше всего в виде пинка под зад.~
  IF ~  Dead("Hoff")~ THEN REPLY ~Хофф? Полуорк? Он уже мертв.~ GOTO 28
  IF ~~ THEN REPLY ~Что мне с этого?~ GOTO 29
  IF ~~ THEN REPLY ~Может, стоит посмотреть, что там. Увидим.~ GOTO 30
  IF ~~ THEN REPLY ~Может, я и взгляну. Так что насчет разговора?~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY ~Хорошо, давайте поболтаем еще. У вас ведь есть, что рассказать. Правда. Я так считаю, да.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 50
  IF ~  RandomNum(2,2)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY ~Тогда до встречи. Пропуски продаются у бармена.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1
  SAY ~Это больше, чем я ожидала. Но я по нему и слезинки не пролью. Он был настоящим подонком. Спасибо. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 22.2
  SAY ~Не знаю. Поаплодировать? Послушайте, раз уж вы решили сделать доброе дело, так не медлите. Я не хочу быть обязанной еще одному подонку.~
  IF ~  Dead("Hoff")~ THEN REPLY ~Хофф? Полуорк? Он уже мертв.~ GOTO 28
  IF ~~ THEN REPLY ~Может, стоит посмотреть, что там. Увидим.~ GOTO 30
  IF ~~ THEN REPLY ~Может, я и взгляну. Так что насчет разговора?~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 22.3
  SAY ~О, спасибо вам за трогательное обещание. Вот, возьмите брошь, чтобы Хофф знал, что это я вас послала. Берегите ее! Вернете, когда закончите! Я бы не отдала это, если бы дело не было таким важным. Этот Хофф... Я о нем почти ничего не знаю. Помните, он где-то в доках.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",1)GiveItem("Nwmisc19",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY ~Не торопитесь. Вот, возьмите брошь, чтобы Хофф знал, что это я вас послала. Берегите ее! Вернете, когда закончите! Я бы не отдала это, если бы дело не было таким важным. Этот Хофф... Я о нем почти ничего не знаю. Помните, он где-то в доках.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",1)GiveItem("Nwmisc19",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY ~А что тогда вы здесь делаете? Хм. Я, конечно, понимаю, что это очень сильный стресс, но зачем тогда этим заниматься? ~
  IF ~~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("HoffHasMisc19","GLOBAL",0)~ THEN BEGIN 33 // from:
  SAY ~Здравствуйте. Вы поразвлечься, или по делу? Только не говорите "твое дело это развлечения", потому что я велю вышвырнуть вас, если услышу такое.~ [TAMORA52]
  IF ~  Global("TamoraTired","MYAREA",0)~ THEN REPLY ~Я здесь в качестве клиента Маски Лунного Камня.~ GOTO 1
  IF ~  GlobalGT("TamoraTired","MYAREA",0)~ THEN REPLY ~Я здесь в качестве клиента Маски Лунного Камня.~ GOTO 34
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~У вас проблемы?~ GOTO 35
  IF ~  Global("TamoraQuest","GLOBAL",1)~ THEN REPLY ~Я здесь по делу Хоффа.~ GOTO 36
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY ~Если вы желаете поразвлечься, то я временно не работаю. У меня был трудный период, правда.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.3
  SAY ~Понимаете, есть один парень, которому безумно нравится издеваться надо мной. Он повсюду преследует меня и отпугивает хороших клиентов... Такие вот дела. Его зовут Хофф. Вечно торчит в доках. Контролирует все. Может, вы передадите ему послание? Лучше всего в виде пинка под зад.~
  IF ~  Dead("Hoff")~ THEN REPLY ~Хофф? Полуорк? Он уже мертв.~ GOTO 28
  IF ~~ THEN REPLY ~Что мне с этого?~ GOTO 29
  IF ~~ THEN REPLY ~Может, стоит посмотреть, что там. Увидим.~ GOTO 30
  IF ~~ THEN REPLY ~Может, я и взгляну. Так что насчет разговора?~ GOTO 31
END

IF ~~ THEN BEGIN 36 // from: 33.4
  SAY ~О, а что вы хотите мне сказать?~
  IF ~  Dead("Hoff")PartyHasItem("Nwmisc19")~ THEN REPLY ~Он мертв. Вот ваша брошь.~ GOTO 37
  IF ~  Dead("Hoff")!PartyHasItem("Nwmisc19")~ THEN REPLY ~Он мертв. Ваша брошь к сожалению потеряна.~ GOTO 38
  IF ~  Global("HoffScared","GLOBAL",1)!Dead("Hoff")PartyHasItem("Nwmisc19")~ THEN REPLY ~Он весь трясется от страха. Вот ваша брошь.~ GOTO 39
  IF ~  Global("HoffScared","GLOBAL",1)!Dead("Hoff")!PartyHasItem("Nwmisc19")~ THEN REPLY ~Он весь трясется от страха. Ваша брошь к сожалению потеряна.~ GOTO 40
  IF ~~ THEN REPLY ~Ничего~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY ~Это больше, чем я ожидала. Но я по нему и слезинки не пролью. Он был настоящим подонком. Спасибо. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(60000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY ~Это больше, чем я ожидала. Но я по нему и слезинки не пролью. Он был настоящим подонком. Спасибо. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(50000)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY ~Это заставит его держаться подальше. Надеюсь, он не станет никого больше мучить. Его могли бы убить. Это было бы неприятно. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(40000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.4
  SAY ~Это заставит его держаться подальше. Надеюсь, он не станет никого больше мучить. Его могли бы убить. Это было бы неприятно. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1
  SAY ~Нечего дразнить меня этой дрянью.~
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 42 // from:
  SAY ~Извините, леди, я вам не подойду. Поговорите с Танитом. Он такой большой и милый.~ [TAMORA50]
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)GlobalGT("TamoraTired","MYAREA",0)!Global("TamoraQuest","GLOBAL",1)!Global("TamoraQuest","GLOBAL",9)~ THEN BEGIN 43 // from:
  SAY ~Здравствуйте. Если вы желаете поразвлечься, то я временно не работаю. У меня был трудный период, правда.~ [TAMORA52]
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("TamoraQuest","GLOBAL",1)Global("HoffHasMisc19","GLOBAL",1)~ THEN BEGIN 44 // from:
  SAY ~Сукин сын! Моя брошка у Хоффа! Это последний раз, когда я кому-то доверилась!~ [TAMORA51]
  IF ~  PartyHasItem("Nwmisc19")!Dead("Hoff")~ THEN REPLY ~Вот ваша брошь. У Хоффа ее больше нет.~ GOTO 45
  IF ~  PartyHasItem("Nwmisc19")Dead("Hoff")~ THEN REPLY ~Хофф мертв. Вот ваша брошь.~ GOTO 46
  IF ~~ THEN REPLY ~Он, в отличие от тебя, предложил за нее деньги.~ GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY ~О... Так значит... Кто-то продал ее ему, а потом выкрал назад? Что ж, это будет ему уроком... Надеюсь. Я не понимаю этого. Как будто люди из кожи вон лезут, чтобы усложнить все. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",0)SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(30000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.2
  SAY ~О... Так значит... Кто-то продал ее ему, а потом убил его, и забрал брошь назад? Думаю, именно этого я и хотела. Не ожидайте от меня какой-то большой награды. У меня ничего нет, кроме благодарности да доброго слова.~
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",0)SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(50000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.3
  SAY ~Неважно. Я больше ни с кем не стану разговаривать. Поверить не могу!~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",9)~ EXIT
END

// ----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("TamoraQuest","GLOBAL",9)~ THEN BEGIN 48 // from:
  SAY ~Сукин сын! Моя брошка у Хоффа! Это последний раз, когда я кому-то доверилась!~ [TAMORA51]
  IF ~~ THEN EXIT
END

