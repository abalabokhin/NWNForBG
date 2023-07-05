// Лускан Подмигни и ущипни, 2-й уровень Благородный клиент Этот господин выглядит так, словно он бессчетное количество раз пользовался услугами этого заведения в прошлом.

BEGIN ~CUSTOM13~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,1)~ THEN BEGIN 0 // from:
  SAY ~Своей очереди тебе придется дожидаться вечно... На случай, если ты не видишь - у Белы полно народу.~ ~Ого... только взгляните. Как насчет того-сего, милая? Возьмешь меня к себе в комнату?~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,2)~ THEN BEGIN 1 // from:
  SAY ~Знаешь, мне говорили, что Курт и Барам владеют этим местом. Захватили его.~ ~Ты такая красотуля! Ты новенькая девушка?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,3)~ THEN BEGIN 2 // from:
  SAY ~Одна девица сказала мне, что одна из куртизанок Белы принадлежит только Высшему Капитану Бараму. Она встречается с ним каждую ночь!~ ~Мне сказали, что один из местных жиголо каждый вечер тайно встречается с Высшим Капитаном Куртом. Вот почему это место еще открыто!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,4)~ THEN BEGIN 3 // from:
  SAY ~Будьте осторожны внизу. Скоро начнется драка и все это место сгорит... Смотрите.~ ~Сколько вы берете за ночь? Я заплачу вдвойне.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,5)~ THEN BEGIN 4 // from:
  SAY ~Хммм... Интересно, какая у мисс Белы цена за ночь?~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,6)~ THEN BEGIN 5 // from:
  SAY ~Многие из нас играют в гремучку, пока ждут своей очереди. Хотите присоединиться?~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,7)~ THEN BEGIN 6 // from:
  SAY ~Проклятье! Почти все деньги проиграны в гремучку... Теперь я даже не смогу остаться.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,8)~ THEN BEGIN 7 // from:
  SAY ~Прекрасное место, в которое можно прийти и на время забыть о войне.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,9)~ THEN BEGIN 8 // from:
  SAY ~Говорят, Высший Капитан Курт закрыл район Западной Гавани. Теперь из Лускана нет выхода.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,10)~ THEN BEGIN 9 // from:
  SAY ~Говорят, что Барам сидит в канализации... Но я точно знаю, что там полно монстров, так что это неправда.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,11)~ THEN BEGIN 10 // from:
  SAY ~Смотрите, чтобы стражники не поймали вас на улице. Если вы им не знакомы, они вас убьют.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,12)~ THEN BEGIN 11 // from:
  SAY ~Кто-то сказал, что одна из девушек здесь забеременела. Теперь у Белы почти нет работающих девушек.~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(13,13)~ THEN BEGIN 12 // from:
  SAY ~Извините... У меня сейчас много дел. Нет времени на болтовню.~
  IF ~~ THEN EXIT
END

