// Чернозерье Перчатка Келлисай   Эта женщина держит в руках инструменты целителя, хотя, судя по количеству шрамов на ее теле, она и сама прошла не через одну битву.  SetGlobalTimer("seencloud","LOCALS",FOUR_MINUTES)  GlobalTimerNotExpired("chasetarget","LOCALS")

// в сцене NWBattl4 с Клодуса магия не развеивается, в сцене NWBattl5 - развеивается

BEGIN ~KELLISAI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)GlobalLT("NWArena","GLOBAL",4)Global("KellisaiTalk","MYAREA",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в Перчатку. Я целитель, и займусь вашими ранами, если это потребуется. Думаю, вам уже известны правила арены?~
  IF ~  Global("NWArena","GLOBAL",0)!GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я буду сражаться за первую медаль.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",0)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я буду сражаться за первую медаль.~ GOTO 22
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 7
  IF ~~ THEN REPLY ~Чем вы занимаетесь? Драться умеете?~ GOTO 8
  IF ~~ THEN REPLY ~Какие тут правила?~ GOTO 9
  IF ~~ THEN REPLY ~Я прошу вас исцелить меня.~ GOTO 10
  IF ~~ THEN REPLY ~До встречи.~ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Очень хорошо. Вы будете драться с Храском. Удачи.~
  IF ~~ THEN DO ~SetGlobal("Encounter","MYAREA",1)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl1")~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Простите, но Фаши уже бросили вызов. Вам придется подождать.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Готовьтесь. Фаши уже готов и ждет вас.~
  IF ~~ THEN DO ~SetGlobal("Encounter","MYAREA",2)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl2")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Извините, но у Агара только что закончился бой, ему нужно время на восстановление. Подождите, если хотите сразиться с ним.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Готовьтесь. Агар ждет на арене.~
  IF ~~ THEN DO ~SetGlobal("Encounter","MYAREA",3)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl3")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY ~Извините, но Клодус уже вызван другим бойцом. Вам придется сразиться с ним попозже, если только его не победят.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY ~Итак, вы будете драться с Клодусом. Желаю вам удачи. У него есть все шансы на победу.~
  IF ~~ THEN REPLY ~Бой будет честным, не так ли?~ GOTO 12
  IF ~~ THEN REPLY ~Начинаем!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl4")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.8
  SAY ~Нет-нет, я и целитель, и судья, вроде того. Я слежу, чтобы никто не умер и слежу, чтобы бой был честным. Во всяком случае пытаюсь. Хотите хороший совет? Перед боем поспрашивайте народ о бойцах. У меня все.~
  IF ~  Global("NWArena","GLOBAL",0)~ THEN REPLY ~Я буду сражаться за первую медаль.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 7
  IF ~~ THEN REPLY ~Какие тут правила?~ GOTO 9
  IF ~~ THEN REPLY ~Я прошу вас исцелить меня.~ GOTO 10
  IF ~~ THEN REPLY ~До встречи.~ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 0.9
  SAY ~Правила просты. Вы и ваше оружие против гладиатора и его оружия, и не больше одного поединка в день. Драться нужно, пока не победите всех противников. На арене можно использовать все, кроме зелий и заранее прочитанных заклинаний. На всех участников накладывают заклинание развеивания магии до боя. Нельзя убегать с арены во время боя, если убежите с арены, считайте бой проигранным. Призов нет, но Клодус обещал отдать Голую Доску тому, кто победит его. Пока никто не смог.~
  IF ~~ THEN REPLY ~Почему он непобедим?~ GOTO 16
  IF ~  Global("NWArena","GLOBAL",0)~ THEN REPLY ~Я буду сражаться за первую медаль.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 7
  IF ~~ THEN REPLY ~Чем вы занимаетесь? Драться умеете?~ GOTO 8
  IF ~~ THEN REPLY ~Я прошу вас исцелить меня.~ GOTO 10
  IF ~~ THEN REPLY ~До встречи.~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.10
  SAY ~Очень хорошо. На минутку замрите и не двигайтесь. Вот, это должно вам помочь.~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.11
  SAY ~Как хотите. Бойцы подождут другого противника.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~Я могу это обеспечить, но я... Несколько ограничена. Клодус платит за все это, понимаете? Вы... Понимаете, да?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Все должно быть честно. Вы это знаете.~ GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY ~Все должно быть честно. Вы это знаете.~ GOTO 14
  IF ~  PartyGoldGT(399)~ THEN REPLY ~Я заплачу вам. 400 золотых - и вы обеспечите честный бой.~ GOTO 15
  IF ~~ THEN REPLY ~Начинаем!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl4")~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~Это большой риск для меня... Но думаю... Думаю, мне стоит поработать как надо для разнообразия. Вы правы. Хорошо. Готовьтесь к встрече с ним. Я развею магию у вас обоих. Не упустите этот шанс.~
  IF ~~ THEN REPLY ~Начинаем!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl5")~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY ~Вы не понимаете моего положения. Я хотела бы помочь, но не могу. Попытайтесь сами.~
  IF ~  PartyGoldGT(399)~ THEN REPLY ~Я заплачу вам. 400 золотых - и вы обеспечите честный бой.~ GOTO 15
  IF ~~ THEN REPLY ~Начинаем!~ DO ~SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl4")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY ~Возможно... Правда, от этого я не чувствую себя честнее. Но деньги мне бы пригодились... Хорошо. Готовьтесь к встрече с ним. Я развею магию у вас обоих. Не упустите этот шанс.~
  IF ~~ THEN REPLY ~Начинаем!~ DO ~TakePartyGold(400)SetGlobal("Encounter","MYAREA",4)ClearAllActions()StartCutSceneMode()StartCutScene("NWBattl5")~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY ~Мы обсудим это, когда вы победите его. А сейчас лучше не надо.~
  IF ~  Global("NWArena","GLOBAL",0)~ THEN REPLY ~Я буду сражаться за первую медаль.~ GOTO 1
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 2
  IF ~  Global("NWArena","GLOBAL",1)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 3
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",2)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 5
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerNotExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 6
  IF ~  Global("NWArena","GLOBAL",3)GlobalTimerExpired("NextRaundNW","GLOBAL")~ THEN REPLY ~Я могу перейти к следующему раунду.~ GOTO 7
  IF ~~ THEN REPLY ~Чем вы занимаетесь? Драться умеете?~ GOTO 8
  IF ~~ THEN REPLY ~Я прошу вас исцелить меня.~ GOTO 10
  IF ~~ THEN REPLY ~До встречи.~ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY ~Извините, но ваш поединок с Храском закончился совсем недавно, бойцам нужен отдых, приходите завтра.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)GlobalGT("NWArena","GLOBAL",3)Global("KellisaiTalk","MYAREA",0)~ THEN BEGIN 17 // from:
  SAY ~Итак, Клодуса победили. Хорошо. Мне надоело его слушать. Он не платил мне достаточно, чтобы вечно покрывать его лживые штучки.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)!IsGabber(Player1)GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY ~На арене может сражаться только <CHARNAME>, я буду говорить только с ним.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)Global("KellisaiTalk","MYAREA",1)GlobalLT("NWArena","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 19 // from:
  SAY ~Вы победили и заслужили право биться с более сильным противником. Но по нашим правилам следующий бой может состояться не ранее чем на следующий день, бойцы должны отдыхать. А сейчас позволь поздравить тебя с победой и вручить эту медаль.~
  IF ~  Global("NWArena","GLOBAL",1)~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)GiveItemCreate("Arena1",Player1,1,0,0)AddXPObject(Player1,20000)~ EXIT
  IF ~  Global("NWArena","GLOBAL",2)~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)TakePartyItem("Arena1")DestroyItem("Arena1")GiveItemCreate("Arena2",Player1,1,0,0)AddXPObject(Player1,30000)~ EXIT
  IF ~  Global("NWArena","GLOBAL",3)~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)TakePartyItem("Arena2")DestroyItem("Arena2")GiveItemCreate("Arena3",Player1,1,0,0)AddXPObject(Player1,40000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)Global("KellisaiTalk","MYAREA",2)IsGabber(Player1)~ THEN BEGIN 20 // from:
  SAY ~Бой вами проигран, впрочем, вы можете попытаться выиграть в другой раз. Но по нашим правилам следующий бой может состояться не ранее чем на следующий день, бойцы должны отдыхать.~
  IF ~~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",0)Global("KellisaiTalk","MYAREA",1)Global("NWArena","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 21 // from:
  SAY ~Вот это да, у нас новый чемпион! Вы победили самого Клодуса и стали чемпионом "Перчатки", теперь таверна ваша, поговорите с барменом наверху, он вам все объяснит. Кроме того позвольте поздравить вас с победой и вручить знак чемпиона.~
  IF ~~ THEN DO ~SetGlobal("KellisaiTalk","MYAREA",0)TakePartyItem("Arena3")DestroyItem("Arena3")GiveItemCreate("Arena4",Player1,1,0,0)AddXPObject(Player1,80000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY ~Какое несчастье, погиб один из наших бойцов! Я ухожу и больше не буду проводить боев на арене. Пусть этим занимается кто-нибудь другой, если власти вообще не закроют это заведение.~
  IF ~~ THEN DO ~EscapeAreaObject("To1409")~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArenaBreak","GLOBAL",2)~ THEN BEGIN 24 // from:
  SAY ~Негодяи, вы убили Клодуса! Я ухожу и больше не буду проводить боев на арене. Пусть этим занимается кто-нибудь другой, если власти вообще не закроют это заведение.~
  IF ~~ THEN DO ~EscapeAreaObject("To1409")~ EXIT
END