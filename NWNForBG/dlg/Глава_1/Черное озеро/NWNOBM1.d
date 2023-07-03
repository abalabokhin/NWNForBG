// Чернозкрье  Дом Аристократка  Этот человек выглядит так, как будто взорвется от негодования, если только кто-то его потревожит. Он явно привык к компании других аристократов и ни к кому более.  HasItem("Misc07",Myself)   Gold(268)

BEGIN ~NWNOBM1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),11,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~Почему вы здесь, в моем доме? Что у вас тут за дело? Могу поспорить, оно незаконное!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 4
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ох. Да, вы выглядите не так уж злобно. Вы всего лишь напугали меня, когда ворвались без приглашения, вот и все. Тогда что же вам нужно, <SIRMAAM>?~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~Я собираю золото для защиты аристократов. Сейчас каждый день многих из них убивают в собственных домах.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Хорошо, но держитесь подальше. Я вас не узнаю, так что, скорее всего, вы пробрались через баррикады и, может быть, принесли с собой чуму.~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~Я собираю золото для защиты аристократов. Сейчас каждый день многих из них убивают в собственных домах.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Что это такое? Еще одна деревенщина шарит по моему дому? Позвольте мне сэкономить немного вашего времени: если вы хотели меня ограбить, то кто-то уже успел сделать это до вас!~
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
  SAY ~Да, оставьте меня.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Меня всегда интересовало то, что говорили о чуме, но достоверной информации мало. Не знаю, смогу ли я помочь вам.~
  IF ~~ THEN REPLY ~Вы знаете о каких-нибудь странных существах в этом районе?~ GOTO 12
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Думаю, что я выше всего того, что вы сочтете "интересным".~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~Вряд ли я смогу вам помочь, вот разве что вы спросите, где выход из моего дома.~
  IF ~~ THEN REPLY ~Где тут ближайший трактир?~ GOTO 18
  IF ~~ THEN REPLY ~Где ближайший храм?~ GOTO 19
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 20
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~Что вы говорите? Аристократы умирают (сглатывает) в собственных домах? Предположительно, это могут быть такие аристократы, как я... в моем доме?~
  IF ~~ THEN REPLY ~Предположительно? Да. Если вы не "пожертвуете", вы можете умереть. Может быть, даже СЕЙЧАС!~ GOTO 22
  IF ~~ THEN REPLY ~В таком случае, я лучше вернусь к другим вопросам.~ GOTO 14
  IF ~~ THEN REPLY ~Я уже ухожу. Извини за беспокойство.~ GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~Да, оставьте меня.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY ~Все ясно. Хорошо, забирайте свое проклятое золото и убирайтесь. У меня нет времени, чтобы выслушивать ваши бредни. Забирайте и уходите! И не возвращайтесь! Животное! Собака!~
  IF ~~ THEN DO ~GivePartyGold(268)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Конечно же, нет. В Чернозерье за всеми животными строго следят. Здесь есть даже зоопарк, но едва ли там есть какое-то животное, которое можно назвать странным.~
  IF ~~ THEN REPLY ~Возможно, что какие-нибудь создания могли попасть в зверинец?~ GOTO 24
  IF ~~ THEN REPLY ~Что, ничего странного в зверинце нет?~ GOTO 25
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Я не обращаю внимания на всякие глупости низших классов, и уверяю вас, что аристократы Чернозерья не распространяют слухов. Ничем не могу вам помочь.~
  IF ~~ THEN REPLY ~Вы знаете о каких-нибудь странных существах в этом районе?~ GOTO 12
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 6.3
  SAY ~Хорошо... Но давайте побыстрее. Мало ли, что вы там задумали...~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY ~Я собираю подати на поддержание порядка на улицах.~ DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY ~Ничего. Ну, было какое-то дело с лордом Мелданеном, но теперь оно, видимо, разрешилось. Думаю, это был какой-то скандал.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY ~Ммм, ничего не приходит в голову. По крайней мере, теперь Формоса и Мелданен больше не воюют друг с другом.~
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
  SAY ~Думаю, вам стоит пойти в "Голую доску". Это скорее таверна. Больше я ничего не могу вам сказать. Я не люблю такие места. Это в центре района.~
  IF ~~ THEN REPLY ~Где ближайший храм?~ GOTO 19
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 20
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY ~У нас нет таких заведений. Те, кому нужно в такое место, обычно ходят в Сердце города. Что-нибудь еще?~
  IF ~~ THEN REPLY ~Где тут ближайший трактир?~ GOTO 18
  IF ~~ THEN REPLY ~Есть тут неподалеку место, где можно купить снаряжение?~ GOTO 20
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 8.3
  SAY ~Думаю, что припасы продают в Голой Доске, но мне не доводилось бывать там. Это в центре района.~
  IF ~~ THEN REPLY ~Где тут ближайший трактир?~ GOTO 18
  IF ~~ THEN REPLY ~Где ближайший храм?~ GOTO 19
  IF ~~ THEN REPLY ~Вообще-то, мне хотелось бы спросить вас еще кое о чем.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 1.5
  SAY ~А ну стойте! У меня уже забрали последнее золото, и больше у меня ничего нет! А теперь быстро задавайте свои вопросы и убирайтесь!~
  IF ~~ THEN REPLY ~Я исследую чуму. Может, вы поможете мне?~ GOTO 6
  IF ~~ THEN REPLY ~Вы знаете что-нибудь интересное о том, что происходит в районе Черного озера?~ GOTO 7
  IF ~~ THEN REPLY ~Можно мне спросить у вас дорогу?~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY ~Я понимаю. Берите свое проклятое золото и убирайтесь. Вон! Преступник! Собака!~
  IF ~~ THEN DO ~GivePartyGold(268)SetGlobal("Robbed","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.3
  SAY ~Тогда ладно. Что бы вы там ни задумали, я никогда не захочу видеть вас снова.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY ~Нет, не думаю. Владелец - лорд Монтгомери "Точный Выстрел". Если вам нужен точный ответ, поговорите лично с ним. Если вы там еще не были, то знайте, что зоопарк в северо-восточной части района.~
  IF ~~ THEN REPLY ~Что, ничего странного в зверинце нет?~ GOTO 25
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY ~Понятия не имею, что вы ищете, и что считаете "странным". Если хотите, отправляйтесь  в зоопарк, он на северо-востоке.~
  IF ~~ THEN REPLY ~Возможно, что какие-нибудь создания могли попасть в зверинец?~ GOTO 24
  IF ~~ THEN REPLY ~Вы слышали какие-нибудь слухи о чуме?~ GOTO 13
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 26 // from: 7.2
  SAY ~Лорд Мелданен создавал проблемы, но я не хочу говорить об этом.~
  IF ~~ THEN REPLY ~Если сказать мне, не будет никакого вреда.~ GOTO 28
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Ты точно не можешь рассказать, красотуля?~ GOTO 29
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Ты точно не можешь рассказать, красотуля?~ GOTO 30
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 7.4
  SAY ~Ну, эта девушка Формоса ищет людей, которые согласятся ее слушать. Она на юго-восточной площади, подговаривает людей выступить против Мелданена. Я не обращаю внимания на таких нарушителей спокойствия, как она. Каждый должен заниматься своим делом. Что бы там ни задумывал Мелданен, это не мое, и не ее дело. Вы хотели знать что-то еще?~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Нет информации насчет чего-нибудь странного?~ GOTO 26
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY ~Ну, вообще-то, откуда волшебник узнает, правда? Что ж... ходят слухи, что недавно Мелданен привез молодую женщину и развлекается с ней. Он не выпускает ее, ходят слухи, что она очень странная... Наверное, не совсем человек. Одни боги знают, что ему от нее нужно. Отвратительно, не правда ли? В любом случае, если хотите, можете посмотреть сами. Поместье Мелданена на северо-западе. Но я не советую вам ходить туда... Он вас не примет.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY ~Ну что же, я не откажусь провести еще немного времени в вашей прекрасной компании. Подойдите поближе. Как мне говорили, недавно Мелданен заполучил молодую женщину для своего развлечения. Он ее не выпускает, и, по слухам, она ведет себя очень странно... может, она вообще не человек. Только боги знают, чего ему от нее нужно. Грязное дело, верно? Что ж, если хотите, можете посмотреть сами. Особняк Мелданена находится на северо-западе. Только я вам не советую туда ходить... вряд ли он вам обрадуется.~
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY ~Мне бы хотелось устроиться на работу, если вы знаете, где это можно сделать.~ GOTO 27
  IF ~~ THEN REPLY ~Есть в районе Черного озера места, которые мне стоит посетить?~ GOTO 17
  IF ~~ THEN REPLY ~Мне бы хотелось задать другой вопрос.~ GOTO 14
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY ~Эээ... Нет, я не думаю, что буду рассказывать все в подробностях. Я не нахожу ваши манеры... эээ... подходящими. А кроме того, Мелданен слишком опасный человек, чтобы сплетничать о нем. Его особняк в северо-западной части района... но разумнее избегать его как чумы.~
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
  SAY ~Что вы делаете здесь, негодяи? Это частная собственность!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Я со стражей. Я не причиню вам вреда.~ GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY ~Уйди с дороги. Я иду, куда хочу!~ GOTO 4
  IF ~~ THEN REPLY ~Я уже ухожу.~ GOTO 5
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY ~Головорезы снова вернулись, да? Вам что-нибудь нужно?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Robbed","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY ~Почему вы ворвались сюда? Вон отсюда! Вон! Грязное злобное чудовище!~
  IF ~~ THEN EXIT
END

