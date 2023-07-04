// Порт-Лласт Торговец

BEGIN ~PLMISC~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~Приятная встреча! Похоже, вы пришли издалека.~
  IF ~~ THEN REPLY ~Вы правы. Не подскажете, где здесь ближайшая гостиница?~ GOTO 1
  IF ~~ THEN REPLY ~Да, и мне хотелось бы взглянуть на ваши товары.~ GOTO 2
  IF ~~ THEN REPLY ~У меня нет ни малейшего желания болтать с вами.~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY ~Конечно! Ищите самое старое здание в центре. Оно было возведено давным давно, и сколько я себя помню, всегда было тут.~
  IF ~~ THEN REPLY ~Спасибо. Но прежде чем уйти, мне бы хотелось взглянуть на ваши товары.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо. Мне пора.~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~Это мне нравится. Подходите, выбирайте.~
  IF ~~ THEN DO ~StartStore("PLMisc",LastTalkedToBy(Myself))~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY ~Оу, вы вернулись! Может хотите взглянуть на мои товары?~
  IF ~~ THEN REPLY ~Да, давайте посмотрим, что у вас есть.~ GOTO 2
  IF ~~ THEN REPLY ~Нет, не сейчас.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY ~Только не забудьте вернуться, когда вам что-либо понадобится!~
  IF ~~ THEN EXIT
END
