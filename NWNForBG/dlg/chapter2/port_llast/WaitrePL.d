// Порт-Лласт Таверна Клиент Официантка.

BEGIN ~WAITREPL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Да, господа, что вы хотели? Если хотите эля или снять комнату на ночь, то вам к бармену, он всем этим заведует.~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Понятно, я пойду пожалуй.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY ~Я просто официантка. Обслуживаю гостей. Приношу еду и выпивку, больше ничего.~
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Понятно, я пойду пожалуй.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY ~Нет уж, увольте, я просто официантка, со всеми вопросами пожалуйста обращайтесь к бармену, а мне некогда, клиенты ждут~
  IF ~~ THEN REPLY ~Кто ты?~ GOTO 1
  IF ~~ THEN REPLY ~Понятно, я пойду пожалуй.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~Приятно вам провести время в нашем заведении.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,1)~ THEN BEGIN 4 // from:
  SAY ~Пожалуйста, наслаждайся пребыванием здесь, <LADYLORD>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,2)~ THEN BEGIN 5 // from:
  SAY ~Мне не стоит болтать попусту, <SIRMAAM>. Меня уволят, если хозяин заведения поймает меня за бездельем.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,3)~ THEN BEGIN 6 // from:
  SAY ~Отстань, пожалуйста. У меня хлопот полон рот с этим морячком - так и норовит под юбку залезть!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,4)~ THEN BEGIN 7 // from:
  SAY ~Если хочешь что-нибудь заказать, поговори с барменом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,5)~ THEN BEGIN 8 // from:
  SAY ~Вон тот эльф, его, кажется, зовут Элайтом, как-то странно на меня смотрит, я его боюсь.~
  IF ~~ THEN EXIT
END
