// Чернозерье Поместье Мелданена Громмин   Что-то подсказывает вам, что этот полуорк довольно глуп. Наверное поэтому он ковыряет в носу своей секирой. Да-да, секирой.

// DisplayStringHead(Myself,000000) Эй! Эй, ты! Твоя надо... это... э-дин-ти-фе-сыро-вать. Да, дент-и-фи-цыфровать!

// DisplayStringHead(Myself,000000) Тьфу! Никто не слушать Громмин...

BEGIN ~GROMMIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Эй! Эй, ты! Твоя надо... это... э-дин-ти-фе-сыро-вать. Да, дент-и-фи-цыфровать! Ты кто есть?! Хозяин сказать, ему нельзя мешай!~
  IF ~~ THEN REPLY ~Кто, собственно, ваш хозяин?~ GOTO 1
  IF ~~ THEN REPLY ~Ты не особенно умен для стражника, верно?~ GOTO 2
  IF ~~ THEN REPLY ~А ты кто?~ GOTO 3
  IF ~~ THEN REPLY ~Я, разумеется, незваный гость.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Хозяина зовут Мелад... Малдо... Мелданен. Он колдун, страх, какой ужасный. Не любит посетителей, не-а, только друзей. Ты кто?~
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~Не стоит затевать драку. Меня бы здесь не было, если бы этого не хотел хозяин, правда?~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Э... Я дружу с хозяином. Хочу с ним повидаться.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Э... Я дружу с хозяином. Хочу с ним повидаться.~ GOTO 7
  IF ~~ THEN REPLY ~Ты не особенно умен для стражника, верно?~ GOTO 2
  IF ~~ THEN REPLY ~А ты кто?~ GOTO 3
  IF ~~ THEN REPLY ~Я, разумеется, незваный гость.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Хозяин говорит, он пустит стражника в дом, если стражник не любопытный. Громмин не любопытный. Громмин пускает только друзей хозяина. Ты кто?~
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~Не стоит затевать драку. Меня бы здесь не было, если бы этого не хотел хозяин, правда?~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Э... Я дружу с хозяином. Хочу с ним повидаться.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Э... Я дружу с хозяином. Хочу с ним повидаться.~ GOTO 7
  IF ~~ THEN REPLY ~Кто, собственно, ваш хозяин?~ GOTO 1
  IF ~~ THEN REPLY ~А ты кто?~ GOTO 3
  IF ~~ THEN REPLY ~Я, разумеется, незваный гость.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Мой Громмин. Громмин работает стражником хозяина, не пускает плохих людей. Пускает только друзей. Простая работа... не видел пока друзей хозяин. Ты кто?~
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~Не стоит затевать драку. Меня бы здесь не было, если бы этого не хотел хозяин, правда?~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~Э... Я дружу с хозяином. Хочу с ним повидаться.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~Э... Я дружу с хозяином. Хочу с ним повидаться.~ GOTO 7
  IF ~~ THEN REPLY ~Кто, собственно, ваш хозяин?~ GOTO 1
  IF ~~ THEN REPLY ~Ты не особенно умен для стражника, верно?~ GOTO 2
  IF ~~ THEN REPLY ~Я, разумеется, незваный гость.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Не-ет! Громмин остановить тебя, это точно!!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~Оооо... нет, Громмин думает нет. Ты как хозяин, много ума. Громмин откроет дверь, ты повидаешь его, хорошо?~
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~Ну, ладно. Громмин откроет тебе дверь. Иди, повидайся с ним.~
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY ~Откуда Громмин знать, что ты друг? На вид совсем не друг. Громмин никогда не видел друзей хозяин.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY ~Так откуда вы знаете, на кого я похож?~ ~Так откуда вы знаете, на кого я похожа?~ GOTO 5
  IF ~~ THEN REPLY ~У меня есть вопросы.~ GOTO 8
  IF ~~ THEN REPLY ~Просто забудь о моем приходе. Ты меня не видел, ясно?~ GOTO 9
  IF ~~ THEN REPLY ~Ты оказался слишком умен, и это повредит тебе. Пришло время умереть.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Громмин ничего не умеет, но Громмин пробует.~
  IF ~~ THEN REPLY ~Где я могу найти вашего хозяина?~ GOTO 10
  IF ~~ THEN REPLY ~Что находится за этой дверью?~ GOTO 11
  IF ~~ THEN REPLY ~Какие тут есть стражи?~ GOTO 12
  IF ~~ THEN REPLY ~Просто забудь о моем приходе. Ты меня не видел, ясно?~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY ~Ладно. Громмин может это сделать. Громмин любит простую работу.~
  IF ~~ THEN DO ~SetGlobal("OpenDoor","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~*Хозяин, наверное, внизу. Громмин там никогда не был, так что Громмин не знает. Хозяин не любит Громмина.~
  IF ~~ THEN REPLY ~Что находится за этой дверью?~ GOTO 11
  IF ~~ THEN REPLY ~Какие тут есть стражи?~ GOTO 12
  IF ~~ THEN REPLY ~Просто забудь о моем приходе. Ты меня не видел, ясно?~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~Оооо... Громмин не знай. Громмину нельзя туда ходить. Громмин знай, у хозяина есть заключенные... туда они попадают, обратно не выходят.~
  IF ~~ THEN REPLY ~Почему твой хозяин держит заключенных?~ GOTO 13
  IF ~~ THEN REPLY ~Где я могу найти вашего хозяина?~ GOTO 10
  IF ~~ THEN REPLY ~Какие тут есть стражи?~ GOTO 12
  IF ~~ THEN REPLY ~Просто забудь о моем приходе. Ты меня не видел, ясно?~ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY ~У хозяина много монстров. Иногда он их выпускает, они едят воров. Хозяин умеет говорить с ними, так думает Громмин. Некоторых даже видел Громмин. Они как маленькие люди, только у них крылья и они злые. Громмин их не любит.~
  IF ~~ THEN REPLY ~Где я могу найти вашего хозяина?~ GOTO 10
  IF ~~ THEN REPLY ~Что находится за этой дверью?~ GOTO 11
  IF ~~ THEN REPLY ~Просто забудь о моем приходе. Ты меня не видел, ясно?~ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY ~Иногда хозяин сердится на кого-нибудь, ведет его внутрь. Иногда хозяин ловит вора, ведет его внутрь. Громмин надеется, хозяин не будет сердиться на Громмина.~
  IF ~~ THEN REPLY ~Где я могу найти вашего хозяина?~ GOTO 10
  IF ~~ THEN REPLY ~Какие тут есть стражи?~ GOTO 12
  IF ~~ THEN REPLY ~Просто забудь о моем приходе. Ты меня не видел, ясно?~ GOTO 9
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY ~Ты опять здесь? Что тебе теперь нужно от Громмина?~
  IF ~~ THEN REPLY ~У меня есть к тебе несколько вопросов.~ GOTO 8
  IF ~  Dead("Meldanen")~ THEN REPLY ~Мне просто казалось, тебе следует знать, что твой хозяин мертв.~ GOTO 15
  IF ~~ THEN REPLY ~Забудь. Оставляю тебя с твоими... э... размышлениями.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY ~Ох. Была хорошая работа для Громмина. А теперь все плохо.~
  IF ~~ THEN DO ~AddexperienceParty(10000)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY ~Ладно. Громмин нравится стоять здесь, хорошая работа. Мама Громмина будет гордиться им.~
  IF ~~ THEN EXIT
END

