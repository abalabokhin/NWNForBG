// Восточная дорога, Руины рас созидателей уровень 1, Голем.

BEGIN ~GOLEM1~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Кварт сукласа туртх?~
  IF ~~ THEN REPLY ~Что ты говоришь?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я хранитель первой печати. Никто не пройдет.~
  IF ~~ THEN REPLY ~Что это за первая печать?~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Это место не для вас. Только хозяева могут пройти сюда.~
  IF ~~ THEN REPLY ~Мне нужно пройти в эту пещеру.~ GOTO 3
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~Никто не пройдет.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~Вот кольцо.~ GOTO 8
  IF ~~ THEN REPLY ~Я из твоих Хозяев. Дай мне пройти.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY ~Ты не говоришь на языке хозяев. Ты из народа рабов. Ты не пройдешь.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~Вот кольцо.~ GOTO 8
  IF ~~ THEN REPLY ~Но меня послали хозяева. Я выполняю важное задание, и мне нужно пройти.~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY ~Ты не обладаешь кольцом создателя. Рабы, которых послали создатели, всегда носят кольцо.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~Вот кольцо.~ GOTO 8
  IF ~~ THEN REPLY ~Где я могу достать такое кольцо?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY ~Я больше не буду отвечать на вопросы, раб.~
  IF ~~ THEN EXIT
END

IF ~  !Global("Door1Opened","MYAREA",1)!NumTimesTalkedTo(0)~ THEN BEGIN 7 // from:
  SAY ~Ты не можешь пройти, раб.~
  IF ~  PartyHasItem("CreatorR")~ THEN REPLY ~Вот кольцо.~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Ты можешь пройти.~
  IF ~~ THEN DO ~TakePartyItem("CreatorR")SetGlobal("DoorOpened","MYAREA",1)Unlock("DoorX1")OpenDoor("DoorX1")~ EXIT
END

IF ~  Global("Door1Opened","MYAREA",1)~ THEN BEGIN 9 // from:
  SAY ~С тобой закончено.~
  IF ~~ THEN EXIT
END
