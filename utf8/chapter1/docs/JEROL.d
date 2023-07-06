// Порт Двадцатка в Колчане Джерол   Этот торговец уверен в себе и спокоен, похоже, чума не отразилась на его торговле. Видимо, он работает с клиентами, которым просто некуда больше пойти.

BEGIN ~JEROL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в мой скромный магазин. Прежде чем мы продолжим, хочу обратить ваше внимание на мою охрану. Я ничего не имею против тех, кто зарабатывает на жизнь воровством, но я не хочу стать их жертвой. Мне тоже нужно на что-то жить.~
  IF ~~ THEN REPLY ~Конечно. У вас есть что-нибудь интересное?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~У меня стандартный выбор снаряжения. Есть и другие вещи, но они скорее всего вас не заинтересуют. Вы ведь стражник, так?~
  IF ~~ THEN REPLY ~Просто покажи стандартные вещи.~ GOTO 3
  IF ~~ THEN REPLY ~Откуда же мне знать, если вы сами мне не покажете? Ну же.~ GOTO 4
  IF ~~ THEN REPLY ~В другой раз. До свидания.~ GOTO 2

END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Приятно иметь с вами дело. Заходите еще.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Вот, взгляните.~
  IF ~~ THEN DO ~StartStore("Jerol1",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Большая часть моих особенных товаров находится в магазине в Таверне Сиди... если у вас есть для этого монеты. Контрабандные монеты.~
  IF ~  Global("Coins","LOCALS",3)~ THEN GOTO 5
  IF ~  GlobalLT("Coins","LOCALS",3)~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Но у меня больше нет таких монет. Мне очень жаль.~
  IF ~~ THEN REPLY ~А где я смогу достать еще?~ GOTO 10
  IF ~~ THEN REPLY ~Тогда покажи стандартные вещи.~ GOTO 3
  IF ~~ THEN REPLY ~В таком случае, спасибо, что потратили на меня время.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~У меня как раз есть немного таких монет. 350 золотых за монету. Круто, я знаю, но если они вам нужны, вы заплатите.~
  IF ~  Global("Coins","LOCALS",0)PartyGoldGT(1049)~ THEN REPLY ~Хорошо, я возьму три.~ GOTO 7
  IF ~  GlobalLT("Coins","LOCALS",2)PartyGoldGT(699)~ THEN REPLY ~Хорошо, я возьму две штуки.~ GOTO 8
  IF ~  GlobalLT("Coins","LOCALS",3)PartyGoldGT(349)~ THEN REPLY ~Хорошо, я возьму одну.~ GOTO 9
  IF ~~ THEN REPLY ~А где я смогу достать еще, если они мне понадобятся?~ GOTO 10
  IF ~~ THEN REPLY ~Цена просто сумасшедшая! Наверняка, можно договориться за меньшие деньги!~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Приятно иметь с вами дело. Заходите еще.~
  IF ~~ THEN DO ~SetGlobal("Coins","LOCALS",3)TakePartyGold("1050")DestroyGold(1050)GiveItemCreate("Nwmisc29",LastTalkedToBy,3,0,0)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY ~Приятно иметь с вами дело. Заходите еще.~
  IF ~~ THEN DO ~IncrementGlobal("Coins","LOCALS",2)TakePartyGold("700")DestroyGold(700)GiveItemCreate("Nwmisc29",LastTalkedToBy,2,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY ~Приятно иметь с вами дело. Заходите еще.~
  IF ~~ THEN DO ~IncrementGlobal("Coins","LOCALS",1)TakePartyGold("350")DestroyGold(350)GiveItemCreate("Nwmisc29",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.4
  SAY ~Они у меня почти закончились, но... может, когда-нибудь вы окажете мне услугу, а? Я расскажу вам, где их можно достать. Гильда из Золотого Яблока. Иногда она приносит мне эти монеты. Она понятия не имеет, что это такое, благослови ее боги. Может, там вы найдете одну... или пару... Моя цена не изменится, но я вам просто хочу помочь. Удачи.~
  IF ~~ THEN EXIT
END

// ------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 11 // from:
  SAY ~Снова клиенты! Да, сегодня день оживленный, несмотря на всю опасность на улицах. У меня стандартный выбор снаряжения. Есть и другие вещи, но они скорее всего вас не заинтересуют.~
  IF ~~ THEN REPLY ~Просто покажи стандартные вещи.~ GOTO 3
  IF ~~ THEN REPLY ~Откуда же мне знать, если вы сами мне не покажете? Ну же.~ GOTO 4
  IF ~~ THEN REPLY ~В другой раз. До свидания.~ GOTO 2
END

