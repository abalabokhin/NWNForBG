// Порт-Лласт Кузница Треснувшая Наковальня Хальял Трондор торговец
BEGIN ~CHALJAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~ True()~ THEN BEGIN 0 // from:
  SAY ~Добро пожаловать в 'Треснувшую Наковальню'. Я - Хальял Трондор, а вы здесь, я полагаю, чтобы растрясти меня и разорить на скидках, а, чужестранец?~
  IF ~~ THEN REPLY ~Что я могу здесь приобрести?~ GOTO 1
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть вопросы об окружающей местности.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть все, что мне нужно. До встречи, Хальял.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ну, у нас широкий выбор товаров, учитывая, что мы - универсальная лавка в таком хорошем городе, как Порт-Лласт. Почему бы вам не посмотреть своими глазами?~
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~У меня есть вопросы об окружающей местности.~ GOTO 3
  IF ~~ THEN REPLY ~У меня есть все, что мне нужно. До встречи, Хальял.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Да не проблема, старина. Совсем не проблема. Вот, выбирайте.~
  IF ~~ THEN DO ~StartStore("Chaljal",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Ну, заходите еще, <SIRMAAM>. С вами всегда приятно иметь дело.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Иногда я слышу местные истории, иногда нет. Но когда слышу кое-что, обычно это про места вроде леса Невервинтер, Чарвуда, а иногда и Лускана.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 8
  IF ~~ THEN REPLY ~Не было ли вестей из Лускана?~ GOTO 9
  IF ~~ THEN REPLY ~Спасибо, в другой раз.~ GOTO 4
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~Ага, это место всегда было странным, но недавно тут проходили какие-то искатели приключений, так их рассказ был еще страннее. Похоже, народ в городе бродит сейчас навроде призраков, все переживают какой-то прошлый ужас. Вроде как, если им верить, все эти души теперь обрели покой, так или иначе.~
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 8
  IF ~~ THEN REPLY ~Не было ли вестей из Лускана?~ GOTO 9
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~Честно говоря, уже довольно давно из Чарвуда никаких вестей не приходило. В общем-то, это, наверно, к лучшему. Говорят, страшненькое место.~
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 8
  IF ~~ THEN REPLY ~Не было ли вестей из Лускана?~ GOTO 9
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY ~Тут группа искателей приключений останавливалась, чтобы пополнить запасы, и они рассказывали, что кто-то отравил, мол, Лесного Духа. Они не сказали, как была решена проблема, сказали только, что так или иначе с ней разобрались.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~~ THEN REPLY ~Не было ли вестей из Лускана?~ GOTO 9
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY ~Из тех лесов нет ни слуху ни духу, по крайней мере пока что, хотя я мало с кем общался из бывших там.~
  IF ~~ THEN REPLY ~Не знаете кого-нибудь, кто бы ходил туда в последнее время?~ GOTO 10
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~~ THEN REPLY ~Не было ли вестей из Лускана?~ GOTO 9
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~На самом деле, Баллард туда мотается то и дело. Может, тебе надо с ним поговорить. Он где-то в роще на северо-востоке Порт-Лласта ошивается. Тебе надо выйти за стены города, чтобы попасть в рощу.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~~ THEN REPLY ~Не было ли вестей из Лускана?~ GOTO 9
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.5
  SAY ~Ну, слышал я тут кое-что от друга-купца... ой, о чем это я? Не собираюсь я подставлять своего дружка - эта история была только для моих ушей.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~А не можете ли просто рассказать, в чем дело, без упоминания имен?~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~А не можете ли просто рассказать, в чем дело, без упоминания имен?~ GOTO 12
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 8
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY ~Ох. Ладно... так и быть. Тебе, наверно, можно рассказать. Ты ведь человек надежный, так? Ага. Говорят, там была большая свара меж Высшими Капитанами, и это сильно повредило торговым операциям. Храбрый герой вроде тебя, может, и найдет способ обернуть это положение к своей пользе, да и местные проблемы решить заодно.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 8
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY ~Прости, но не хочу я рисковать своим другом. Уж во всяком случае, не в таком положении.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не слыхал ли ты новостей из Чарвуда?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~Не было ли чего нового из леса Невервинтер?~ GOTO 8
  IF ~~ THEN REPLY ~Покажите мне, что я могу купить.~ GOTO 2
  IF ~~ THEN REPLY ~Спасибо, я пойду.~ GOTO 4
END
