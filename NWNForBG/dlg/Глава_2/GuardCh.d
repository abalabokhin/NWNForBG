// Чарвуд, Стражник замка раса - человек. Этот стражник ходит туда-сюда со слегка смущенным и растерянным выражением лица.

BEGIN ~GUARDCH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("DoorOpened","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~А, я вас узнаю. Вы ведь из этих бродячих сказочников, да... Ну так лордам Джарегам никто не нужен. Им нужен отдых...~
  IF ~~ THEN REPLY ~На кого вы работаете?~ GOTO 1
  IF ~~ THEN REPLY ~Давно вы стоите тут на посту?~ GOTO 2
  IF ~~ THEN REPLY ~Почему вы охраняете эти ворота?~ GOTO 3
  IF ~~ THEN REPLY ~Все равно, мне нужно попасть внутрь.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Почему... Зачем мэр Мобли меня нанял... Завтра я получу первую зарплату: пятьдесят золотых... на восходе, он сказал... завтра... Я... Я не местный... Я был искателем приключений. Пришел откуда-то издалека... Смешно. Я не помню откуда... Правда, смешно?~
  IF ~~ THEN REPLY ~Это место не дает вам ясно мыслить...~ GOTO 4
  IF ~~ THEN REPLY ~Что вы знаете о замке?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о Джарегах?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ну, мэр Мобли нанял меня только вчера... верно ведь? Время вроде бы... растягивается... здесь... Я... Я не местный... Я был искателем приключений. Пришел откуда-то издалека... Смешно. Я не помню откуда... Правда, смешно?~
  IF ~~ THEN REPLY ~Это место не дает вам ясно мыслить...~ GOTO 4
  IF ~~ THEN REPLY ~Что вы знаете о замке?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о Джарегах?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я... Я не знаю... Мэр Мобли сказал, что это важно... Никого не впускать, никого не выпускать... Ничего... не... впускать... и не выпускать... Я... Я не местный... Я был искателем приключений. Пришел откуда-то издалека... Смешно. Я не помню откуда... Правда, смешно?~
  IF ~~ THEN REPLY ~Это место не дает вам ясно мыслить...~ GOTO 4
  IF ~~ THEN REPLY ~Что вы знаете о замке?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о Джарегах?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Ясно мыслить? Нет, все чудесно... совершенно ясно... обычно... всегда... Что? Простите, я... Я немного отвлекся... Что вы сказали?~
  IF ~~ THEN REPLY ~Что вы знаете о замке?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о Джарегах?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Он такой старый, как будто стоял здесь вечно... Весь этот город старый... Мы все просто заняты своим делом...~
  IF ~~ THEN REPLY ~Что вы знаете о Джарегах?~ GOTO 6
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Их двое, Карлат и Квинт, они братья... Карлата мне не доводилось видеть, а Квинт иногда бродит по городу, спрашивает о детях... Смешно... Он никогда не заходит в ворота, я... Это точно... и нету тут никаких детей, совсем... Разве это не смешно?~
  IF ~~ THEN REPLY ~Что вы знаете о замке?~ GOTO 5
  IF ~~ THEN REPLY ~Где я могу найти мэра?~ GOTO 7
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY ~Мы с ним встретились в мэрии, и, по-моему, он оттуда никогда не уходит... Он... Он, наверное, все еще... там...~
  IF ~~ THEN REPLY ~Что вы знаете о замке?~ GOTO 5
  IF ~~ THEN REPLY ~Что вы знаете о Джарегах?~ GOTO 6
  IF ~  Global("KnowMajor","GLOBAL",1)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 8
  IF ~  Global("KnowMajor","GLOBAL",0)~ THEN REPLY ~Мне нужно пройти за ворота. Вы меня пустите?~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.5
  SAY ~Но мэр Мобли сказал... Он сказал... Что же он сказал? Может... Может, он велел открыть вам ворота... Да, наверное, именно так он сказал...~
  IF ~~ THEN DO ~SetGlobal("DoorOpened","LOCALS",1)Unlock("Door06")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY ~Мэр Мобли приказал мне никого не пускать. Ты лучше с ним поговори сперва. Он в своей конторе в центре поселка.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DoorOpened","LOCALS",0)~ THEN BEGIN 10 // from:
  SAY ~Вы недавно в этих местах, не так ли... В любом случае, я советую вам не беспокоить лордов Джарегов... Им нужен отдых, понимаете...~
  IF ~~ THEN REPLY ~На кого вы работаете?~ GOTO 1
  IF ~~ THEN REPLY ~Давно вы стоите тут на посту?~ GOTO 2
  IF ~~ THEN REPLY ~Почему вы охраняете эти ворота?~ GOTO 3
  IF ~~ THEN REPLY ~Все равно, мне нужно попасть внутрь.~ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DoorOpened","LOCALS",1)~ THEN BEGIN 11 // from:
  SAY ~Я... Я ищу масло, чтобы смазать ворота... Что, бишь, я ищу?~
  IF ~~ THEN EXIT
END
