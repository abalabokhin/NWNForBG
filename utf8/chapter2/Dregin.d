// Дрегин - дварф-друид стоит у входа в лес с нимфой и сетарой, не пускает без разрешения Аавила 

BEGIN ~DREGIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Ну-ка стоять! Нельзя те ходить в эти леса, не то помрешь жуткой смертью.~
  IF ~~ THEN REPLY ~Кто сказал, я не могу войти?~ GOTO 1
  IF ~~ THEN REPLY ~Что за жуткая смерть?~ GOTO 1
  IF ~~ THEN REPLY ~Убирайся с дороги, а то башку оторву!~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Звать меня Дрегин, великий архидруид Аавилл поставил меня, сталбыть, охранять эти леса. Зверюги тут, вишь ты, стали жутко злобные, вот Аавилл и велел, чтоб никого не пускать без евонного позволения.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~Дык я просто хочу спасти твою долбану жизнь, <MALEFEMALE>! Иди в рощу да поговори с Аавиллом, а ежели и после не раздумаешь с жистью своей расстаться, дык он пустит, не боись.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~Я же сказал, иди добудь разрешение от друида Аавилла. А то не пущу, и все тут.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AavillQuest","GLOBAL",1)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 4 // from:
  SAY ~Я слыхал, вы договорились там с шишкой нашей, Аавиллом. Ну и ладненько, значит, удачи те.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY ~Так тебе просто так удалось решить все наши проблемы, да? Что ж, значит, мне не придется больше задерживать странников, это точно.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 5 // from:
  SAY ~Духа больше нет, и это самый печальный день из всех. Я очень надеюсь, что когда-нибудь нам все-таки удастся восстановить лес.~
  IF ~~ THEN EXIT
END
