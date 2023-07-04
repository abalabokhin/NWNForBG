// Маска лунного камня 3 этаж Люс   Куртизанка     Эта женщина бесстыдно смотрит на вас обнадеживающим взглядом. У нее честное лицо.

BEGIN ~LUCE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",0)Global("Tired","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Здравствуйте, сэр. Меня зовут Люс. Думаю, вы хотите оставить самые приятные воспоминания о Маске Лунного Камня.~ [LUCE054]
  IF ~~ THEN REPLY ~Я буду говорить с вами... И не только говорить.~ GOTO 1
  IF ~~ THEN REPLY ~Есть дела поважнее разговоров, а?~ GOTO 2
  IF ~~ THEN REPLY ~Замолчи, шлюха. Я не для разговоров здесь.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Вы очень милы, но пропуск лишь дает вам право пообщаться со мной. Что касательно остального, это остается на мое усмотрение. Но уверена, мы с вами поладим.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск..~ DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ GOTO 39
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Я стерплю ваши грубые манеры, но помните, что пропуск покупает мое время, но не желание. Если меня заденут ваши слова, наша встреча закончится.~
  IF ~  PartyHasItem("Oppermit")~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск..~ DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ GOTO 39
  IF ~~ THEN REPLY ~У меня нет пропуска.~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Думаю, вам нужно следить за своим тоном. Пропуск покупает мое время, но не желание. Если мне не понравится ваше поведение, наша встреча закончится.~
  IF ~  PartyHasItem("Oppermit")~ THEN REPLY ~Вот пропуск. Меня зовут <CHARNAME>.~ DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~Вот пропуск..~ DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ GOTO 39
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
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 40
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 39 // from: 1.1
  SAY ~Прекрасно, а теперь расскажите мне о себе. Что вас заботит? Здесь, в "Маске", мы все очень хорошо умеем слушать.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 40
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
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
  IF ~~ THEN REPLY ~Я сильный. Ничего мне не страшно.~ GOTO 15
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Я? Этой ночью я буду, кем вы пожелаете. Если хотите, могу быть и верным другом, если вам это необходимо.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 18
  IF ~~ THEN REPLY ~Это очень самоотверженно - вот так растрачивать себя.~ GOTO 19
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 18
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~Я попытаюсь не беспокоить своих товарок без надобности, но могу поговорить с вами обо всем, что захотите.~
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 23
  IF ~  RandomNum(2,1)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 25
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~Настоящий джентльмен. Знаете, <CHARNAME>, вы мне нравитесь. Думаю, я приму ваше предложение. За мной, дорогуша. Давай укроемся от этого яркого света.~
  IF ~~ THEN DO ~SetGlobal("Tired","LOCALS",1)SetGlobalTimer("LuceTimer","LOCALS",2400)ClearAllActions()StartCutSceneMode()StartCutScene("Luce")~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.4
  SAY ~Настоящий джентльмен. Знаете, вы мне нравитесь. Думаю, я приму ваше предложение. За мной, дорогуша. Давай укроемся от этого яркого света.~
  IF ~~ THEN DO ~SetGlobal("Tired","LOCALS",1)SetGlobalTimer("LuceTimer","LOCALS",2400)ClearAllActions()StartCutSceneMode()StartCutScene("Luce")~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY ~Еще нет. Немного добродетельного терпения. Нам нужно еще немного времени, чтобы лучше узнать друг друга.~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY ~Я так не думаю. Нет, у меня есть полное право отказаться от такой... Отвратительной фамильярности. Это почти искусство. Нельзя вести себя, как бык.~
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
  SAY ~Неудивительно, что вы так себя чувствуете. Многие важные люди страдают от тоски, которую ничем не избыть, помимо их огромной ответственности. Вы можете все мне рассказать. Я не собираюсь ни осуждать, ни превозносить вашу позицию. Я здесь, с вами - можно отбросить стеснение. Вы честны перед собой, и следуете выбранному пути потому, что он вам подходит. Это признак сильного человека.~
  IF ~~ THEN REPLY ~Ничего страшного. Я это выдержу.~ GOTO 15
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY ~Не сомневаюсь в ваших способностях, но нужно ли постоянно скрывать свои чувства? Нет ничего плохого в том, что вы порой хотите услышать доброе слово.~
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
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  RandomNum(2,2)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 40
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY ~Что ж, хорошо, что я не на вашем месте. Я могу развлечь, когда от меня это требуется. А вы что делаете, кроме порицания окружающих?~
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 18
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY ~С меня хватит общения с вами. Это очень больно и ни в какие ворота не лезет.~
  IF ~~ THEN DO ~SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY ~Многие, кто приходит сюда, сами не знают, чего хотят. Я пытаюсь помочь им. Пытаюсь облегчить их тревоги. Некоторым людям нужен лишь хороший слушатель. Гораздо больше, чем можно себе представить. Надеюсь, я меняю их жизнь к лучшему.~
  IF ~~ THEN REPLY ~Откуда вы? Не расскажете ли о себе?~ GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 18
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY ~Очень давно я родилась в любящей семье. А теперь я здесь, с вами. Больше сейчас ничего не имеет значения.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~По-моему, это унизительно - вот так демонстрировать себя.~ GOTO 18
  IF ~~ THEN REPLY ~Это очень самоотверженно - вот так растрачивать себя.~ GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Проститутка с золотым сердцем! Вот это новость.~ GOTO 18
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY ~Послушайте, если желаете получить по голове, отправляйтесь в самую грязную таверну в доках - там есть специальные комнатки для этого. Моя работа - это слушать и вести приятную беседу. Если вас это не устраивает, то дверь у вас за спиной. Так... (кхе)... О чем вы говорили?~
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
  SAY ~Ничего, а если бы и знала, не сказала бы. Можете считать это суеверием, но Офала строго запрещает нам говорить об этом. Сейчас не время и не место для этого. Вернемся к тебе и к тому, что тебе нужно.~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Сказать, что вы поможете сыграть свою значительную роль в изгнании  чумы.~ GOTO 38
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Сказать, что вы поможете сыграть свою значительную роль в изгнании  чумы.~ GOTO 41
  IF ~  RandomNum(2,1)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 25
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY ~Не лучше ли вам будет последить за собой? Мне перед вами не стыдно. Кто вы такой, чтобы проецировать на меня свои страхи? Может, мы вернемся к нашей приятной беседе, или вы желаете уйти?~
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 23
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 9.3
  SAY ~С меня хватит общения с вами. Это очень больно и ни в какие ворота не лезет.~
  IF ~~ THEN DO ~SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY ~Я рада. Может, мы еще поговорим?~
  IF ~~ THEN REPLY ~Вы внимательно слушаете? Разговоры помогают вашим "клиентам" расслабляться?~ GOTO 7
  IF ~~ THEN REPLY ~Давайте поговорим о вас и о том, что вы любите.~ GOTO 8
  IF ~~ THEN REPLY ~Можно я задам несколько важных вопросов?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 10
  IF ~  RandomNum(2,2)IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 11
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~Может, мы... Пойдем к вам в спальню, моя леди?~ GOTO 40
  IF ~~ THEN REPLY ~Пошли в койку, милочка!~ GOTO 12
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY ~Тогда до встречи. Пропуски продаются у бармена.~
  IF ~~ THEN EXIT
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
  SAY ~Вы выглядите довольно набожным, уверенным в своей духовной стороне. Если друзья вас не понимают, они могут отдалиться от вас. Я могу заполнить эту пустоту, если хотите. Я здесь для этого, да и вы, наверное, тоже.~
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
  SAY ~Разговор окончен. Убирайтесь, пока я не позвала стражу.~
  IF ~~ THEN DO ~SetGlobal("GotAngry","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.1
  SAY ~Конечно, это большой стресс. Так много людей рассчитывают на вас, порой даже не осознавая этого. Это тяжкое бремя. Я не могу помочь вам в ваших делах, <CHARNAME>, но вы можете излить мне душу. Я ничего от вас не ожидаю.~
  IF ~~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

IF ~~ THEN BEGIN 41 // from: 23.1
  SAY ~Конечно, это большой стресс. Так много людей рассчитывают на вас, порой даже не осознавая этого. Это тяжкое бремя. Я не могу помочь вам в ваших делах, но вы можете излить мне душу. Я ничего от вас не ожидаю.~
  IF ~~ THEN REPLY ~Вам не стыдно работать здесь?~ GOTO 24
  IF ~~ THEN REPLY ~Давайте обсудим что-нибудь еще.~ GOTO 16
  IF ~~ THEN REPLY ~Мне пора идти.~ GOTO 13
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 34 // from:
  SAY ~Прошу прощения, миледи, но сюда можно только мужчинам. Посмотрите, может, Танит свободен.~ [LUCE050]
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",1)~ THEN BEGIN 34 // from:
  SAY ~Нет, с меня на сегодня хватит хамства. Убирайтесь. Идите в другое место.~ [LUCE051]
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",0)Global("Tired","LOCALS",1)~ THEN BEGIN 35 // from:
  SAY ~Ах, <CHARNAME>. С вами все в порядке? Надеюсь, я помогла вам. Некоторые люди в жизни не признаются себе, что им нужно с кем-то поговорить.~ [LUCE052]
  IF ~~ THEN REPLY ~Я хорошо провел время. Надеюсь, и вы тоже.~ GOTO 36
  IF ~~ THEN REPLY ~Вы мне нравитесь. Надеюсь, я вам тоже немного нравлюсь.~ GOTO 37
  IF ~~ THEN REPLY ~Ты лишь одна из многих на моем пути. Ха!~ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~<CHARNAME>, вы самый настоящий джентльмен. Не волнуйтесь. Я никого не осуждаю, помните?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY ~Да, глупенький, ты мне очень нравишься. Не слушай тех, кто говорит, что ты... Э... Медленный. Ты просто симпатяга!~
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",0)Global("Tired","LOCALS",1)~ THEN BEGIN 35 // from:
  SAY ~Ах, с вами все в порядке? Надеюсь, я помогла вам. Некоторые люди в жизни не признаются себе, что им нужно с кем-то поговорить.~ [LUCE052]
  IF ~~ THEN REPLY ~Я хорошо провел время. Надеюсь, и вы тоже.~ GOTO 42
  IF ~~ THEN REPLY ~Вы мне нравитесь. Надеюсь, я вам тоже немного нравлюсь.~ GOTO 37
  IF ~~ THEN REPLY ~Ты лишь одна из многих на моем пути. Ха!~ GOTO 18
END

IF ~~ THEN BEGIN 42 // from: 35.1
  SAY ~Вы самый настоящий джентльмен. Не волнуйтесь. Я никого не осуждаю, помните?~
  IF ~~ THEN EXIT
END


