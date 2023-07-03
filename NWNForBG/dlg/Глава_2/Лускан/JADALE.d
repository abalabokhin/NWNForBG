// Лускан Поместье Джедейла Леди Джадейл Эта благородная женщина держится с чувством собственного превосходства, но все портит тревожное выражение на ее лице.   !HasItem("PlatAuc",Myself)  45 - свободно

BEGIN ~JADALE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)Global("Ring_Is_Stolen","LOCALS",0)CheckStatGT(LastTalkedToBy,9,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 0 // 
  SAY ~Добро пожаловать в мой дом. Я что-нибудь могу для вас сделать, <SIRMAAM>?~ [JADALE51]
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ох... Но у меня больше нет кольца Эрби. У меня его уже кто-то забрал. Извините. Вы еще что-нибудь хотели?~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~А зачем бы вам это делать? Я ведь уже дала вам кольцо Эрби. А теперь, если вам от меня больше ничего не нужно...~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Вы знаете о кольце, которое мне дал Эрби? Ох... Должно быть, Эрби вас и послал. Я не думаю, что он поступает достойно! Эрби просто глуп. Он дал мне это кольцо, потому что любит меня, а я не отдам его, потому что ничего не изменилось!~
  IF ~~ THEN REPLY ~Подумайте хорошенько. Давайте обсудим это, а?~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY ~Опять? (вздыхает) Мы ведь уже поговорили об этом. Не знаю, почему вы преследуете меня. Эрби просто глуп. Он дал мне это кольцо, потому что любит меня, а я не отдам его, потому что ничего не изменилось!~
  IF ~~ THEN REPLY ~Подумайте хорошенько. Давайте обсудим это, а?~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Я леди Джедейл. Но моего мужа в данный момент нет в городе. Я могу что-нибудь для вас сделать?~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 13
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY ~Я с удовольствием отвечу на ваши вопросы. Что вы хотели?~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 13
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY ~Пока и доброго вам пути.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY ~О чем поговорить? Думаю, нам с вами нечего обсуждать.~
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~Как насчет того, что вы нарушили параграф 12 лусканского закона о получении подарков?~ GOTO 28
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Почему вы решили, что Эрб хочет кольцо обратно?~ GOTO 16
  IF ~~ THEN REPLY ~Прекрасно. Тогда отдавайте кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY ~Я не собираюсь продавать его, если вы это имеете в виду. Я не продам мою любовь к Эрби, ни за какие деньги!~
  IF ~~ THEN REPLY ~Подумайте хорошенько. Давайте обсудим это, а?~ GOTO 8
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 0.3
  SAY ~Думаю, ничего плохого в этом нет... В конце концов, это всего лишь красивая побрякушка. Хорошо... Вам нужно это кольцо? Я продам его вам. За 1000 золотых.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых? Договорились.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~Это возмутительно! Я не дам больше 250 золотых!~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~Это возмутительно! Я не дам больше 250 золотых!~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~Это возмутительно! Я не дам больше 250 золотых!~ GOTO 20
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 21
  IF ~~ THEN REPLY ~Вы пытаетесь надуть меня?! Лучше бы вам меня не злить...~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY ~Что?! Как вы смеете разговаривать с дамой таким тоном! Немедленно возьмите свои слова назад, или я позову стражников, и они вышвырнут вас отсюда!~
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY ~Хорошо. Извините.~ GOTO 24
  IF ~  Global("Talked","LOCALS",1)~ THEN REPLY ~Хорошо. Извините.~ GOTO 38
  IF ~  CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY ~Думаете, я не смогу победить ваших стражников? Проверьте.~ GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy,16,STR)~ THEN REPLY ~Думаете, я не смогу победить ваших стражников? Проверьте.~ GOTO 26
  IF ~~ THEN REPLY ~Хватит! Мне надоели все эти церемонии!!!~ GOTO 27
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 0.3
  SAY ~*Вздыхает* Вы пришли в мой дом, чтобы задавать вопросы? Ладно, продолжайте.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Подумайте хорошенько. Давайте обсудим это, а?~ GOTO 8
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 13
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 1.2
  SAY ~Я, правда, не знаю. Здесь такой переполох! Когда он начался, моему мужу пришлось уехать из города по делам... Он, конечно, все объяснит, когда вернется.~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Вы знаете что-нибудь о культах в городе?~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 1.2
  SAY ~Ну... Моя хорошая подруга когда-то хотела основать культ Суны. Это считается?~
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Что происходит в Лускане?~ GOTO 13
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 0.3
  SAY ~О, если он только заметит это. Сначала ему надо вернуться домой. Пффф. Эрби просто слишком волнуется.~
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~Как насчет того, что вы нарушили параграф 12 лусканского закона о получении подарков?~ GOTO 28
  IF ~~ THEN REPLY ~Почему вы решили, что Эрб хочет кольцо обратно?~ GOTO 16
  IF ~~ THEN REPLY ~Прекрасно. Тогда отдавайте кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 16 // from: 0.3
  SAY ~Я не знаю. Может, он любит меня так сильно, что его это пугает? Эрби такой милый!~
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Эрб вас не любит, уверяю вас.~ GOTO 29
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~Эрб вас не любит, уверяю вас.~ GOTO 30
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~Это не имеет значения. Вы нарушили параграф 12 лусканского закона на получение подарков.~ GOTO 28
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 0.3
  SAY ~Хф. Ну если вы насколько хотите его заполучить, тогда ладно... Хотя я сомневаюсь, что Эрби хорошо вам за это заплатит. Но мне больше нет до него никакого дела. Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 31 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 32 // за 1000
