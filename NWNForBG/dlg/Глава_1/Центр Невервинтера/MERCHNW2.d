// Центр Невервинтера  

BEGIN ~MERCHNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY ~Ах, покупатель! У меня в продаже много фруктов и овощей, будете брать? Все чистое, никакой заразы, уверяю вас!~
  IF ~~ THEN REPLY ~Мне нужно задать несколько вопросов.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Хмм, я могу вам рассказать о моем товаре.~
  IF ~~ THEN REPLY ~Мне нужна информация о разных местах Невервинтера.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Заходите еще.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~Извините, ничем не могу помочь. Расспросите об этом кого-нибудь другого.~
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~Все знают что-то о чуме. Половина неправда, а половина - сплетни. Не думаю, что мне есть, что добавить.~
  IF ~~ THEN REPLY ~Мне нужна информация о разных местах Невервинтера.~ GOTO 3
  IF ~~ THEN REPLY ~Не слышали ничего странного? Каких-нибудь сплетен?~ GOTO 5
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~А что я могла слышать? Мне сейчас и поговорить-то не с кем. Покупателей совсем мало, все боятся чумы.~
  IF ~~ THEN REPLY ~Мне нужна информация о разных местах Невервинтера.~ GOTO 3
  IF ~~ THEN REPLY ~Что вы знаете о чуме?~ GOTO 4
  IF ~~ THEN REPLY ~До свидания.~ GOTO 2
END

