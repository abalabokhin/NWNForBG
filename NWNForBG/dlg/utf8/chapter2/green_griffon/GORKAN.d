// Северная дорога, таверна Зеленый грифон, уровень 1 Горкан, Дварф Этот гном осматривает всех в комнате так, будто измеряет их, а затем презрительно отбрасывает.

BEGIN ~GORKAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~Ну, че? Ты че, тоже из-за этого проклятого подземелья, да?~
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~Что... подземелье?~ GOTO 1
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~Да-а, это про меня: я здесь из-за подземелья.~ GOTO 1
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~Да-а, это про меня: я здесь из-за подземелья.~ GOTO 2
  IF ~~ THEN REPLY ~Нет, я просто мимо прохожу.~ GOTO 3
  IF ~  Global("KnowsAboutMatch","GLOBAL",1)~ THEN REPLY ~Да, конечно. Думаю, это будет забавное испытание.~ GOTO 4
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~И что ты знаешь? Ничего ты не знаешь. Тьфу. Заплатишь две сотни, я тебе расскажу что к чему, если тебе интересно.~
  IF ~  PartyGoldGT(199)~ THEN REPLY ~Ну хорошо, вот. 200 золотых.~ GOTO 6
  IF ~  PartyGoldGT(99)~ THEN REPLY ~Я дам вам 100.~ GOTO 7
  IF ~~ THEN REPLY ~Вы мне *скажете*. СЕЙЧАС ЖЕ!~ GOTO 8
  IF ~~ THEN REPLY ~Забудь об этом.~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~Прямо даже интересно, где этот Мутамин свое состязание рекламирует. Все местные богачи съедутся смотреть, как мы рискуем своей задницей и по подземелью ползаем. Мы с тобой оба знаем, что нужен хороший вор, чтобы все эти ловушки разглядеть. И это *я*. Так что ты можешь прямиком домой идти.~
  IF ~~ THEN REPLY ~Можешь не беспокоиться. Я сделаю это.~ GOTO 10
  IF ~~ THEN REPLY ~О, я вас умоляю. Таких как вы я обычно ем на завтрак.~ GOTO 10
  IF ~~ THEN REPLY ~Похоже, состязание будет просто жуткое!~ GOTO 11
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~Прям так? Ты уж извиняй, только не верю ни на грош. Мошеннику не стоит забывать, что такое осторожность, когда можно сорвать большой куш, знаешь ли.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~Хм. 'Забавное испытание,' ну и задница. Да ты знаешь, сколько важных шишек заплатят Мутамину, чтобы посмотреть, как мы помираем, а? Что ж... посмотрим, стало быть, кто получит куш у Мутамина, а кого выпотрошат на радость нескольким поганым аристократишкам, мм?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY ~Да, даа, да-а. Только не слишком перепивай, не то я с тебя потом сапоги-то стяну. Ха!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~Что ж, видишь хозяина? Это Мутамин. Бывший искатель приключений, и скажу тебе, ему везло. Денег у него теперь куры не клюют, люди говорят. И он устроил состязание. Под этим местом есть подземелье, а в подземелье полным-полно всяких тварей и ловушек. Кто через подземелье пройдет, получит награду.~
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("KnowsAboutMatch","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~Это все, ясное дело, незаконно, но местные шишки прямо мечтают на это дело посмотреть. Все знают, что награду получит вор, а это *я*. Так что ты можешь бежать домой, <GIRLBOY>.~
  IF ~~ THEN REPLY ~Можешь не беспокоиться. Я сделаю это.~ GOTO 10
  IF ~~ THEN REPLY ~О, я вас умоляю. Таких как вы я обычно ем на завтрак.~ GOTO 10
  IF ~~ THEN REPLY ~Похоже, состязание будет просто жуткое!~ GOTO 11
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~Думаю, тебе надо прочистить свои длинные уши, недотепа <RACE>. Сказано тебе, 200 золотых, никакие не 100. Хочешь ты все узнать, или нет?~
  IF ~  PartyGoldGT(199)~ THEN REPLY ~Ну хорошо, вот. 200 золотых.~ GOTO 6
  IF ~~ THEN REPLY ~Вы мне *скажете*. СЕЙЧАС ЖЕ!~ GOTO 8
  IF ~~ THEN REPLY ~Забудь об этом.~ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~Что? Если я не расскажу тебе про это подземелье? Да ты не посмеешь меня тронуть: ни здесь, ни там внизу. Иди в задницу.~
  IF ~~ THEN DO ~SetGlobal("Fail","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~Это уж как хочешь, <GIRLBOY>. А лучше беги-ка домой к мамочке, у нее, небось, титьки болят, деточку кормить пора.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY ~Что ж... посмотрим, стало быть, кто получит куш у Мутамина, а кого выпотрошат на радость нескольким поганым аристократишкам, мм?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY ~Ха-ха! Мда, *вот это* задор, мне нравится, вот так и надо! Ха-ха! С таким настроем, тебе награды в жисть не видать, <GIRLBOY>.~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("KnowsAboutMatch","GLOBAL",0)Global("Fail","LOCALS",0)~ THEN BEGIN 13 // from:
  SAY ~Опять ты? Хочешь узнать про подземелья, да?~
  IF ~~ THEN REPLY ~Что... подземелье?~ GOTO 1
  IF ~~ THEN REPLY ~Я и так все знаю.~ GOTO 1
  IF ~~ THEN REPLY ~Нет, я просто мимо прохожу.~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 5
END

// -----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("KnowsAboutMatch","GLOBAL",0)Global("Fail","LOCALS",1)~ THEN BEGIN 13 // from:
  SAY ~Отвянь. У меня своих проблем хватает.~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OR(2)Global("KnowsAboutMatch","GLOBAL",1)Global("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 14 // from:
  SAY ~Ба! Да ты мне в подметки не годишься, <GIRLBOY>! И лучше не попадайся мне на пути в подземелье, не то будет с тобой то же, что и со всеми остальными тварями, которых я встречу! Дошло?~
  IF ~~ THEN EXIT
END

// -----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 15 // from:
  SAY ~Ха! Сказано ж тебе было, не ходи ты в это проклятое подземелье! А теперь придется мне тебя прикончить. Ну да ладно!~
  IF ~~ THEN DO ~Enemy()Attack(Player1)~ EXIT
END