END

IF ~~ THEN BEGIN 18 // from: 0.3
  SAY ~Ох, хорошо. В любом случае, я не хочу, чтобы оно было у меня... Оно будет постоянно напоминать мне об Эрби. Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 48 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 33 // за 250
END

IF ~~ THEN BEGIN 19 // from: 0.3
  SAY ~*Вздыхает* Ну тогда как насчет 400 золотых?~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 золотых? Договорились.~ GOTO 34
  IF ~~ THEN REPLY ~У меня нет на это 400 золотых.~ GOTO 35
  IF ~  PartyGoldGT(249)ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Возьмите 250 золотых. Вам все еще нужно кольцо?~ GOTO 18
  IF ~~ THEN REPLY ~Вы пытаетесь надуть меня?! Лучше бы вам меня не злить...~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 0.3
  SAY ~Ха! Цена -  1000 золотых. Если вам это не подходит, то... надеюсь вы знаете, где дверь.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых? Договорились.~ GOTO 17
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 21
  IF ~~ THEN REPLY ~Вы пытаетесь надуть меня?! Лучше бы вам меня не злить...~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 0.3
  SAY ~Ну что ж! Тогда, думаю, вам не повезло. Цена 1000 золотых, и не монеткой меньше.~
  IF ~  PartyGoldGT(999)~ THEN REPLY ~1000 золотых? Договорились.~ GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY ~Это возмутительно! Я не дам больше 250 золотых!~ GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY ~Это возмутительно! Я не дам больше 250 золотых!~ GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY ~Это возмутительно! Я не дам больше 250 золотых!~ GOTO 20
  IF ~~ THEN REPLY ~Вы пытаетесь надуть меня?! Лучше бы вам меня не злить...~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 0.3
  SAY ~Нет, вовсе нет... ! (вздыхает) Хорошо. Все равно мне больше не нужно это кольцо. 250 золотых - и оно ваше.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 золотых? Хорошо.~ GOTO 36
  IF ~~ THEN REPLY ~Я не могу потратить столько золота на это.~ GOTO 37
  IF ~~ THEN REPLY ~Довольно пререканий. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 0.3
  SAY ~Прощайте. Возможно, мы еще поговорим.~
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 0.3
  SAY ~Так-то лучше.~
  IF ~~ THEN REPLY ~Подумайте хорошенько. Давайте обсудим это, а?~ GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 0.3
  SAY ~Я... Я... Хорошо! Если от Эрби приходят головорезы и хотят украсть мое кольцо, то подавитесь! Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 26 // from: 0.3
  SAY ~Хмф. Вы собираетесь извиниться, или нет?~
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY ~Хорошо. Извините.~ GOTO 24
  IF ~  Global("Talked","LOCALS",1)~ THEN REPLY ~Хорошо. Извините.~ GOTO 38
  IF ~~ THEN REPLY ~Хватит! Мне надоели все эти церемонии!!!~ GOTO 27
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 27 // from: 0.3
  SAY ~Аииий! Разбойник! Негодяй!!! Стража, на помощь!!!~
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.3
  SAY ~Вы... Вы, должно быть, шутите! Я первый раз слышу об этом!~
  IF ~  Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY ~Незнание закона не освобождает от ответственности. Боюсь, мне придется взять вас под арест.~ GOTO 40
  IF ~  !Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY ~Незнание закона не освобождает от ответственности. Боюсь, мне придется взять вас под арест.~ GOTO 41
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~О, да. Видите ли, это кольцо очень ценное, а Эрб не заплатил с него налоги.~ GOTO 42
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY ~О, да. Видите ли, это кольцо очень ценное, а Эрб не заплатил с него налоги.~ GOTO 41
  IF ~  Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY ~Вы ведь не хотите, чтобы вас выдали, правда? Так что отдайте мне кольцо.~ GOTO 40
  IF ~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY ~Вы ведь не хотите, чтобы вас выдали, правда? Так что отдайте мне кольцо.~ GOTO 43
  IF ~~ THEN REPLY ~Э, да... Просто шутка. Ха-ха!~ GOTO 44
  IF ~~ THEN REPLY ~Довольно пререканий. Отдайте мне кольцо... Немедленно.~ GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY ~Глупости! Я вам не верю. Эрби меня любит!~
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~Это не имеет значения. Вы нарушили параграф 12 лусканского закона на получение подарков.~ GOTO 28
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 30 // from: 0.3
  SAY ~Он... разве нет? Но я... О! У него появился кто-то другой, так? Он хочет... Подарить кольцо кому-то еще! Эта свинья! Тогда я оставлю кольцо себе. Оно красивое... А этот грязный гном его не заслуживает!~
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY ~Вы действительно хотите сохранить кольцо мужчины, который вас не любит?~ GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY ~Вы действительно хотите сохранить кольцо мужчины, который вас не любит?~ GOTO 47
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY ~Это не имеет значения. Вы нарушили параграф 12 лусканского закона на получение подарков.~ GOTO 28
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 31 // за 1000
  SAY ~Что -? Где оно? Мое кольцо пропало! Меня ограбили!!!~
  IF ~~ THEN REPLY ~Я вам не верю - немедленно отдайте кольцо!~ GOTO 50
  IF ~~ THEN REPLY ~Эй - если у вас его нет, верните мне деньги!~ GOTO 50
  IF ~~ THEN REPLY ~Что это значит - вас ограбили?~ GOTO 50
  IF ~~ THEN REPLY ~Тогда, думаю, я пойду.~ GOTO 50
