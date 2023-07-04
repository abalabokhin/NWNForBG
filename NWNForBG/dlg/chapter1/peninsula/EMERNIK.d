// Полуостров Камеры заключения  Эмерник   Эльф  Этого эльфа-стражника захватили заключенные, которых он когда-то охранял. Кажется, они его еще и избили. Впрочем, он еще может показать себя.

BEGIN ~EMERNIK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OpenState("DOOR1",TRUE)Global("Talked","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~Потяните за этот рычаг. Двери закроются, и мы будем в безопасности.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)OpenState("DOOR1",TRUE)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 1 // from:
  SAY ~Тсс! Быстрее в изолятор, пока нас патруль не засек!~
  IF ~~ THEN DO ~MoveToPointNoInterrupt([3513.352])~ EXIT
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OpenState("DOOR1",FALSE)Global("Talked","LOCALS",0)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY ~Вы же не с заключенными, правда?~
  IF ~~ THEN REPLY ~Нет, мне пришлось сразиться с ними, чтобы попасть сюда.~ GOTO 3
  IF ~~ THEN REPLY ~... Зачем вы спрашиваете?~ GOTO 4
  IF ~~ THEN REPLY ~Да, я заключенный... Отправляйся в одну из камер, не то пожалеешь.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~В таком случае, это счастье, что вы пришли. Они идут из камеры в камеру, убивают нас, стражников... Я думаю, кроме меня никого не осталось.~
  IF ~~ THEN REPLY ~Кто вы, в таком случае?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы ответить на несколько вопросов?~ GOTO 7
  IF ~~ THEN REPLY ~Ладно, тогда убирайтесь отсюда.~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~Вы недоверчивы - не похожи на охотника. Стало быть, за вами охотятся, точно так же, как и за мной. Думаю, кроме меня сторожей уже не осталось.~
  IF ~~ THEN REPLY ~Кто вы, в таком случае?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы ответить на несколько вопросов?~ GOTO 7
  IF ~~ THEN REPLY ~Ладно, тогда убирайтесь отсюда.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~Да-а? Что ж, теперь, когда вы загнаны в угол, я покончу с вами, как и с последним типом, который мне попался - без сожаления.~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~Просто стражник. Имя - Эмерник.~
  IF ~~ THEN REPLY ~Не могли бы вы ответить на несколько вопросов?~ GOTO 7
  IF ~~ THEN REPLY ~Ладно, тогда убирайтесь отсюда.~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY ~Почему бы и нет. Мы тут в безопасности.~
  IF ~~ THEN REPLY ~Что затевает главный надзиратель?~ GOTO 9
  IF ~~ THEN REPLY ~Что вы знаете об этом этаже тюрьмы?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужно, чтобы вы следовали за мной.~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо, подождите здесь.~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY ~Охранники этих камер были моими друзьями. Вы можете плевать на их память, незнакомец, но я хочу отомстить.~
  IF ~~ THEN REPLY ~Кто вы, в таком случае?~ GOTO 6
  IF ~~ THEN REPLY ~Не могли бы вы ответить на несколько вопросов?~ GOTO 7
  IF ~~ THEN REPLY ~Мне нужно, чтобы вы следовали за мной.~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо, подождите здесь.~ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~Главный надзиратель? Он пытал нескольких бывших стражников на нижнем уровне, а потом нам удалось убежать.~
  IF ~~ THEN REPLY ~Нижний уровень? А сколько их здесь всего?~ GOTO 13
  IF ~~ THEN REPLY ~Почему главный надзиратель пытал вас?~ GOTO 14
  IF ~~ THEN REPLY ~Кто ему помогал?~ GOTO 15
  IF ~~ THEN REPLY ~Ладно, хватит вопросов о главном надзирателе.~ GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY ~Это уровень охраны - промежуточная зона между обычными заключенными и злостными нарушителями, которых мы бросаем в казематы...~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 17
  IF ~~ THEN REPLY ~А двери заперты или нет?~ GOTO 18
  IF ~~ THEN REPLY ~Где отсиживаются бывшие заключенные?~ GOTO 19
  IF ~~ THEN REPLY ~Мне нужны припасы. Тут кладовые есть?~ GOTO 20
  IF ~~ THEN REPLY ~Это все, что мне нужно знать о тюрьме.~ GOTO 21
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY ~В вашем распоряжении.~
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)ChangeAIScript("EmFollow",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY ~Пойдет. Я прослежу за этим местом.~
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)ChangeAIScript("",OVERRIDE)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY ~Всего четыре. Две верхние относятся к тюрьме. Две нижние к казематам.~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 17
  IF ~~ THEN REPLY ~Почему главный надзиратель пытал вас?~ GOTO 14
  IF ~~ THEN REPLY ~Кто ему помогал?~ GOTO 15
  IF ~~ THEN REPLY ~Ладно, хватит вопросов о главном надзирателе.~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY ~Он все говорил, что зарежет нас, забирался к нам в головы. Некоторые из наших парней выходили оттуда чистыми зомби. Остальных... браковали.~
  IF ~~ THEN REPLY ~Что вы знаете об этом этаже тюрьмы?~ GOTO 10
  IF ~~ THEN REPLY ~Кто ему помогал?~ GOTO 15
  IF ~~ THEN REPLY ~Ладно, хватит вопросов о главном надзирателе.~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY ~Правая рука главного надзирателя - полуорк Курдан Фенкт, один из самых отвратительных заключенных в казематах.~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 17
  IF ~~ THEN REPLY ~Почему главный надзиратель пытал вас?~ GOTO 14
  IF ~~ THEN REPLY ~Что вы знаете об этом этаже тюрьмы?~ GOTO 10
  IF ~~ THEN REPLY ~Ладно, хватит вопросов о главном надзирателе.~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 9.4
  SAY ~Точно. Главный надзиратель - настоящее чудовище. Его нужно остановить.~
  IF ~~ THEN REPLY ~Что затевает главный надзиратель?~ GOTO 9
  IF ~~ THEN REPLY ~Что вы знаете об этом этаже тюрьмы?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужно, чтобы вы следовали за мной.~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо, подождите здесь.~ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY ~Это то, куда вы направляетесь. Там внизу нет камер, кроме тех, которые построили сами заключенные. Что они делают в казематах - это их проблемы...~
  IF ~~ THEN REPLY ~А двери заперты или нет?~ GOTO 18
  IF ~~ THEN REPLY ~Где отсиживаются бывшие заключенные?~ GOTO 19
  IF ~~ THEN REPLY ~Мне нужны припасы. Тут кладовые есть?~ GOTO 20
  IF ~~ THEN REPLY ~Это все, что мне нужно знать о тюрьме.~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY ~Двери камер заперты, но все остальные открыты. Если вы зайдете в изолятор и запретесь там, то будете в безопасности.~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 17
  IF ~~ THEN REPLY ~Где отсиживаются бывшие заключенные?~ GOTO 19
  IF ~~ THEN REPLY ~Мне нужны припасы. Тут кладовые есть?~ GOTO 20
  IF ~~ THEN REPLY ~Это все, что мне нужно знать о тюрьме.~ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 10.3
  SAY ~Они забаррикадировались в центральной сторожевой комнате. Высылают патрули, но совершенно бессистемно - я убил пару, но они ничего не замечают...~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 17
  IF ~~ THEN REPLY ~А двери заперты или нет?~ GOTO 18
  IF ~~ THEN REPLY ~Мне нужны припасы. Тут кладовые есть?~ GOTO 20
  IF ~~ THEN REPLY ~Это все, что мне нужно знать о тюрьме.~ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 10.4
  SAY ~Да-а, вы найдете их на севере и на юге.~
  IF ~~ THEN REPLY ~Казематы? Что это?~ GOTO 17
  IF ~~ THEN REPLY ~А двери заперты или нет?~ GOTO 18
  IF ~~ THEN REPLY ~Где отсиживаются бывшие заключенные?~ GOTO 19
  IF ~~ THEN REPLY ~Это все, что мне нужно знать о тюрьме.~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 10.5
  SAY ~Только будьте осторожны. Сейчас это место - смертельная ловушка.~
  IF ~~ THEN REPLY ~Что затевает главный надзиратель?~ GOTO 9
  IF ~~ THEN REPLY ~Что вы знаете об этом этаже тюрьмы?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужно, чтобы вы следовали за мной.~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо, подождите здесь.~ GOTO 12
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Talked","LOCALS",1)GlobalLT("SedosQuest","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY ~Думаете, мы выживем?~
  IF ~~ THEN REPLY ~Что затевает главный надзиратель?~ GOTO 9
  IF ~~ THEN REPLY ~Что вы знаете об этом этаже тюрьмы?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужно, чтобы вы следовали за мной.~ GOTO 11
  IF ~~ THEN REPLY ~Хорошо, подождите здесь.~ GOTO 12
END

// ---------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SedosQuest","GLOBAL",2)~ THEN BEGIN 23 // from:
  SAY ~Похоже, все начинает приходить в норму. Я собираюсь остаться здесь, чтобы поддерживать порядок. Спасибо за помощь.~
  IF ~~ THEN EXIT
END

