// Северная дорога, таверна Зеленый грифон, уровень 1 Касма, Женщина гном Этот карлик смущенно улыбается практически всем, на кого смотрит

BEGIN ~KASMA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~О, привет. Тут такая суматоха, а?~
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~Вероятно, люди готовятся к состязанию.~ GOTO 1
  IF ~~ THEN REPLY ~Да, верно. Вы знаете, почему?~ GOTO 2
  IF ~~ THEN REPLY ~Разумеется, это так. А вы кто?~ GOTO 3
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~О да. Здесь ведь еще и зрители. Будет целая толпа. Все это так интересно! Дождаться не могу, когда же я войду в подземелье!~
  IF ~~ THEN REPLY ~А вас что - это все совсем не пугает?~ GOTO 5
  IF ~~ THEN REPLY ~Крошечный гном собирается принять участие? Да у вас нет ни единого шанса!~ GOTO 6
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Все приехали из-за идеи Мутамина... искатели приключений, вроде меня, будут пытаться пройти через подземелье под таверной. Говорят, там полно ловушек и монстров... и первый, кто дойдет до конца, получит награду. Ну, и славу тоже, конечно. Насколько я понимаю, все это держится в тайне. Местные аристократы съехались сюда, чтобы полюбоваться насилием. Из этого может получится превосходная история.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~Если вас это и вправду интересует. поговорите с Мутамином. Он, конечно, знает больше, чем я.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Меня зовут Касма. Я бард из Врат Балдура. Пришлось столько проехать, чтобы принять участие в состязании. Это ужасно интересно!~
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~А вас что - это все совсем не пугает?~ GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~Крошечный гном собирается принять участие? Да у вас нет ни единого шанса!~ GOTO 6
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~О каком состязании вы говорите?~ GOTO 2
  IF ~~ THEN REPLY ~Я пойду.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Ну, тогда ладно. Удачи вам!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Да нет, вообще-то. Решение принято. Я хочу уйти отсюда с потрясающей историей, буду рассказывать по деревням. И по-моему *это* стоит любых затрат!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~Что поделаешь. Все равно, удачи вам.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY ~Желаю вам удачи, дружище! Кто бы из нас не выиграл приз, надеюсь, с вами ничего не случится.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY ~Боже, это оказалось труднее, чем можно было подумать.~
  IF ~~ THEN EXIT
END