END

IF ~~ THEN BEGIN 32 // from: 0.3
  SAY ~Вот оно. Берите и убирайтесь... не думаю, что нам с вами есть, о чем разговаривать.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 0.3
  SAY ~Вот оно. Берите и убирайтесь... не думаю, что нам с вами есть, о чем разговаривать.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(250)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.3
  SAY ~Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 51 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 52 // за 400
END

IF ~~ THEN BEGIN 35 // from: 0.3
  SAY ~Ну что ж, если у вас нет даже лишних 400 золотых, я ничем не могу помочь. Торгуйтесь как угодно, но я не снижу цены.~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~400 золотых? Договорились.~ GOTO 34
  IF ~~ THEN REPLY ~Вы пытаетесь надуть меня?! Лучше бы вам меня не злить...~ GOTO 22
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 36 // from: 0.3
  SAY ~Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 48 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 33 // за 250
END

IF ~~ THEN BEGIN 37 // from: 0.3
  SAY ~Пффф... У вас что, совсем нет золота? Вы настолько бедны? Но все равно, я не стану снижать цену. В конце концов, это мое кольцо.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~250 золотых? Хорошо.~ GOTO 36
  IF ~~ THEN REPLY ~Довольно пререканий. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~~ THEN REPLY ~Забудьте. Я ухожу.~ GOTO 23
END

