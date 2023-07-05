// Лускан Здание в трущобах Галрон Этот пожилой человек, судя по выражению лица, охвачен паранойей и ужасом.

BEGIN ~GALRONE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)~ THEN BEGIN 0 // from:
  SAY ~Вы не похожи на тех хулиганских солдат, которые разграбили весь город. Зачем вы пришли сюда?! Я требую ответа, немедленно!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 5
  IF ~~ THEN REPLY ~Убирайтесь с дороги! Я возьму все, что захочу!~ GOTO 6
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Хф. Вы в своем уме, <MALEFEMALE>? Вы уже забрали у меня ребенка! А теперь, если я могу тебе еще чем-нибудь помочь...~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 8
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Понимаю. 'Ее' ребенок, правильно? В жилах этого ребенка течет и моя кровь, хоть мне и отвратительно признавать, что у меня есть ребенок от этой шлюхи. Я скажу вам то же самое, что и ей. Я не собираюсь отдавать ребенка. Я не позволю, чтобы потом эта женщина вернулась с ним и предъявила права на мое имущество... И к тому же, этот публичный дом - не место для моего ребенка!~
  IF ~~ THEN REPLY ~Иветт не хочет, чтобы ее дитя воспитывалось в публичном доме.~ GOTO 11
  IF ~~ THEN REPLY ~Будьте разумны. Может быть, мы сможем заключить какую-нибудь сделку.~ GOTO 12
  IF ~~ THEN REPLY ~Как вам понравится, если я вырву ребенка из ваших ледяных, мертвых рук?~ GOTO 13
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~Ох! Опять?! Вы что, плохо слышите?! Тогда позвольте повторить: Я не собираюсь отдавать ребенка. Я не позволю, чтобы потом эта женщина вернулась с ним и предъявила права на мое имущество... И к тому же, этот публичный дом - не место для моего ребенка!~
  IF ~~ THEN REPLY ~Иветт не хочет, чтобы ее дитя воспитывалось в публичном доме.~ GOTO 11
  IF ~~ THEN REPLY ~Будьте разумны. Может быть, мы сможем заключить какую-нибудь сделку.~ GOTO 12
  IF ~~ THEN REPLY ~Как вам понравится, если я вырву ребенка из ваших ледяных, мертвых рук?~ GOTO 13
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хмм... Думаю, мне просто стали непривычны посетители в такие времена. В любом случае, вас не приглашали. Так чего же вам все-таки от меня надо?~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 8
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~Ха! Я не верю ни одному вашему слову! Я не буду просто стоять и смотреть, как снова грабят мой дом! Вон, вон отсюда!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~Аааааааа! Грабители! Кто-нибудь, помогите!!!~
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Да, я требую чтобы вы немедленно ушли!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1
  SAY ~Меня зовут Галрон. Хоть я и благородных кровей, не пытайтесь меня ограбить. Разбойники Высших Капитанов опередили вас... И полностью разрушили мой бизнес. Может, вы вовсе не собирались грабить меня, но теперь в Лускане никому нельзя доверять. Особенно таким простолюдинам, как вы.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 15
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о местных культах?~ GOTO 16
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY ~Думаю, вреда в этом нет.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 15
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о местных культах?~ GOTO 16
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY ~Да, да. Идите, куда шли.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.2
  SAY ~Может, так она вам и сказала. Нельзя верить ни одному ее лживому слову. Ребенок останется со мной!~
  IF ~~ THEN REPLY ~Будьте разумны. Может быть, мы сможем заключить какую-нибудь сделку.~ GOTO 12
  IF ~~ THEN REPLY ~Как вам понравится, если я вырву ребенка из ваших ледяных, мертвых рук?~ GOTO 13
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 0.2
  SAY ~Сделка, вот как? Очень хорошо. Посмотрим, насколько ей нужен этот ублюдок... И сможет ли она это себе позволить. С тех пор, как началась война, у меня совсем мало денег... Давайте мне 1000 золотых, и можете забирать ребенка. И все останутся довольны.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых... Ладно.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 20
  IF ~~ THEN REPLY ~Я не собираюсь "покупать" у вас ребенка!~ GOTO 21
  IF ~~ THEN REPLY ~Хватит. Давайте мне ребенка. Немедленно.~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY ~Я... Понимаю. Не думал я, что эта шлюха опустится до того, чтобы прислать ко мне отъявленного преступника. Она оказалась еще худшей матерью для моих детей, чем я ожидал. Но, похоже, у меня нет выбора. Очень хорошо... Если ей так нужен ребенок, она должна предложить мне что-то взамен. Война уничтожила мой бизнес... Дайте мне 1000 золотых, чтобы восстановить его, и ребенок ваш.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых... Ладно.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 20
  IF ~~ THEN REPLY ~Я не собираюсь "покупать" у вас ребенка!~ GOTO 21
  IF ~~ THEN REPLY ~Хватит. Давайте мне ребенка. Немедленно.~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 0.1
  SAY ~Спрашивайте и уходите.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 15
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о местных культах?~ GOTO 16
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 0.1
  SAY ~Ох, да кто может это знать? Высшие Капитаны правили городом вместе, а потом решили посмотреть, кто из них сможет управлять им в одиночку. Я не знаю, вокруг чего вся эта суматоха. Уже скоро война закончится, и тогда Лускан снова станет отстойником, каким он всегда был.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о местных культах?~ GOTO 16
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY ~Кроме этих олухов из храма Темпуса никого нет. Волшебники не позволяют таких вещей.~
  IF ~~ THEN REPLY ~Какие волшебники?~ GOTO 23
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 15
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY ~Очень хорошо. Сильно сомневаюсь, что эта женщина отдаст вам то, что вы заплатили мне... Но таков ваш выбор. В любом случае, после того, как умерла гувернантка ребенка, растить это маленькое чудовище стало настоящей пыткой. Ну тогда вот она. Возьмите ее и убирайтесь. Если у этой женщины осталась хоть капля разума, она уедет, и я больше никогда ее не увижу.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(1000)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.2
  SAY ~ Ха! С тех пор, как умерла ее гувернантка, это чудовище просто сводит меня с ума. Лучше я возьму, что смогу, и избавлюсь от нее наконец. Ну тогда вот она. Возьмите ее и убирайтесь. Если у этой женщины осталась хоть капля разума, она уедет, и я больше никогда ее не увижу.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2
  SAY ~*Вздыхает* Очень хорошо. Я требую 400 золотых... Думаю, этого хватит, чтобы восстановить мой бизнес.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~Возьмите 250 золотых. Следующий, кто придет за ребенком, вряд ли будет так щедр.~ GOTO 24
  IF ~  PartyGoldGT(399)~ THEN REPLY ~Прекрасно. 400 золотых... Ладно.~ GOTO 25
  IF ~~ THEN REPLY ~Я не собираюсь "покупать" у вас ребенка!~ GOTO 26
  IF ~~ THEN REPLY ~Хватит. Давайте мне ребенка. Немедленно.~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 0.2
  SAY ~Когда война закончится, мне придется восстанавливать мой бизнес. Это стоит 1000 золотых. Разумеется, я не думаю, что этой женщине так сильно нужен ребенок.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых... Ладно.~ GOTO 17
  IF ~  PartyGoldGT(249)~ THEN REPLY ~Возьмите 250 золотых. Следующий, кто придет за ребенком, вряд ли будет так щедр.~ GOTO 24
  IF ~~ THEN REPLY ~Я не собираюсь "покупать" у вас ребенка!~ GOTO 21
  IF ~~ THEN REPLY ~Хватит. Давайте мне ребенка. Немедленно.~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY ~После войны мне придется восстанавливать свой бизнес. Если уж я позволю этой шлюхе воспитывать ребенка моей крови, я хочу получить кое-что. 1000 золотых - такова моя цена.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых... Ладно.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~Я не дам вам больше чем 250 золотых.~ GOTO 20
  IF ~~ THEN REPLY ~Хватит. Давайте мне ребенка. Немедленно.~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY ~Так моего мнения никто не спрашивает, так? Отдать свою кровь незаконнорожденному ребенку и ничего не получить? Пффф. Платите 250 золотых... Этого мало, но достаточно.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 золотых? Хорошо.~ GOTO 27
  IF ~~ THEN REPLY ~Я не могу потратить столько на это.~ GOTO 28
  IF ~~ THEN REPLY ~Надоело мне препираться. Пора убить вас!~ GOTO 29
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from: 0.1
  SAY ~(вздыхает) Братство Таинств, разумеется. Волшебники из башни у устья реки, по другую сторону моста. О них почти никто ничего не знает. Они не выходят... И никто туда не входит. Кроме, разумеется, Высших Капитанов.~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 15
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY ~Ха! С тех пор, как умерла ее гувернантка, это чудовище просто сводит меня с ума. Лучше я возьму, что смогу, и избавлюсь от нее наконец. Ну тогда вот она. Возьмите ее и убирайтесь. Если у этой женщины осталась хоть капля разума, она уедет, и я больше никогда ее не увижу.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY ~Ну тогда вот она. Возьмите ее и убирайтесь. Если у этой женщины осталась хоть капля разума, она уедет, и я больше никогда ее не увижу.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(400)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY ~После войны мне придется восстанавливать свой бизнес. Если уж я позволю этой шлюхе воспитывать ребенка моей крови, я хочу получить кое-что. 400 золотых - такова моя цена.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~Возьмите 250 золотых. Следующий, кто придет за ребенком, вряд ли будет так щедр.~ GOTO 24
  IF ~  PartyGoldGT(399)~ THEN REPLY ~Прекрасно. 400 золотых... Ладно.~ GOTO 25
  IF ~~ THEN REPLY ~Хватит. Давайте мне ребенка. Немедленно.~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY ~Ну тогда вот она. Возьмите ее и убирайтесь. Если у этой женщины осталась хоть капля разума, она уедет, и я больше никогда ее не увижу.~
  IF ~~ DO ~SetGlobal("QuestDone","LOCALS",1)TakePartyGold(250)GiveItem("Nwmisc60",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY ~Если она не может позволить себе даже такого, тогда нам не о чем разговаривать. 250 золотых - моя последняя цена... Не меньше.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 золотых? Хорошо.~ GOTO 27
  IF ~~ THEN REPLY ~Надоело мне препираться. Пора убить вас!~ GOTO 29
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 14
  IF ~~ THEN REPLY ~До свидания..~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY ~Ч-что?! Вы не посмеете! Н-на помощь! Кто-нибудь, помогите!!!~
  IF ~~ THEN DO ~Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END


// -----------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)CheckStatGT(LastTalkedToBy,8,CHR)~ THEN BEGIN 30 // from:
  SAY ~Если бы в этом городе еще была стража, вас бы арестовали! Зачем вы здесь?!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 5
  IF ~~ THEN REPLY ~Убирайтесь с дороги! Я возьму все, что захочу!~ GOTO 6
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 7
END

// -----------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)~ THEN BEGIN 31 // from:
  SAY ~Убирайтесь из моего дома! Вор! Грабитель! Что вам от меня нужно?!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 5
  IF ~~ THEN REPLY ~Убирайтесь с дороги! Я возьму все, что захочу!~ GOTO 6
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 7
END

// -----------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy,13,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY ~Хф. За что мне такое "удовольствие" - лицезреть вас снова?~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 5
  IF ~~ THEN REPLY ~Убирайтесь с дороги! Я возьму все, что захочу!~ GOTO 6
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 7
END

// -----------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,14,CHR)CheckStatGT(LastTalkedToBy,8,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY ~У вас, конечно же, опять какая-то просьба? Что вам нужно на этот раз? Выкладывайте!~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 5
  IF ~~ THEN REPLY ~Убирайтесь с дороги! Я возьму все, что захочу!~ GOTO 6
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 7
END

// -----------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy,9,CHR)Global("QuestDone","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY ~Тьфу! Что вам на этот раз от меня понадобилось?~
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",1)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 1
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("QuestDone","LOCALS",0)Global("Talked","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 2
  IF ~  Global("YvetteQuest","GLOBAL",1)Global("Talked","LOCALS",1)Global("QuestDone","LOCALS",0)~ THEN REPLY ~Я здесь, чтобы поговорить с вами о ребенке Иветт.~ GOTO 3
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 4
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Успокойтесь. Я не причиню вам никакого вреда.~ GOTO 5
  IF ~~ THEN REPLY ~Убирайтесь с дороги! Я возьму все, что захочу!~ GOTO 6
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 7
END

// -----------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("QuestDone","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY ~С меня хватит! Убирайтесь отсюда!~
  IF ~~ THEN EXIT
END

