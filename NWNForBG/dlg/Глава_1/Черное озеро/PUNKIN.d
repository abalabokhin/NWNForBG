// Чернозерье Панкин   Эта девочка выглядит вполне счастливой. Похоже, ее оберегали от ужасов чумы.

BEGIN ~PUNKIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY ~Привет. Вы хороший? Выглядите хорошо. Мама говорит, есть много плохих людей. Может, даже внизу.~
  IF ~~ THEN REPLY ~А что внизу? В вашем доме что-нибудь есть?~ GOTO 1
  IF ~~ THEN REPLY ~Нельзя выходить наружу. Это опасно.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Да, что-то есть за шкафом, но мама не разрешает говорить об этом... А... Больше я ничего не скажу.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Наверное, но маме все равно. Она говорит, люди могут заболеть дома, на работе, в церкви, так почему мне нельзя погулять? К тому же, она рассердилась, потому что я опять залезла за шкаф. Говорит, туда нельзя.~
  IF ~~ THEN REPLY ~А что за шкафом? В вашем доме что-нибудь есть?~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Ну ладно, пока, и все такое.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Не хочу, чтобы мама узнала, что я знаю тайное слово. Может, вы сами у нее спросите?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Тайное слово? Расскажи мне о нем. Мы же друзья, разве нет?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Тайное слово? Расскажи мне о нем. Мы же друзья, разве нет?~ GOTO 7
  IF ~~ THEN REPLY ~Скажи мне это слово, или тебя ждут неприятности. Я скажу твоей матери, что ты воруешь вещи.~ GOTO 8
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~Ну, наверное. Только маме не говори. Я прячусь за книжной полкой. Говоришь слово, и она открывается. Правда, это какое-то глупое слово. Слово это "хал-уу-ет". Не знаю я, что оно значит, но когда его говоришь, открывается полка. Странно, да?~
  IF ~~ THEN REPLY ~Нельзя выходить наружу. Это опасно.~ GOTO 9
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY ~Нет, у меня будут проблемы. Я не хочу, чтобы стало еще хуже. Мама и так все время плачет, потому что столько народу болеет.~
  IF ~~ THEN REPLY ~Скажи мне это слово, или тебя ждут неприятности. Я скажу твоей матери, что ты воруешь вещи.~ GOTO 8
  IF ~~ THEN REPLY ~Нельзя выходить наружу. Это опасно.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY ~Зачем же так врать? Ты же знаешь, что это неправда. Я скажу тебе, только не ври маме. Все равно это всего лишь слово. Оно открывает книжную полку. Слово это "хал-уу-ет". Не знаю я, что оно значит, но когда его говоришь, открывается полка. Странно, да? Теперь уходи, ты бука.~
  IF ~~ THEN DO ~SetGlobal("PankinSecret","GLOBAL",1)SetGlobal("Buka","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY ~Наверное, но маме все равно. Она говорит, люди могут заболеть дома, на работе, в церкви, так почему мне нельзя погулять?~
  IF ~~ THEN REPLY ~До свидания.~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY ~Ну ладно, пока, и все такое.~
  IF ~~ THEN DO ~SetGlobal("PankinSecret","GLOBAL",1)~ EXIT
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 11 // from:
  SAY ~Кто вы? А? Вы пришли забрать мой дом? Непохоже. Я вам задам! Меня боятся даже плохие люди внизу!~
  IF ~~ THEN REPLY ~А что внизу? В вашем доме что-нибудь есть?~ GOTO 1
  IF ~~ THEN REPLY ~Нельзя выходить наружу. Это опасно.~ GOTO 2
  IF ~~ THEN REPLY ~До свидания.~ GOTO 3
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",1)~ THEN BEGIN 12 // from:
  SAY ~Вы плохой. И подвал плохой.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY ~Мама говорит, люди могут заболеть дома, на работе, в церкви, так почему мне нельзя погулять?~
  IF ~~ THEN EXIT
END

