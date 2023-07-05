// Северная дорога, таверна Зеленый грифон, уровень 1 Дидд, эльф Этот высокомерный эльф нетерпеливо ждет, когда же что-нибудь начнется.

BEGIN ~DYDD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~Ммм? Добрый день, <SIRMAAM>. Судя по вашему виду, вы, как и я приехали сюда на состязание.~
  IF ~~ THEN REPLY ~А кто вы, собственно?~ GOTO 1
  IF ~~ THEN REPLY ~Какое состязание? О чем вы говорите?~ GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О да, конечно, я все знаю о состязании.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1) ~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О да, конечно, я все знаю о состязании.~ GOTO 4
  IF ~~ THEN REPLY ~Нет, я здесь не для состязания.~ GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~Я здесь, чтобы выиграть состязание.~ GOTO 6
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Дидд меня зовут. Мой потрясающий интеллект поможет мне выиграть состязание, <MALEFEMALE>... и тогда все обо мне узнают.~
  IF ~~ THEN REPLY ~Какое состязание? О чем вы говорите?~ GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О да, конечно, я все знаю о состязании.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О да, конечно, я все знаю о состязании.~ GOTO 4
  IF ~~ THEN REPLY ~Нет, я здесь не для состязания.~ GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~Я здесь, чтобы выиграть состязание.~ GOTO 6
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~О. Вы не знаете? Что ж, значит, мне не следует вам говорить. Мутамин хочет, чтобы это оставалось в тайне. Ой!~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О, об *этом* я все знаю. Мне просто нужна была подсказка.~ DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1) ~ GOTO 3
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О, об *этом* я все знаю. Мне просто нужна была подсказка.~ GOTO 4
  IF ~~ THEN REPLY ~Так это и есть тайна Мутамина? Я спрошу *его!*~ GOTO 9
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Вполне правдоподобно. Но когда до меня дошли слухи о тайном состязании Мутамина в подземелье и о большом вознаграждении, я сразу понял, что мой фантастический интеллект обеспечит мне победу.~
  IF ~~ THEN REPLY ~И вам уже приходилось побеждать?~ GOTO 10
  IF ~~ THEN REPLY ~Ха! Это был обман! Я ничего не знаю!~ GOTO 9
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Хм. Для меня не составляет труда распознать такой обман. Мой интеллект так высок, что меня никак невозможно обмануть с помощью такой простой уловки, <MALEFEMALE>.~
  IF ~~ THEN REPLY ~Может, 100 золотых помогут вам разговориться?~ GOTO 8
  IF ~~ THEN REPLY ~Так это и есть тайна Мутамина? Я спрошу *его!*~ GOTO 9
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~Понятно. Что ж, люди с ограниченным интеллектом должны посторониться и пропустить вперед более одаренных. (фыркает) Я собираюсь в самом ближайшем будущем получить награду.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY ~А. Что ж, ради вашего собственного блага я надеюсь, что ваш интеллект выше, чем кажется, <MALEFEMALE>. Это ведь *мозги* обеспечивают победу в этом состязании, понимаете.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY ~Как тебе угодно.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY ~Конечно нет. Я собираюсь принять участие в состязании и выиграть его, но не добиться ярости Мутамина. Приятно было побеседовать, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY ~Эй! У меня нет времени, я разрабатываю стратегию. Не надо отвлекать меня. Идите докучать кому-нибудь другому.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY ~Ну... Я подозреваю, что очень скоро это произойдет. Я *разрабатываю* блестящую стратегию, которая поможет мне пройти через все ловушки и препятствия. И с вами я  делиться *не буду*. Награда Мутамина для этого слишком высока. До встречи.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY ~Полагаю, мы с вами очень скоро увидимся, <MALEFEMALE>. А пока позвольте мне заняться разработкой стратегии.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KnowsAboutMatch","GLOBAL",1) GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY ~Состязаться со мной бесполезно, <MALEFEMALE>. Мой блестящий интеллект легко справится с вами.~
  IF ~~ THEN EXIT
END

