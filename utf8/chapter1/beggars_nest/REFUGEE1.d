// Гнездо нищих Таверна Сияющий Змей Беженец Человек Мужчина Заданий нет Этот человек, очевидно, взволнован. Судя по его изможденному виду, чума перевернула его жизнь с ног на голову.
BEGIN ~REFUGEE1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Поверить не могу. Мы можем уходить? Нежити больше нет? Спасибо... спасибо тебе, если это твоя заслуга...~
  IF ~~ THEN DO ~EscapeAreaDestroy(50)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,1)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Уф... Мне повезло, что удалось добраться сюда. Они убили всех... а потом эти мертвецы ожили... Еле удалось добраться досюда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Как хорошо, что есть это место. Можно было бы попытаться добраться до святилища Хельма, но мне очень хотелось выпить.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,3)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Зомби преследовали меня досюда. Мне повезло, что мне удалось сохранить жизнь.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,4)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Нужно во всем искать хорошее, понимаешь? Зомби не занимаются разбоем. Когда все это кончится, я, возможно, смогу вернуться в собственный дом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,5)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Все потерялись. Мы все просто убежали... не знаю, где сейчас родные. Без понятия...~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,6)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~Казалось бы, стражники могли что-нибудь сделать... но нет... ничего... они просто стояли на стене...~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,7)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~Что не так с этим городом? Чума... зомби... Как мы умудрились так насолить Судьбе?~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,8)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~Неужели никто ничего не может сделать? Совсем ничего? Черт возьми, там же живые мертвецы ходят!~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,9)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~Где стражники? Где лорд Нашер? Они бросили нас на верную смерть! Верную смерть!~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,10)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~Мой сосед... он умер от чумы. А потом стал зомби. Со мной такого не случится... правда? ПРАВДА?~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,11)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~Как скоро они сюда доберутся? Зомби - существа безмозглые, но они могут учуять нас... они станут выламывать двери. Мы все умрем...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,12)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~Наверное, нужно было попробовать пробраться в Сердце города. Здесь нам помощи ждать не от кого.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,13)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~Что еще нас ждет? Чума... зомби... Что еще?~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,14)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~Ты можешь что-нибудь сделать? Можешь? Я не понимаю, как...~
  IF ~~ THEN EXIT
END

