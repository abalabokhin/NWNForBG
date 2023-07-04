// Южная дорога 2 - Пит О'Дил  Этот фермер хмурится от отчаяния и огорчения. Дать 175 монет.  Ingo  ErikNW  Constanc Mary

BEGIN ~PETE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Чем вам может помочь старый фермер, <LADYLORD>?~
  IF ~~ THEN REPLY ~Как ваше имя?~ GOTO 1
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я-то? Я фермер О'Дил, но вы можете звать меня Питом, если хотите. А сами вы кто?~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Вы можете звать меня <CHARNAME>.~ GOTO 4
  IF ~  !IsGabber(Player1)~ THEN REPLY ~Неважно как меня зовут, наш отряд возглавляет <CHARNAME>.~ GOTO 5
  IF ~~ THEN REPLY ~Простите, но я никому не называю своего имени.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY ~Извиняйте, но мне за скотом приглядывать надо. У меня отвлекаться времени нет.~
  IF ~~ THEN REPLY ~Сколько у вас скота?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ну, тогда ступайте своей дорогой. Счастливо.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Очень хорошо. <CHARNAME>, значит. У меня тут на ферме в последнее время дела совсем плохи... Как думаете, вы не сможете помочь?~
  IF ~~ THEN REPLY ~О каких проблемах вы говорите?~ GOTO 7
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Как хотите. У меня тут в последнее время дела совсем плохи, <LADYLORD>... Не возражаете, если я попрошу вас помочь?~
  IF ~~ THEN REPLY ~О каких проблемах вы говорите?~ GOTO 7
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~Меньше, чем было неделю назад, прямо скажем. У меня тут со стадом большие неприятности.~
  IF ~~ THEN REPLY ~О каких проблемах вы говорите?~ GOTO 7
  IF ~~ THEN REPLY ~Меня это не интересует. До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.1
  SAY ~В холмах живут свирепые волки, так они взяли моду на моих коров охотиться. Вожаком у них здоровенная волчица, Серебряная Спина я ее зову... Честное слово, я бы 500 золотых за ее голову дал. Она уже двух коров у меня утащила. А если так дело дальше пойдет, скоро от стада вообще ничего не останется.~
  IF ~~ THEN REPLY ~Да, как будто, это дело мне по плечу.~ GOTO 8
  IF ~~ THEN REPLY ~Извините, но что-то это не особенно захватывающее приключение...~ GOTO 9
  IF ~  Dead("Silverbk")~ THEN REPLY ~Вообще-то, эта волчица уже мертва.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~Ну, Серебряная Спина не погибла от моей руки, но мы поговорили...~ GOTO 11
  IF ~~ THEN REPLY ~Я хочу узнать подробности.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Правда, что ли? Ну, я, конечно, вздохну спокойно только тогда, когда проклятая волчица будет мертва, но за помощь все равно спасибо. Ну а пока, вам еще что-то нужно?~
  IF ~  Global("KnowsAboutCave","LOCALS",1)~ THEN REPLY ~Так, скажи еще раз, где я могу найти этих волков?~ GOTO 13
  IF ~~ THEN REPLY ~Не возражаете, если я задам вам еще несколько вопросов?~ GOTO 14
  IF ~  Dead("Silverbk")~ THEN REPLY ~Вообще-то, эта волчица уже мертва.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~Ну, Серебряная Спина не погибла от моей руки, но мы поговорили...~ GOTO 11
  IF ~~ THEN REPLY ~Я вернусь, как только найду волков.~ GOTO 15
  IF ~~ THEN REPLY ~Нет. Это дело кажется мне слишком хлопотным.~ GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY ~Так я и думал. Что ж, тогда прошу меня простить, мне за стадом следить надо.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3 8.3
  SAY ~О боги, <MALEFEMALE>, вы справились! Вот это да! Нелегко вам пришлось, небось! Ну, а теперь... думаю, награда в 500 золотых  будет достаточной, да?~
  IF ~~ THEN REPLY ~Так тому и быть, Пит. Так тому и быть.~ GOTO 17
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Думаю, я заслуживаю большей награды.~ GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~Думаю, я заслуживаю большей награды.~ GOTO 19
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Идиот, гони еще деньги, а то я и у тебя голову отрежу!~ GOTO 20
  IF ~~ THEN REPLY ~Не нужно никакого вознаграждения. Мне поохотиться -- одно удовольствие.~ GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 7.4 8.4
  SAY ~Что-что!? Ба, да кто я такой, чтобы спорить. Я и сам то и дело с коровками разговариваю... Да, но волки ведь хищники. С чего вы взяли, что они перестанут?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Она дала мне слово. Она сдержит его.~ GOTO 22
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Она дала мне слово. Она сдержит его.~ GOTO 23
  IF ~~ THEN REPLY ~Что ж, тогда я пойду и убью ее...~ GOTO 15
  IF ~~ THEN REPLY ~Тогда найдите кого-нибудь другого, потому что я ее убивать не стану...~ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY ~Ясное дело. Что вы хотите узнать?~
  IF ~~ THEN REPLY ~Где я могу найти этих волков?~ DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY ~Что-то не так уж много денег за такую работу.~ GOTO 25
  IF ~~ THEN REPLY ~Что такого ужасного в этих волках?~ GOTO 26
