// Дом Вэйнива Слуга

BEGIN ~SERVANV~

IF ~  !NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Извините, но меня ждет множество дел.~
  IF ~~ THEN EXIT
END

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY ~Добрый день, это дом господина Вэйнива и его сейчас нет. Я не узнаю вас... Могу ли я поинтересоваться, кто вы?~
  IF ~~ THEN REPLY ~Нет, не можете.~ GOTO 2
  IF ~~ THEN REPLY ~Да, пожалуйста. Мы преступники, причем из числа самых ужасных, так что если вы не будете вести себя тихо, нам придется вас убить.~ GOTO 3
  IF ~~ THEN REPLY ~Мы мы здесь по поручению Вэйнива, он просил ему кое-что принести.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~Хм, ладно.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY ~Л-ладно, пожалуйста, не трогайте меня, я всего лишь ничтожный слуга, я не причиню вам никакого беспокойства.~
  IF ~~ THEN DO ~EscapeAreaDestroy(90)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY ~Хм, не помню, чтобы мой господин... ну да ладно, извините, что побеспокоил вас.~
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY ~Я думаю, вы будете для меня господином получше, чем был прошлый!~
  IF ~~ THEN EXIT
END
