// Сердце города Зал Справедливости  Олефф Клерик Тира делает все возможное, чтобы сохранить присутствие духа в тех, кто ищет убежища в его церкви.

BEGIN ~OLEFF3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Что вам нужно? Вы разве не видите, сколько у меня дел? Здесь больше мертвых и тех, кто при смерти, чем я смогу вылечить за всю жизнь...~ [OLEFF061]
  IF ~~ THEN REPLY ~Мне нужна твоя помощь.~ GOTO 1
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Твою работу здесь не забудут.~ GOTO 3
  IF ~~ THEN REPLY ~Мне требуется лечение.~ GOTO 4
  IF ~~ THEN REPLY ~Пока.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Как и всем в наши дни... Очень хорошо. Золото, что вы мне дадите, я передам прямо Тиру, чтобы он поскорее избавил нас от этих мучений.~
  IF ~~ THEN DO ~StartStore("Oleff",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Здесь люди *умирают*, между прочим! У меня нет времени на разговоры. Абсолютно!~
  IF ~~ THEN REPLY ~Мне нужна твоя помощь.~ GOTO 1
  IF ~~ THEN REPLY ~Твою работу здесь не забудут.~ GOTO 3
  IF ~~ THEN REPLY ~Мне требуется лечение.~ GOTO 4
  IF ~~ THEN REPLY ~Пока.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~"Мало кто сейчас может делать то, что могу я. Я не перестаю молиться, чтобы это безумие кончилось поскорее.~
  IF ~~ THEN REPLY ~Мне нужна твоя помощь.~ GOTO 1
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Мне требуется лечение.~ GOTO 4
  IF ~~ THEN REPLY ~Пока.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Конечно. Наша лечебница открыта для всех.~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Да. Да спасет нас Тир...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 6 // from:
  SAY ~Пожалуйста, постарайтесь покороче, <SIRMAAM>. Здесь больше мертвых и тех, кто при смерти, чем я смогу вылечить за всю жизнь...~ [OLEFF060]
  IF ~~ THEN REPLY ~Мне нужна твоя помощь.~ GOTO 1
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Твою работу здесь не забудут.~ GOTO 3
  IF ~~ THEN REPLY ~Мне требуется лечение.~ GOTO 4
  IF ~~ THEN REPLY ~Пока.~ GOTO 5
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 7 // from:
  SAY ~Добро пожаловать в этот храм исцеления. Хотя боюсь, в последнее время он превратился в морг. Здесь больше мертвых и тех, кто при смерти, чем я смогу вылечить за всю жизнь...~ [OLEFF059]
  IF ~~ THEN REPLY ~Мне нужна твоя помощь.~ GOTO 1
  IF ~~ THEN REPLY ~Могу я задать вам несколько вопросов?~ GOTO 2
  IF ~~ THEN REPLY ~Твою работу здесь не забудут.~ GOTO 3
  IF ~~ THEN REPLY ~Мне требуется лечение.~ GOTO 4
  IF ~~ THEN REPLY ~Пока.~ GOTO 5
END

