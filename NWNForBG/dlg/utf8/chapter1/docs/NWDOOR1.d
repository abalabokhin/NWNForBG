// Доки Дверь в Таверну Сиди

BEGIN ~NWDOOR1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TalkedTo","NW1100",0)~ THEN BEGIN 0 // from:
  SAY ~Подойдите к двери и дайте мне взглянуть на вас, ладно?~ [NWDOOR50]
  IF ~  !HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 1
  IF ~  HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Что-то я вас не узнаю, верно? Нет, не узнаю. Для тех, кто не из наших, допуска нет.~
  IF ~~ THEN REPLY ~Кем же мне надо быть, чтобы попасть внутрь?~ GOTO 3
  IF ~~ THEN REPLY ~В этой таверне действует черный рынок?~ GOTO 3
  IF ~~ THEN REPLY ~Впустите меня! Арибет заявила, что мне следует охранять покой!~ GOTO 4
  IF ~~ THEN REPLY ~Вы не пожалеете, если впустите меня.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Хмм, я вижу форму Кровавого Моряка. Это хорошо, но ведите себя прилично. Если от вас или ваших друзей будут неприятности, живо вылетите вон.~
  IF ~~ THEN DO ~Unlock("Door1")OpenDoor("Door1")TriggerActivation("Tavsidi",FALSE)SetGlobal("TalkedTo","NW1100",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2
  SAY ~Если вам приходится спрашивать, значит, вам тут не рады. Это частное заведение. Только для членов, или единомышленников.~
  IF ~~ THEN REPLY ~Как я могу присоединиться к одной из этих групп, если вы меня не впускаете?~ GOTO 6
  IF ~~ THEN REPLY ~Впустите меня! Арибет заявила, что мне следует охранять покой!~ GOTO 4
  IF ~~ THEN REPLY ~Вы не пожалеете, если впустите меня.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Что ж, займитесь. Но снаружи. Ее и ее наемников из стражи тут не так уж любят.~
  IF ~~ THEN REPLY ~Кем же мне надо быть, чтобы попасть внутрь?~ GOTO 3
  IF ~~ THEN REPLY ~В этой таверне действует черный рынок?~ GOTO 3
  IF ~~ THEN REPLY ~Вы не пожалеете, если впустите меня.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~Не пожалею, вот как? А вы знаете, что это значит? Платите, и посмотрим, что вы можете предложить.~
  IF ~~ THEN REPLY ~Я могу предложить золото.~ GOTO 7
  IF ~~ THEN REPLY ~Мои услуги, как бы вы ни захотели воспользоваться ими.~ GOTO 8
  IF ~~ THEN REPLY ~Моя дорогая леди, я не сомневаюсь, что мы с вами можем прийти к какому-нибудь... соглашению.~ GOTO 9
  IF ~  NumItemsPartyGT("Nwmisc29",0)NumItemsPartyLT("Nwmisc29",5)~ THEN REPLY ~У меня есть несколько контрабандистских монет, валюты черного рынка.~ GOTO 10
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~Как насчет пяти контрабандистских монет? Это не так уж мало.~ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~Не мое дело. Либо у вас будет форма, которую я узнаю, либо... можете дать мне несколько монет контрабандиста. А теперь ступайте.~
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Очень жаль, но я принимаю только монеты контрабандистов, валюту черного рынка. Обзаведитесь ими, или присоединитесь к группе, которую я впускаю. Удачи, и долой с глаз моих.~
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Мне лакеи не нужны. Найдите немного монет контрабандистов, или вступите в группу, которую я впускаю. А теперь идите.~
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~У меня есть человек получше вас для стирки белья. Дайте мне денег контрабандистов, или вступите в группу, которой вход разрешен. А пока что - убирайтесь.~
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~Я не стану рисковать собственной шеей меньше чем за пять контрабандистских монет. Достаньте их или вступите в группу, которой вход разрешен. Все.~
  IF ~~ THEN DO ~SetGlobal("TalkedTo","NW1100",1)SetGlobal("UsedDoor1","NW1100",0)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY ~Что ж, неплохо. Дверь открыта для вас и ваших людей. Только смотрите, чтоб проблем не было.~
  IF ~~ THEN DO ~TakePartyItemNum("Nwmisc29",5)Unlock("Door1")OpenDoor("Door1")TriggerActivation("Tavsidi",FALSE)SetGlobal("TalkedTo","NW1100",1)DestroySelf()~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TalkedTo","NW1100",0)~ THEN BEGIN 12 // from:
  SAY ~Ну, в чем дело? Опять какой-то сброд штурмует таверну? Дайте-ка взглянуть на вас.~ [NWDOOR51]
  IF ~  !HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 1
  IF ~  HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN GOTO 2
END

