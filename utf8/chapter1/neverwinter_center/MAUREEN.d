// Центр Невервинтера  Морин Человек Женщина  - просит очистить Полуостров.  Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.

BEGIN ~MAUREEN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)!Class(Player1,THIEF_ALL)~ THEN BEGIN 0 // from:
  SAY ~Прошу прощения за невежливый прием, <SIRMAAM>, но мне сейчас ни до чего. Чума уносит нас одного за другим, а я не могу даже укрыться дома. Полуостров переполнен беглыми преступниками. Они теперь завладели всем нашим добром. Почему же никто ничего не делает?!~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Чем я могу помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~А, иди прочь. Твоя слабость раздражает меня.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я не могу ни с кем говорить. Не хочу. Я хочу только попасть домой. Ох, а зачем я вам это говорю? Вы же не можете расчистить весь полуостров.~
  IF ~~ THEN REPLY ~Чем я могу помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~А, иди прочь. Твоя слабость раздражает меня.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Я... я не знаю. Ты же не сможешь справиться с ними всеми в одиночку... да? Нам нужен герой... Я не знаю, может, это и ты. Если ты хоть что-то можешь сделать, чтобы поправить ситуацию на полуострове, я умоляю тебя - сделай это. ~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~А, иди прочь. Твоя слабость раздражает меня.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~Всего доброго. Я буду тут. Мне больше некуда идти. Домой точно нельзя.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~Не нужно мне напоминать, как мало мы сами можем сделать. Нас уже столькие оттолкнули... весь полуостров захвачен... Тогда иди, но... пожалуйста... если у тебя будет возможность... пожалуйста, загляни на полуостров... Там осталось все, что у нас было.~
  IF ~~ THEN DO ~SetGlobal("MyQuest","LOCALS",0)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)Class(Player1,THIEF_ALL)~ THEN BEGIN 5 // from:
  SAY ~Что вы хотите? Пожалуйста, скажите, что вы не из тех мерзавцев, выгнавших нас из домов. У меня нечего красть. Я не могу даже попасть к себе домой! Полуостров переполнен беглыми преступниками. Они теперь завладели всем нашим добром. Почему же никто ничего не делает?!~
  IF ~~ THEN REPLY ~Нельзя ли мне задать несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Чем я могу помочь?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~А, иди прочь. Твоя слабость раздражает меня.~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// --------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~(хнычет) Что же нам делать?~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Поверить не могу, что кто-то тратит на нас время. Спасибо за все, что вы сделали. Может, это и немного, но на полуострове как-никак наши дома...~
  IF ~  Global("MyQuest","LOCALS",0)~ THEN DO ~AddexperienceParty(4000)EscapeArea()~ EXIT
  IF ~  Global("MyQuest","LOCALS",1)~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

