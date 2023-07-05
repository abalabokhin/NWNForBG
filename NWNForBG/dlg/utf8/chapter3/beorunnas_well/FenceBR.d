// Колодец Беорунна Бар_1_этаж Подозрительный персонаж Женщина Халфлинг

BEGIN ~FENCEBR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY ~По виду ты вроде бы знаешь, каково это в тени жить.~
  IF ~~ THEN REPLY ~И что из этого следует?~ GOTO 1
  IF ~~ THEN REPLY ~Что тебе надо?~ GOTO 2
  IF ~~ THEN REPLY ~Я считаю это оскорблением.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~В таком случае, без меня вам не обойтись! У меня куча товаров, которые могут облегчить вам жизнь.~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 4
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Нет, спасибо.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Работка у меня такая, за такими вещами следить. А тебе могут кой-какие вещички понадобиться. В таком случае, без меня вам не обойтись! У меня куча товаров, которые могут облегчить вам жизнь.~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 4
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 5
  IF ~~ THEN REPLY ~Нет, спасибо.~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ой, извините, <SIRMAAM>. Ошибочка вышла. Не буду докучать.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Дак ты иди сюда, в тень, я тебе и покажу.~
  IF ~~ THEN DO ~StartStore("FenceBR",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Ну, скажу, что могу.~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 8
  IF ~~ THEN REPLY ~В другой раз~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Если те че понадобиться, ты прям давай сюда. Я о тебе позабочусь.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~Отличное времечко для народа вроде нас. Эта война для меня - золотое дно.~
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 9
  IF ~~ THEN REPLY ~А мне казалось, что эти междоусобицы могут загнать вас в подполье.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~Я чего, на бесову карту что ли похожа, или как? У меня вот клиенты уже товару заждались, ну так что, будешь ты делом заниматься, или как?~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 4
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 7
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~Как начались сражения между Лусканом и Невервинтером, мои товары мигом стали дефицитны... так что цену я свою устанавливаю, если понимаете, к чему я клоню.~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 8
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 6
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN BEGIN 10 // from:
  SAY ~А ты лишний-то раз спиной к людям не поворачивайся. Тут найдутся такие, которые захотят в спину твою ножиком ткнуть.~
  IF ~~ THEN EXIT
END

