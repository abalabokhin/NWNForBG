// Чернозкрье  Дом Раздраженная женщина  Эта женщина отвечает вам холодным взглядом, полностью отторгая ваше присутствие. Она явно не намерена с вами разговаривать.  HasItem("Misc07",Myself)   GivePartyGold(243)

BEGIN ~NWNOBW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),11,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Еще один шаг и я закричу! Почему вы вторглись в мой дом?!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 4
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я... думаю, вам можно доверять. Одинокой женщине в эти тревожные времена следует быть осторожной, сами понимаете. Тогда что же вам нужно, <SIRMAAM>?~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~Я собираю подати на поддержание порядка на улицах.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Я не доверяю вам! Убирайтесь сию же секунду!!~
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 4
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Жаль тебя разочаровывать, но если ты здесь, чтобы меня ограбить, то поздновато. У меня ничего не осталось. Если есть другие вопросы, объяснись и проваливай отсюда.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 2
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Вы, похоже, подались в бандиты. Что, ограбить меня хотите?~
  IF ~~ THEN REPLY ~Я сделаю это! Отдавай свое золото или умри!~ GOTO 11
  IF ~~ THEN REPLY ~Я сделаю это! Отдавай свое золото или умри!~ GOTO 34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 2
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Убирайтесь, а не то я позову стражу!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Я не эксперт по чуме, в конце концов, в районе Черного озера ее нет. Но я постараюсь ответить, если смогу.~
  IF ~~ THEN REPLY ~Вы знаете о каких-нибудь странных существах в этом районе?~ GOTO 12
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Мы, аристократы, по больше части держимся особняком, но я стараюсь быть в курсе последних сплетен, если вы это имеете в виду.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~Я могу показать вам выход. (Вздыхает) Что же вы ищете?~
  IF ~~ THEN REPLY ~Где тут ближайший трактир?~ GOTO 18
  IF ~~ THEN REPLY ~Где ближайший храм?~ GOTO 19
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 20
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~Я сегодня не в настроении делать пожертвования, спасибо.~
  IF ~~ THEN REPLY ~Ты не понимаешь. Если ты не заплатишь мне, ты не будешь в безопасности. Я лично об этом позабочусь!~ GOTO 22
  IF ~~ THEN REPLY ~В таком случае, я лучше вернусь к другим вопросам.~ GOTO 14
  IF ~~ THEN REPLY ~Я уже ухожу. Извини за беспокойство.~ GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~Да, оставьте меня.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY ~Я... я не могу с тобой драться. Бери, что у меня есть и уходи. Просто уходи. И... постарайся больше не попадаться мне на глаза... пожалуйста.~
  IF ~~ THEN DO ~GivePartyGold(243)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Силы небесные, да нет же. Ну... в зверинце есть всякие странные твари. Но они все появились там еще до мора.~
  IF ~~ THEN REPLY ~Возможно, что какие-нибудь создания могли попасть в зверинец?~ GOTO 24
  IF ~~ THEN REPLY ~Что, ничего странного в зверинце нет?~ GOTO 25
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Ничего особенного, <SIRMAAM>. Честно говоря, как ни мало я говорю с соседями, они болтают о чем угодно, *кроме* мора.~
  IF ~~ THEN REPLY ~Вы знаете о каких-нибудь странных существах в этом районе?~ GOTO 12
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 6.3
  SAY ~Что вы хотите знать?~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~Я собираю подати на поддержание порядка на улицах.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~Да нет, в общем-то. Там были кое-какие неприятности с магом по имени Мелданен, но все уже успокоилось. Теперь в районе все тихо и спокойно. Вы хотели знать что-то еще?~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY ~Там были какие-то проблемы с женщиной по имени Формоса, но что бы там с ней ни было, все уже уладили. Теперь в районе тихо и спокойно.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 26
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY ~Я не знаю. Эта таверна, Голая Доска? Говорят, у нее просто скандальная репутация. Вы хотели знать что-то еще?~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY ~Хм. Ждем приглашения, не так ли? Здесь вы не можете оставаться. Ближе всего "Голая Доска" в центре района.~
  IF ~~ THEN REPLY ~Где ближайший храм?~ GOTO 19
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 20
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY ~Я боюсь, в этом районе ничего такого нет. Мы пытались собрать деньги на храм, посвященный Суне... но вас это вряд ли заинтересует. Что-нибудь еще?~
  IF ~~ THEN REPLY ~Где тут ближайший трактир?~ GOTO 18
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 20
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 8.3
  SAY ~Нет. Но вы можете купить снаряжение в "Голой Доске", люди так говорят. Это в центре района.~
  IF ~~ THEN REPLY ~Где тут ближайший трактир?~ GOTO 18
  IF ~~ THEN REPLY ~Где ближайший храм?~ GOTO 19
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 1.5
  SAY ~Погоди. Если ты пытаешься выяснить, есть ли у меня золото, чтобы его украсть, то ответ будет "нет". Тебя опередили, так что объясни, какое у тебя еще ко мне дело и проваливай.~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY ~Ах вот как. Ну что ж, похоже, у меня нет большого выбора. Бери, что хочешь.  Вот все мое золото. Надеюсь ты сгинешь с глаз моих после этого.~
  IF ~~ THEN DO ~GivePartyGold(243)SetGlobal("Robbed","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.3
  SAY ~Очень хорошо. Я не совсем понимаю, что тебе было нужно, но мне приятно, что ты наконец уходишь.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~Э... может и так, не знаю. Точный Выстрел... то есть, я хочу сказать, лорд Монтгомери... он содержит зверинец, и о нем не было слышно ни звука с тех пор, как начался мор. Может, вам стоит поговорить с ним. Зверинец в северо-восточной части района, если вы там еще не были.~
  IF ~~ THEN REPLY ~Что, ничего странного в зверинце нет?~ GOTO 25
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~Ничего особенного мне не рассказывали. Понимаете, аристократы в этом районе замкнулись на себе. Если хотите посмотреть сами, то зверинец на северо-востоке.~
  IF ~~ THEN REPLY ~Возможно, что какие-нибудь создания могли попасть в зверинец?~ GOTO 24
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 26 // from: 7.2
  SAY ~Ну... есть это дело с Мелданеном. Только о нем лучше вообще не говорить.~
  IF ~~ THEN REPLY ~Если сказать мне, не будет никакого вреда.~ GOTO 28
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Моя дорогая, дорогая леди, вы уверены, что ничего не хотите сказать?~ GOTO 29
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Моя дорогая, дорогая леди, вы уверены, что ничего не хотите сказать?~ GOTO 30
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 7.4
  SAY ~Ну, эта девушка Формоса ищет людей, которые согласятся ее слушать. Она на юго-восточной площади, подговаривает людей выступить против Мелданена. Нам всем хотелось бы избавиться от колдуна, но что *мы* можем сделать? Не знаю, может быть вы захотите помочь ей. Вы хотели знать что-то еще?~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 26
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY ~Ну, вообще-то, откуда волшебник узнает, правда? Что ж... ходят слухи, что недавно Мелданен привез молодую женщину и развлекается с ней. Он ее не выпускает, и, по слухам, она ведет себя очень странно... может, она вообще не человек. Только боги знают, чего ему от нее нужно. Грязное дело, верно? В любом случае, если хотите, можете посмотреть сами. Поместье Мелданена на северо-западе. Но я не советую вам ходить туда... Он вас не примет.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY ~Ах, да ты очаровашка! Думаю от дружеской... беседы вреда не будет. Так вот... ходят слухи, что Мелданен недавно обзавелся какой-то девицей для развлечения. Он ее не выпускает, и, по слухам, она ведет себя очень странно... может, она вообще не человек. Только боги знают, чего ему от нее нужно. Грязное дело, верно? Что ж, если хотите, можете посмотреть сами. Особняк Мелданена находится на северо-западе. Только я вам не советую туда ходить... вряд ли он вам обрадуется.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY ~Как бы там ни было, я не жажду проводить много времени в обществе такой... 'очаровательной' личности, как ты. Между прочим, Мелданен - опасный человек. Лично я не очень бы огорчилась, если бы он в один прекрасный день оказался мертв. Никогда не скажу ничего подобного. Его особняк в северо-западной части района... но разумнее избегать его как чумы.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 34 // from: 4.2
  SAY ~Я... я не могу с тобой драться. Бери, что у меня есть и уходи... Ооо! Вы же уже украли все, что у меня было. Что же вам еще надо? Убирайтесь!~
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),12,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 31 // from:
  SAY ~Убирайтесь из моего дома! Воры! Бандиты! Почему стражников никогда нет на месте, когда они нужны?!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 4
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY ~Снова вернулись, да? Еще что-то надо?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Robbed","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY ~Почему вы вторглись сюда? Убирайтесь! Вон! Грязный пес!~ ~Почему вы вторглись сюда? Убирайтесь! Вон! Грязная собака!~
  IF ~~ THEN EXIT
END

