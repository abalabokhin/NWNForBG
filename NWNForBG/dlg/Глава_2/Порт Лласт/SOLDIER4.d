// Порт-Лласт Казармы Дневальный

BEGIN ~SOLDIER4~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~Попрошу вас немедленно уйти! Это казармы, а не музей для туристов!~
  IF ~~ THEN REPLY ~Кто твой начальник?~ GOTO 1
  IF ~~ THEN REPLY ~Если это казармы, то где же солдаты?~ GOTO 2
  IF ~~ THEN REPLY ~Хорошо, я уже ухожу.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Я наемник, меня нанял мэр этого города. Его зовут Кендрак и он находится в здании напротив. А теперь покиньте помещение.~
  IF ~~ THEN REPLY ~Раз ты наемник, то я могу тебя нанять?~ GOTO 3
  IF ~~ THEN REPLY ~Хорошо, я уже ухожу.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Неужели не понятно? На своих постах, конечно. Впрочем, некоторые сейчас в мэрии - это здание напротив. А теперь покиньте помещение.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Я уже нанят. Покиньте помещение, третий раз повторять не буду.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  !NumTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY ~Иди своей дорогой. Тут тебе не место.~
  IF ~~ THEN EXIT
END
