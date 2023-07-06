// Лускан Suspicious type Подозрительный тип- вор-торговец на улице   Этот подозрительный полурослик с неподдельным ужасом наблюдает за хаосом, творящимся на улице.

BEGIN ~SUSPTYPE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY ~По виду ты вроде бы знаешь, каково это в тени жить.~
  IF ~~ THEN REPLY ~И что из этого?~ GOTO 1
  IF ~~ THEN REPLY ~Я считаю это оскорблением.~ GOTO 2
  IF ~~ THEN REPLY ~Зачем ты со мной заговорил?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я как раз такой парень, какой тебе нужен! Есть у меня товар, который тебе сильно жизнь облегчит.~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 3
  IF ~~ THEN REPLY ~Мне бы хотелось задать вам несколько вопросов.~ GOTO 4
  IF ~~ THEN REPLY ~Нет, спасибо.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ой, извините, <SIRMAAM>. Ошибочка вышла. Не буду докучать.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Дак ты иди сюда, в тень, я тебе и покажу.~
  IF ~~ THEN DO ~StartStore("SUSPTYPE",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Ну, скажу, что могу.~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~Если те че понадобиться, ты прям давай сюда, к старому Слайдеру. Я уж о тебе позабочусь.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Уж времечко-то какое для нас настало, умереть -- не встать. Много лет дела так хорошо не шли, а в таком городе, как Лускан, они и обычно-то неплохо идут.~
  IF ~~ THEN REPLY ~Что ты имеешь в виду?~ GOTO 8
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY ~Я чего, на бесову карту что ли похож, или как? У меня вот клиенты уже товару заждались, ну так что, будешь ты делом заниматься, или как?~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 3
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY ~Таперича Высшие Капитаны промежду собой сражаются, и дела идут прям как никогда. Я обеим сторонам продаю, и никто меня не трогает, так-то, потому что мой товар всем нужен.~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 3
  IF ~~ THEN REPLY ~Сколько времени все это происходит?~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY ~Несколько недель назад тут такие дела твориться начали. С тех пор я прям в золоте купаюсь. Слушай, у меня и другие клиенты есть, ты как, будешь покупать, или нет?~
  IF ~~ THEN REPLY ~Я посмотрю, что ты можешь мне предложить.~ GOTO 3
  IF ~~ THEN REPLY ~Мне нужно сориентироваться.~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 5
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 10 // from:
  SAY ~А ты лишний-то раз спиной к людям не поворачивайся. Тут найдутся такие, которые захотят в спину твою ножиком ткнуть.~
  IF ~~ THEN EXIT
END

