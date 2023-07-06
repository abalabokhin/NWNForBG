// Порт-Лласт Фермер1 Заданий нет

BEGIN ~FARMER1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN BEGIN 0 // from:
  SAY ~Что? О, так вы тот герой, о котором все говорят. Чего хотели?~
  IF ~~ THEN REPLY ~Могу ли я задать вам несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Вроде того. Ладно, мне некогда, я пойду.~ GOTO 2
  IF ~~ THEN REPLY ~Отойди, деревенщина. У меня дела.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Хорошо, у меня все равно полно работы.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Мы тут народ простой. Отправляйтесь еще куда-нибудь.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Какие еще вопросы?~
  IF ~~ THEN REPLY ~Что происходит за пределами города?~ GOTO 4
  IF ~~ THEN REPLY ~Мне нужны указания.~ GOTO 5
  IF ~~ THEN REPLY ~Я ищу определенных людей.~ GOTO 6
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~Ходят слухи, что в Лускане закрыли ворота, и теперь никто не может войти. Болтают, что и туда добралась Воющая Смерть, но я так не думаю.~
  IF ~~ THEN REPLY ~Почему ворота в Лускан закрыли?~ GOTO 7
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 8
  IF ~~ THEN REPLY ~Спасибо, это все.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~Я думаю, что у них есть секреты от вас, жителей Невервинтера, и они не любят, когда кто-то что-то вынюхивает. Запомните мои слова, лусканцам нельзя доверять ни вот настолько.~
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 8
  IF ~~ THEN REPLY ~Спасибо, это все.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.2 7.1
  SAY ~Какие еще вопросы?~
  IF ~~ THEN REPLY ~Мне нужны указания.~ GOTO 5
  IF ~~ THEN REPLY ~Я ищу определенных людей.~ GOTO 6
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~Что вы ищете?~
  IF ~~ THEN REPLY ~Где я могу найти таверну?~ GOTO 9
  IF ~~ THEN REPLY ~Есть тут место, в котором можно купить товары?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужен храм, чтобы подлечиться.~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY ~Вы найдете "Герб союза" точно к югу от городской площади. Иногда там бывает неспокойно, но девушки там работают хорошие.~
  IF ~~ THEN REPLY ~Есть тут место, в котором можно купить товары?~ GOTO 10
  IF ~~ THEN REPLY ~Мне нужен храм, чтобы подлечиться.~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY ~Единственный настоящий магазин здесь  - это "Треснувшая Наковальня" в центре города.~
  IF ~~ THEN REPLY ~Где я могу найти таверну?~ GOTO 9
  IF ~~ THEN REPLY ~Мне нужен храм, чтобы подлечиться.~ GOTO 11
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.3
  SAY ~Ньюрик управляет храмом, что в самом центре города. Он тирранец - хороший человек - иногда дает мне зелья, чтобы вылечить корову, если та заболеет.~
  IF ~~ THEN REPLY ~Где я могу найти таверну?~ GOTO 9
  IF ~~ THEN REPLY ~Есть тут место, в котором можно купить товары?~ GOTO 10
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~Кого вы ищете?~
  IF ~~ THEN REPLY ~В Порт-Лласте есть следопыт или друид, с которым можно поговорить?~ GOTO 12
  IF ~~ THEN REPLY ~Есть ли в городе интересные личности?~ GOTO 13
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Да, есть тут один, Баллард, он в роще за городской стеной проводит время, это на северо-востоке города. Он больше беспокоится о своих медведях, чем о моих коровах, точно вам говорю.?~
  IF ~~ THEN REPLY ~Есть ли в городе интересные личности?~ GOTO 13
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~Есть, Элхелор продает товары для охотников на оборотней, и мистер Кролнобер, они оба проводят время в таверне. Вам нужно пойти и поговорить с ними. А еще есть Эйзенфельдты, но... Но я не стану сплетничать, понятно?~
  IF ~~ THEN REPLY ~Что за Эйзенфельдты? Возможно я могу им чем-нибудь помочь...~ GOTO 14
  IF ~~ THEN REPLY ~В Порт-Лласте есть следопыт или друид, с которым можно поговорить?~ GOTO 12
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~Эйзенфельдты сами не свои, с тех пор, как потеряли своего мальчика, Урта, вот и все. Они больше не покидают свой дом. Я распахиваю их землю, когда могу - я не знаю, чем еще помочь...~
  IF ~~ THEN REPLY ~В Порт-Лласте есть следопыт или друид, с которым можно поговорить?~ GOTO 12
  IF ~~ THEN REPLY ~У меня есть еще вопросы.~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  CheckStatLT(LastTalkedToBy(Myself),9,CHR)~ THEN BEGIN 15 // from:
  SAY ~Убирайтесь - мне нужно работать, а не то жена с меня шкуру сдерет.~
  IF ~~ THEN REPLY ~Могу ли я задать вам несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
  IF ~~ THEN REPLY ~Отойди, деревенщина.~ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),8,CHR)~ THEN BEGIN 16 // from:
  SAY ~Здоров, дружок.~ ~Здорово, подружка.~
  IF ~~ THEN REPLY ~Могу ли я задать вам несколько вопросов?~ GOTO 1
  IF ~~ THEN REPLY ~Ладно, мне некогда, я пойду.~ GOTO 2
  IF ~~ THEN REPLY ~Отойди, деревенщина.~ GOTO 3
END