IF ~~ THEN BEGIN 38 // from: 0.3
  SAY ~Так-то лучше. И можете забрать это проклятое кольцо! Мне оно больше не нужно. Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 39 // from: 0.3
  SAY ~Вот оно. Берите и убирайтесь... не думаю, что нам с вами есть, о чем разговаривать.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 0.3
  SAY ~О нет! Я... Я... Можете забрать кольцо! Я не хочу делать ничего противозаконного! Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 41 // from: 0.3
  SAY ~Это самая большая чушь, которую мне приходилось слышать. Я ни на секунду не поверю, что вы состоите в гарнизоне!~
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Почему вы решили, что Эрб хочет кольцо обратно?~ GOTO 16
  IF ~~ THEN REPLY ~Прекрасно. Тогда отдавайте кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 42 // from: 0.3
  SAY ~Что?! Но... Что все это значит?~
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY ~Значит, мне придется арестовать Эрба, если кольцо не вернется.~ GOTO 53
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY ~Значит, мне придется арестовать Эрба, если кольцо не вернется.~ GOTO 54
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Значит, вам придется заплатить налоги... Или вернуть кольцо.~ GOTO 55
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY ~Значит, вам придется заплатить налоги... Или вернуть кольцо.~ GOTO 56
  IF ~  Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY ~Значит, мне придется вас арестовать. Извините~ GOTO 57
  IF ~~ THEN REPLY ~Думаю, Эрб пытался втянуть вас в неприятности. Должно быть, он не любит вас так, как вы думали.~ GOTO 58
  IF ~~ THEN REPLY ~Да, ничего. Забудьте мои слова.~ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 0.3
  SAY ~Не говорите ерунды! Даже если такой закон и существовал, *теперь*, во время всей этой войны, он не действует!~
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Почему вы решили, что Эрб хочет кольцо обратно?~ GOTO 16
  IF ~~ THEN REPLY ~Прекрасно. Тогда отдавайте кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 44 // from: 0.3
  SAY ~Нет, я совершенно не нахожу это забавным.~
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Почему вы решили, что Эрб хочет кольцо обратно?~ GOTO 16
  IF ~~ THEN REPLY ~Прекрасно. Тогда отдавайте кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 45 // from: 0.3
  SAY ~Вы! Это ваших рук дело, не так ли?! Эрби послал вас отвлекать меня, пока кто-то другой украдет его! А откуда бы мне знать, что вас действительно послал Эрби? Может быть, вы не просто <MALEFEMALE>, а вор! Ну что ж, придется мне проучить вас. Стража!!!~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 0.3
  SAY ~Вы правы. Это довольно безвкусная вещь. Я отдам вам кольцо, чтобы вы бросили его ему в лицо. Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 47 // from: 0.3
  SAY ~Ха! Я постоянно получаю дорогие подарки и от своего мужа, знаете ли. Кольцо теперь мое.~
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END
  
IF ~~ THEN BEGIN 48 // за 250
  SAY ~Что -? Где оно? Мое кольцо пропало! Меня ограбили!!!~
  IF ~~ THEN REPLY ~Я вам не верю - немедленно отдайте кольцо!~ GOTO 45
  IF ~~ THEN REPLY ~Эй - если у вас его нет, верните мне деньги!~ GOTO 45
  IF ~~ THEN REPLY ~Что это значит - вас ограбили?~ GOTO 45
  IF ~~ THEN REPLY ~Тогда, думаю, я пойду.~ GOTO 45
END

