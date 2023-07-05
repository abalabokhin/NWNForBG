// Порт-Лласт Лазарет Обслуга

BEGIN ~NURSE~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~Привет! Нет времени болтать, мне нужно ухаживать за больными и ранеными.~
  IF ~~ THEN REPLY ~Это похоже на лазарет. Ты можешь меня вылечить?~ GOTO 1
  IF ~~ THEN REPLY ~Откуда здесь столько больных? Надеюсь это не чума?~ GOTO 2
  IF ~~ THEN REPLY ~Хорошо, я уже ухожу.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Извините <SIRMAAM>. Моих знаний для этого недостаточно. Обратитесь к Ньюрику в храме, он вам обязательно поможет.~
  IF ~~ THEN REPLY ~Откуда здесь столько больных? Надеюсь это не чума?~ GOTO 2
  IF ~~ THEN REPLY ~Хорошо, я уже ухожу.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Чума? Нет, что вы. Это обычные больные, а также воины, получившие ранения. Извините, я займусь своим делом.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  !NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY ~Извините, нет времени болтать, мне нужно ухаживать за больными и ранеными.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 4 // from:
  SAY ~Знаешь, я ведь начинающий писатель. Я только что закончил работу над романом, основанном на реальных событиях из жизни великого, но не понятого Дриззта До'Урдена. Если у тебя есть пара минут, я могу прочитать тебе отрывок.~
  IF ~~ THEN EXIT
END
