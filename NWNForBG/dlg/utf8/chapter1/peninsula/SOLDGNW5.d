// Полуостров Солдат ополчения   Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~SOLDGNW5~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)RandomNum(1,2)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Итак, что я могу для вас сделать?~
  IF ~~ THEN REPLY ~Мне нужно поговорить с вашим начальником.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Чем я могу помочь?~ GOTO 2
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 3
  IF ~~ THEN REPLY ~Где в этом районе ваша штаб-квартира?~ GOTO 4
  IF ~~ THEN REPLY ~Ничего, все в порядке.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Седос? Она в штаб-квартире района. Это большое здание к востоку отсюда.~
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Чем я могу помочь?~ GOTO 2
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 3
  IF ~~ THEN REPLY ~Это все, что мне надо было знать.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Ну, <CHARNAME>, если вам нужно что-то еще, кроме как помочь нам переловить сбежавших и просто сохранить мир, вам нужно поговорить с нашей начальницей, мисс Себил.~
  IF ~~ THEN REPLY ~А где она?~ GOTO 6
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 3
  IF ~~ THEN REPLY ~Где в этом районе ваша штаб-квартира?~ GOTO 4
  IF ~~ THEN REPLY ~Это все, что мне надо было знать.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Вы не слышали? Сбежали заключенные из тюрьмы. Весь округ кишит ими, а у нас работа грязная - надо их снова собрать, мертвых или еще как.~
  IF ~~ THEN REPLY ~Мне нужно поговорить с вашим начальником.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Чем я могу помочь?~ GOTO 2
  IF ~~ THEN REPLY ~Где в этом районе ваша штаб-квартира?~ GOTO 4
  IF ~~ THEN REPLY ~Это все, что мне надо было знать.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Это большое здание к востоку отсюда.~
  IF ~~ THEN REPLY ~Мне нужно поговорить с вашим начальником.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Чем я могу помочь?~ GOTO 2
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 3
  IF ~~ THEN REPLY ~Это все, что мне надо было знать.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Тогда держитесь подальше. Здесь опасно.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY ~Седос? Она в штаб-квартире района. Это большое здание к востоку отсюда.~
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 3
  IF ~~ THEN REPLY ~Это все, что мне надо было знать.~ GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)RandomNum(2,2)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Не видишь, я занят?~
  IF ~~ THEN REPLY ~Мне нужно поговорить с вашим начальником.~ GOTO 1
  IF ~  IsGabber(Player1)~ THEN REPLY ~Меня зовут <CHARNAME>. Чем я могу помочь?~ GOTO 2
  IF ~~ THEN REPLY ~Что здесь происходит?~ GOTO 3
  IF ~~ THEN REPLY ~Где в этом районе ваша штаб-квартира?~ GOTO 4
  IF ~~ THEN REPLY ~Ничего, все в порядке.~ GOTO 5
END

// ----------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)GlobalGT("SedosQuest","GLOBAL",2)GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~Похоже, сейчас в этом районе довольно тихо. Что бы здесь ни происходило, сейчас уже все кончено. Мне кажется, с нами все будет в порядке... если нас не настигнет чума.~
  IF ~~ THEN EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("SedosQuest","GLOBAL",3)Global("PeninsulaDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Нужна помощь, гражданин?~
  IF ~~ THEN EXIT
END

