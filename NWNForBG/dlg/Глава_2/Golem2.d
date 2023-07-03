// Восточная дорога, Руины рас созидателей уровень 2, Голем.

BEGIN ~GOLEM2~

IF ~  NumTimesTalkedTo(0)!PartyHasItem("CreatorS")~ THEN BEGIN 0 // from:
  SAY ~Кварт сукласа туртх?~
  IF ~~ THEN REPLY ~Что ты говоришь?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я хранитель второй печати. Никто не пройдет. Тебе нужно сказать пароль на языке хозяев.~
  IF ~~ THEN REPLY ~Мне нужно пройти через вторую печать.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Никто не пройдет. Тебе нужно сказать пароль на языке хозяев.~
  IF ~~ THEN REPLY ~Я из твоих Хозяев. Дай мне пройти.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Ты не говоришь на языке хозяев. Ты не можешь пройти.~
  IF ~~ THEN REPLY ~Но меня послали хозяева. Я выполняю важное задание, и мне нужно пройти.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Ты не говоришь пароль хозяев. Ты не можешь пройти.~
  IF ~~ THEN REPLY ~Где я могу найти пароль?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Я больше не буду отвечать на вопросы, раб.~
  IF ~~ THEN EXIT
END

IF ~  !Global("Door2Opened","MYAREA",1)OR(2)!NumTimesTalkedTo(0)PartyHasItem("CreatorS")~ THEN BEGIN 6 // from:
  SAY ~Ты не можешь пройти, раб. Тебе нужно сказать пароль на языке хозяев.~
  IF ~  PartyHasItem("CreatorS")~ THEN REPLY ~Турт мог лама гат раг.~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Ты говоришь на языке хозяев. Ты можешь пройти.~
  IF ~~ THEN DO ~TakePartyItem("CreatorS")SetGlobal("Door2Opened","MYAREA",1)Unlock("Door2")OpenDoor("Door2")~ EXIT
END

IF ~  Global("Door2Opened","MYAREA",1)~ THEN BEGIN 8 // from:
  SAY ~Дверь открыта. С тобой закончено.~
  IF ~~ THEN EXIT
END
