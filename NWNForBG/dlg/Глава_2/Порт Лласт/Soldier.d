// Порт-Лласт Наемник Заданий нет

BEGIN ~SOLDIER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~Привет, приятель. Тебе что, некуда было податься, кроме как в Порт-Лласт?~  ~Ну что за милашка! Тебе нравятся солдаты?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~Ты не с войны ли, дружище? Советую тебе сходить в храм и немного подлечиться.~ ~Ты не с войны ли, подруга? Советую тебе сходить в храм и немного подлечиться.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~А тебе обязательно останавливаться в Порт-Лласте? Наверно, Лускан тебе больше понравится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~Посторонись, гражданин!~ ~Эй, лапуля, отлично выглядишь!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~Гм, сегодня что, парад идиотов? Должно быть, не заметил объявления.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~Ты, должно быть, еще один искатель приключений из Невервинтера! Добро пожаловать в Порт-Лласт!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~Прелестная погода, не правда ли?~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~Приветствую, приятель! Пожалуйста, наслаждайтесь всем, что может предложить Порт-Лласт!~ ~Приветствую, подружка! Пожалуйста, наслаждайтесь всем, что может предложить Порт-Лласт!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~Проходи. Нет у меня времени на таких, как ты.~
  IF ~~ THEN EXIT
END
