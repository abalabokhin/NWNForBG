// Центр Невервинтера   Маска Лунного Камня  Торго - бармен   Это один из многочисленных в Невервинтере торговцев горячительными напитками. Он одевается просто, желая вызвать симпатию у своих клиентов.

BEGIN ~TORGO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Что тебе нужно?~
  IF ~  Global("MoonstoneMask","GLOBAL",2)~ THEN REPLY ~Мне нужен пропуск.~ GOTO 1
  IF ~  GlobalLT("MoonstoneMask","GLOBAL",2)~ THEN REPLY ~Мне нужен пропуск.~ GOTO 2
  IF ~~ THEN REPLY ~Я хочу взглянуть на ваш ассортимент.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Пропуск стоит 200 золотых. Поскольку разрешение от Офалы вами получено, остается только заплатить.~
  IF ~  PartyGoldGT(199)~ THEN REPLY ~Вот 200 золотых.~ GOTO 3
  IF ~~ THEN REPLY ~Это слишком большая сумма, у меня нет столько денег,~ GOTO 4
  IF ~~ THEN REPLY ~Я хочу взглянуть на ваш ассортимент.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Пропуск стоит 200 золотых. Но прежде вам нужно поговорить с Офалой и получить разрешение.~
  IF ~~ THEN REPLY ~Я хочу взглянуть на ваш ассортимент.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Хорошо, вот ваш пропуск. Когда поднимитесь наверх, отдайте это кому-нибудь из собеседников, на свой выбор.~
  IF ~~ THEN DO ~TakePartyGold(200)GiveItemCreate("Oppermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Что ж, мальчики и девочки будут ждать вашего возвращения, когда вы можете себе это позволить. Они стоят этих денег.~
  IF ~~ THEN REPLY ~Я хочу взглянуть на ваш ассортимент.~ DO ~StartStore("Torgo",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