END

IF ~~ THEN BEGIN 13 // from: 7.5
  SAY ~Вход в пещеру находится к югу от мой фермы. Там у них логово. Ну, еще что-нибудь? Или все-таки вы покончите с волками, как обещали?~
  IF ~  Dead("Silverbk")~ THEN REPLY ~Вообще-то, эта волчица уже мертва.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~Ну, Серебряная Спина не погибла от моей руки, но мы поговорили...~ GOTO 11
  IF ~~ THEN REPLY ~Я вернусь, как только найду волков.~ GOTO 15
  IF ~~ THEN REPLY ~Нет. Это дело кажется мне слишком хлопотным.~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 7.5
  SAY ~Вообще-то я не в настроении разговоры разговаривать. Мне надо свое стадо от волков защищать. Ну, еще что-нибудь? Или все-таки вы покончите с волками, как обещали?~
  IF ~  Global("KnowsAboutCave","LOCALS",1)~ THEN REPLY ~Так, скажи еще раз, где я могу найти этих волков?~ GOTO 13
  IF ~  Dead("Silverbk")~ THEN REPLY ~Вообще-то, эта волчица уже мертва.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~Ну, Серебряная Спина не погибла от моей руки, но мы поговорили...~ GOTO 11
  IF ~~ THEN REPLY ~Я вернусь, как только найду волков.~ GOTO 15
  IF ~~ THEN REPLY ~Нет. Это дело кажется мне слишком хлопотным.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 8.5
  SAY ~Приятно это слышать. Возвращайтесь когда волчица будет мертва, и я быстро заплачу вам вознаграждение.~
  IF ~  Global("PeteQuest","GLOBAL",0)~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",1)~ EXIT
  IF ~  !Global("PeteQuest","GLOBAL",0)~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.6
  SAY ~Как хотите, <LADYLORD>, только стыдно вам должно быть, что вы помочь не хотите бедному старому фермеру.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~Что ж, спасибо за помощь. Теперь, когда волчицы больше нет, остальных я живо распугаю. Вот уж удружили, так удружили. А теперь прошу прощения, мне надо в Порт-Лласт ехать, за новыми коровами. Еще раз спасибо вам.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~Правда, за шкуры волков много не выручишь. Вот 675 золотых, это все, что у меня есть. А стадо восстановится только через несколько лет.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)GivePartyGold(175)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY ~Может, волчьи шкуры и тяжелые, но за них в городе хорошие деньги можно выручить. Больше чем 500 золотых я дать не могу. А теперь прошу прощения, мне надо в Порт-Лласт ехать, за новыми коровами. Еще раз спасибо вам.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY ~И вы так запросто человека жизни лишите? Хватит с вас вашей добычи, демон, и тех 500 золотых, которые я вам обещал... А теперь прошу прощения, мне надо в Порт-Лласт ехать, за новыми коровами.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)GiveGoldForce(500)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY ~Ух, какой же вы добрый человек, <LADYLORD>. Если бы таких как вы побольше было, и на моей ферме можно было бы кое-чего заработать. А теперь прошу прощения, мне надо в Порт-Лласт ехать, за новыми коровами. Еще раз спасибо вам.~
  IF ~~ THEN DO ~SetGlobal("PeteQuest","GLOBAL",2)AddexperienceParty(52000)ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.1
  SAY ~Очень хорошо, пусть так. Может, мне стоило бы рассудить иначе, но я вам верю... 500 золотых, о которых мы договаривались, будет достаточно?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~Думаю, я заслуживаю большей награды.~ GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~Думаю, я заслуживаю большей награды.~ GOTO 19
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Идиот, гони еще деньги, а то я и у тебя голову отрежу!~ GOTO 20
  IF ~~ THEN REPLY ~Не нужно никакого вознаграждения. Мне поохотиться -- одно удовольствие.~ GOTO 21