IF ~~ THEN BEGIN 49 // from: 0.3
  SAY ~Что -? Где оно? Мое кольцо пропало! Меня ограбили!!! Вы! Это ваших рук дело, не так ли?! Эрби послал вас отвлекать меня, пока кто-то другой украдет его! Убирайтесь!~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)SetGlobal("Ring_Is_Stolen","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // за 1000
  SAY ~Вы! Это ваших рук дело, не так ли?! Эрби послал вас отвлекать меня, пока кто-то другой украдет его! А откуда мне вообще знать, что это именно Эрби послал вас? Что ж... Я проучу вас как следует! Я оставлю ваше золото себе!~
  IF ~~ THEN REPLY ~Это нечестно!~ GOTO 60
  IF ~~ THEN REPLY ~Предупреждаю вас... Верните мне деньги. Немедленно.~ GOTO 61
  IF ~~ THEN REPLY ~Ладно, оставьте деньги себе.~ GOTO 62
END

IF ~~ THEN BEGIN 51 // from: 0.3
  SAY ~Что -? Где оно? Мое кольцо пропало! Меня ограбили!!!~
  IF ~~ THEN REPLY ~Я вам не верю - немедленно отдайте кольцо!~ GOTO 63
  IF ~~ THEN REPLY ~Эй - если у вас его нет, верните мне деньги!~ GOTO 63
  IF ~~ THEN REPLY ~Что это значит - вас ограбили?~ GOTO 63
  IF ~~ THEN REPLY ~Тогда, думаю, я пойду.~ GOTO 63
END

IF ~~ THEN BEGIN 52 // from: 0.3
  SAY ~Вот оно. Берите и убирайтесь... не думаю, что нам с вами есть, о чем разговаривать.~
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 0.3
  SAY ~О, нет! Мой бедный Эрби! ну что ж, будь по-вашему! Можете забрать кольцо... Но оставьте его в покое! Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 54 // from: 0.3
  SAY ~Не говорите ерунды! Даже если такой закон и существовал, *теперь*, во время всей этой войны, он не действует!~
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Прекрасно. Тогда отдавайте кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 55 // from: 0.3
  SAY ~О, замечательно! У моего мужа много денег, он... ох. Постойте. (вздыхает) Так не получится. Думаю... Думаю, мне придется вернуть кольцо. Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 56 // from: 0.3
  SAY ~Не говорите ерунды! Даже если такой закон и существовал, *теперь*, во время всей этой войны, он не действует!~
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 57 // from: 0.3
  SAY ~О нет! Я... Я... Можете забрать кольцо! Я не хочу делать ничего противозаконного! Погодите минутку...~
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 58 // from: 0.3
  SAY ~Я... Думаю, что вы правы. Это не очень красиво с его стороны. Тогда я оставлю кольцо себе. Оно красивое... А этот грязный гном его не заслуживает!~
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY ~Вы действительно хотите сохранить кольцо мужчины, который вас не любит?~ GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY ~Вы действительно хотите сохранить кольцо мужчины, который вас не любит?~ GOTO 47
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 59 // from: 0.3
  SAY ~Это очень грубо, знаете ли.~
  IF ~~ THEN REPLY ~Что насчет вашего мужа? Что он подумает о кольце?~ GOTO 15
  IF ~~ THEN REPLY ~Я не собираюсь с вами спорить. Отдайте мне кольцо... Немедленно.~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY ~Может, мы могли бы заключить с вами сделку.~ GOTO 10
  IF ~~ THEN REPLY ~Прекрасно. Оставьте себе. Но все равно мне нужно спросить у вас кое-что еще.~ DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY ~До свидания.~ GOTO 23
END

IF ~~ THEN BEGIN 60 // за 1000
  SAY ~Честно? Не говорите со мной о честности! У меня только что украли мое ценное кольцо - и я знаю, что и вы тоже в этом замешаны!~
  IF ~~ THEN REPLY ~Предупреждаю вас... Верните мне деньги. Немедленно.~ GOTO 61
  IF ~~ THEN REPLY ~Ладно, оставьте деньги себе.~ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 0.3
  SAY ~Как вы смеете после всего этого угрожать мне! Я преподам вам урок, который вы долго не забудете! Стража!!!~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)TakePartyGold(1000)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 62 // за 1000
  SAY ~Прекрасно! А теперь вон из моего дома. Думаю, вам не нужно показывать, где выход.~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Talked","LOCALS",1)TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 63 // за 400
  SAY ~Вы! Это ваших рук дело, не так ли?! Эрби послал вас отвлекать меня, пока кто-то другой украдет его! А откуда мне вообще знать, что это именно Эрби послал вас? Что ж... Я проучу вас как следует! Я оставлю ваше золото себе!~
  IF ~~ THEN REPLY ~Это нечестно!~ GOTO 64
  IF ~~ THEN REPLY ~Предупреждаю вас... Верните мне деньги. Немедленно.~ GOTO 65
  IF ~~ THEN REPLY ~Ладно, оставьте деньги себе.~ GOTO 66
END

IF ~~ THEN BEGIN 64 // за 1000
  SAY ~Честно? Не говорите со мной о честности! У меня только что украли мое ценное кольцо - и я знаю, что и вы тоже в этом замешаны!~
  IF ~~ THEN REPLY ~Предупреждаю вас... Верните мне деньги. Немедленно.~ GOTO 65
  IF ~~ THEN REPLY ~Ладно, оставьте деньги себе.~ GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 0.3
  SAY ~Как вы смеете после всего этого угрожать мне! Я преподам вам урок, который вы долго не забудете! Стража!!!~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)TakePartyGold(400)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 66 // за 400
  SAY ~Прекрасно! А теперь вон из моего дома. Думаю, вам не нужно показывать, где выход.~
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Talked","LOCALS",1)TakePartyGold(400)~ EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)CheckStatGT(LastTalkedToBy,14,CHR)Global("Ring_Is_Stolen","LOCALS",0)~ THEN BEGIN 67 // from:
  SAY ~О! Неожиданные посетители. Вы хотите видеть моего мужа? Боюсь, его сейчас нет в городе.~ [JADALE50]
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)Global("Ring_Is_Stolen","LOCALS",0)CheckStatLT(LastTalkedToBy,10,CHR)~ THEN BEGIN 68 // from:
  SAY ~О! Неожиданные посетители. Вы хотите видеть моего мужа? Боюсь, его сейчас нет в городе.~ [JADALE52]
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY ~Я хочу поговорить с вами о кольце Эрба.~ GOTO 4
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 5
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 7
END

// -------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("Ring_Is_Stolen","LOCALS",1)Global("Give","LOCALS",1)~ THEN BEGIN 69 // from:
  SAY ~Я повторюсь: нам больше не о чем говорить. Полагаю, ты знаешь, где выход?~
  IF ~~ THEN EXIT
END

