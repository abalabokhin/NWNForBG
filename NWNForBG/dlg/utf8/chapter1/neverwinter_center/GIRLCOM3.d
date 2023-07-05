// Центр Невервинтера  Дом   Девочка человек   Эта девочка выглядит вполне счастливой. Похоже, ее оберегали от ужасов чумы.

BEGIN ~GIRLCOM3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("NWNChapter","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~Привет. Что вам нужно? Теперь сюда мало кто приходит. Мама говорит, люди болеют.~
  IF ~~ THEN REPLY ~Не бойся. Я городской стражник на службе Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~С дороги. Я пойду, куда захочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Мама говорит, стражники хорошие, и мне надо их слушаться.~
  IF ~~ THEN REPLY ~Что ты знаешь о Невервинтере?~ GOTO 5
  IF ~~ THEN REPLY ~Что ты знаешь о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышала ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Хмм... Наверное, мне нельзя говорить с вами. Мама не разрешает мне разговаривать с незнакомыми.~
  IF ~~ THEN REPLY ~Не бойся. Я городской стражник на службе Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Я иду, куда хочу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Вы противны! Почему вы противны? О! Спорю, вас не должно здесь быть! Спорю, мамочка вас не впускала!~
  IF ~~ THEN REPLY ~Не бойся. Я городской стражник на службе Арибет.~ GOTO 1
  IF ~~ THEN REPLY ~Мне лишь нужно задать пару вопросов.~ GOTO 2
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Пока. Идите себе.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Он большой. Я должна не отходить от мамы, а то потеряюсь.~
  IF ~~ THEN REPLY ~Что в этом городе за районы?~ GOTO 9
  IF ~~ THEN REPLY ~Что ты знаешь о правителях Невервинтера?~ GOTO 10
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~От этого люди болеют, да? Некоторые мои друзья заболели и больше не приходят. Я скучаю по ним.~
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~Если подложить кому-нибудь в еду жука, тебя отшлепают. А если засунуть в нос бобы, они вырастут.~
  IF ~~ THEN REPLY ~Что ты знаешь о Невервинтере?~ GOTO 5
  IF ~~ THEN REPLY ~Что ты знаешь о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~Пока. Не болейте, ладно?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~Это мой дом... а иногда и школа, но не сейчас. И замок! Он большой! Мне нельзя идти одной. Вот и все.~
  IF ~~ THEN REPLY ~Что ты знаешь о правителях Невервинтера?~ GOTO 10
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3 3.4
  SAY ~Это мама и папа, глупышка. Иногда они слушают мистера Нашера, но он живет в замке. Он, наверное, хороший, я не знаю.~
  IF ~~ THEN REPLY ~Что в этом городе за районы?~ GOTO 9
  IF ~~ THEN REPLY ~Есть еще вопрос.~ GOTO 1
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

// --------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalGT("NWNChapter","GLOBAL",3)~ THEN BEGIN 13 // from:
  SAY ~Привет. Что вам нужно? Теперь сюда мало кто приходит. Мама говорит, лусканские солдаты нас всех убьют.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 11 // from:
  SAY ~Здравствуйте еще раз, <LADYLORD> стражник. Почему вы все еще здесь?~
  IF ~~ THEN REPLY ~Что ты знаешь о Невервинтере?~ GOTO 5
  IF ~~ THEN REPLY ~Что ты знаешь о чуме?~ GOTO 6
  IF ~~ THEN REPLY ~Не слышала ничего странного? Каких-нибудь сплетен?~ GOTO 7
  IF ~~ THEN REPLY ~До свидания.~ GOTO 8
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 12 // from:
  SAY ~Уходите! Мне страшно, я вас боюсь, хочу чтобы страшные люди ушли!~
  IF ~~ THEN EXIT
END