END

IF ~~ THEN BEGIN 23 // from: 11.2
  SAY ~Нет, я ей не доверяю, и вам тоже! Пока Серебряная Спина жива денег от меня вы не получите.~
  IF ~~ THEN REPLY ~Что ж, тогда я пойду и убью ее...~ GOTO 15
  IF ~~ THEN REPLY ~Тогда найдите кого-нибудь другого, потому что я ее убивать не стану...~ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~Логово у них в пещере к югу от моей фермы. Вечно пара из них там бродит.~
  IF ~~ THEN REPLY ~Что-то не так уж много денег за такую работу.~ GOTO 25
  IF ~~ THEN REPLY ~Что такого ужасного в этих волках?~ GOTO 26
  IF ~~ THEN REPLY ~Ну хорошо, у меня вполне достаточно информации для принятия решения.~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~Может и так, да только я человек небогатый. В наше время на скотине много не заработаешь, тем более, когда волки житья не дают... Ну, волки эти очень даже ничего, если это вас утешит. И, в конце концов, шкуры ихние в городе тоже денег будут стоить...~
  IF ~~ THEN REPLY ~Где я могу найти этих волков?~ DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY ~Что такого ужасного в этих волках?~ GOTO 26
  IF ~~ THEN REPLY ~Ну хорошо, у меня вполне достаточно информации для принятия решения.~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 12.3
  SAY ~Это ведь не обычные волки. Свирепые - куда хитрее и сильнее обычных. Уж во всяком случае, ума у них побольше, чем у парнишки старого Инго...~
  IF ~~ THEN REPLY ~Где я могу найти этих волков?~ DO ~SetGlobal("KnowsAboutCave","LOCALS",1)~ GOTO 24
  IF ~~ THEN REPLY ~Что-то не так уж много денег за такую работу.~ GOTO 25
  IF ~~ THEN REPLY ~Ну хорошо, у меня вполне достаточно информации для принятия решения.~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 12.4
  SAY ~Вы поможете? Убьете Серебряную Спину и ее стаю?~
  IF ~  Dead("Silverbk")~ THEN REPLY ~Вообще-то, эта волчица уже мертва.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~Ну, Серебряная Спина не погибла от моей руки, но мы поговорили...~ GOTO 11
  IF ~~ THEN REPLY ~Я вернусь, как только найду волков.~ GOTO 15
  IF ~~ THEN REPLY ~Нет. Это дело кажется мне слишком хлопотным.~ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)Global("PeteQuest","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY ~Эге? Потеряли что-то?~
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~   !NumTimesTalkedTo(0)Global("PeteQuest","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY ~А, вы вернулись! Ну как, есть хорошие новости? Убили вы эту волчицу, Серебряную Спину?~
  IF ~~ THEN REPLY ~Так, скажи еще раз, где я могу найти этих волков?~ GOTO 13
  IF ~~ THEN REPLY ~Не возражаете, если я задам вам еще несколько вопросов?~ GOTO 14
  IF ~  Dead("Silverbk")~ THEN REPLY ~Вообще-то, эта волчица уже мертва.~ GOTO 10
  IF ~  !Dead("Silverbk")Global("SilverbackTalk","GLOBAL",1)~ THEN REPLY ~Ну, Серебряная Спина не погибла от моей руки, но мы поговорили...~ GOTO 11
  IF ~~ THEN REPLY ~Я вернусь, как только найду волков.~ GOTO 15
  IF ~~ THEN REPLY ~Нет. Это дело кажется мне слишком хлопотным.~ GOTO 16
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~   Global("PeteQuest","GLOBAL",2)~ THEN BEGIN 30 // from:
  SAY ~Ой, пойду, расскажу все своей хозяйке. А еще надо в Порт-Лласт ехать, за новыми коровами. Еще раз спасибо вам.~
  IF ~~ THEN EXIT
END

