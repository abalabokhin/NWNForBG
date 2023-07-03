// Полуостров Мастер Джонс   Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~JOHNS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JohnsthDead","MYAREA",1)Global("Follow","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Благодарю за помощь, я как раз пробирался домой, когда эти скоты нашли меня.~
  IF ~~ THEN REPLY ~Кто вы? И что делаете на улице?~ GOTO 1
  IF ~~ THEN REPLY ~С чего вы взяли, что я спасаю вас? Гоните монету...~ GOTO 2
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я дворецкий леди Танглбрук. Я шел домой со своей утренней смены когда... все *это* началось!~
  IF ~~ THEN REPLY ~Кто напал на вас?~ GOTO 5
  IF ~~ THEN REPLY ~Разве здесь недостаточно стражников, чтобы охранять вас?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы знаете об этой тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Что!? Вот, это все, что у меня есть... А теперь оставь меня в покое!~
  IF ~~ THEN DO ~GiveGoldForce(92)IncrementGlobal("EvilNW1","GLOBAL",1)EscapeAreaDestroy(50)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Правда? Я уж думал, никогда не доберусь. Мне нужно прямо к капитану Киппу у врат. Я должен рассказать, что видел.~
  IF ~~ THEN DO ~SetGlobal("Follow","LOCALS",1)SetGlobal("JohnsthDead","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Спасибо еще раз, я так и сделаю...~
  IF ~~ THEN DO ~EscapeAreaDestroy(50)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Сбежавшие из тюрьмы. Кто-то сказал, что их освободил сам главный надзиратель... Мне это не нравится.~
  IF ~~ THEN REPLY ~Главный надзиратель, да?~ GOTO 8
  IF ~~ THEN REPLY ~Разве здесь недостаточно стражников, чтобы охранять вас?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы знаете об этой тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Еще и с этим карантином? Боюсь, они и так очень заняты. Простой народ вроде нас должен защищать себя сам.~
  IF ~~ THEN REPLY ~Кто напал на вас?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете об этой тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Капитан Элейфин - главный надзиратель. Он держит всех в кулаке... по крайней мере, держал раньше. Говорят, что это он освободил заключенных.~
  IF ~~ THEN REPLY ~Главный надзиратель, да?~ GOTO 8
  IF ~~ THEN REPLY ~Кто напал на вас?~ GOTO 5
  IF ~~ THEN REPLY ~Разве здесь недостаточно стражников, чтобы охранять вас?~ GOTO 6
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~Он хороший человек, клянусь! Каждый день он встречается в туннелях с леди Танглбрук, чтобы по-дружески сыграть в шахматы... Они ведь двоюродные брат с сестрой...~
  IF ~~ THEN REPLY ~Туннели? Что за туннели?~ GOTO 9
  IF ~~ THEN REPLY ~Разве здесь недостаточно стражников, чтобы охранять вас?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы знаете об этой тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY ~Из-за Воющей Смерти леди Танглбрук очень боялась выходить на улицу. Чтобы успокоить ее, Элейфин провел туннели между тюрьмой и ее поместьем, чтобы они могли продолжать там свои игры.~
  IF ~~ THEN REPLY ~Где это имение?~ GOTO 10
  IF ~~ THEN REPLY ~Разве здесь недостаточно стражников, чтобы охранять вас?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы знаете об этой тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY ~Танглбрук? Это на дальнем конце полуострова. Как я уже говорил, она до ужаса боится Воющей Смерти и заперла за мной дверь, когда я вышел. Может, вы бы могли навестить ее, проверить, все ли в порядке. Хоть она и боится, но оставляет нам запасной ключ под ковриком на лужайке.~
  IF ~~ THEN REPLY ~Разве здесь недостаточно стражников, чтобы охранять вас?~ GOTO 6
  IF ~~ THEN REPLY ~Что вы знаете об этой тюрьме?~ GOTO 7
  IF ~~ THEN REPLY ~Не проводить ли вас до ворот из района?~ GOTO 3
  IF ~~ THEN REPLY ~Вам лучше идти. Держитесь в тени.~ GOTO 4
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",1)~ THEN BEGIN 11 // from:
  SAY ~Что, что-то не так? Мне нужно добраться до врат полуострова и поговорить с капитаном Киппом.~
  IF ~~ THEN REPLY ~Тсс, идите за мной.~ DO ~SetGlobal("Pause","LOCALS",0)~ EXIT
  IF ~~ THEN REPLY ~Подождите здесь минутку.~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY ~Если уж бросаешь меня здесь, пожалуйста, не задерживайся...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",2)~ THEN BEGIN 13 // from:
  SAY ~Вот и врата района! Огромное спасибо вам за помощь, друг мой.~
  IF ~~ THEN DO ~SetGlobal("JohnsQuest","MYAREA",1)SetGlobal("Follow","LOCALS",3)AddexperienceParty(12000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Follow","LOCALS",3)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~Огромное спасибо вам за помощь, друг мой.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY ~Да благословит Хельм искателей приключений! Все пришло в норму, после того, как бунт в тюрьме был подавлен!~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("JohnsthDead","MYAREA",0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY ~На помощь! Бандиты хотят меня убить!~
  IF ~~ THEN EXIT
END

