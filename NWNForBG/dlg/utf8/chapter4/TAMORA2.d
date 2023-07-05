// Маска лунного камня  Тамора гном   Благодаря своей веселой манере ухаживать, этот симпатичный карлик значительно облегчил страдания раненых солдат.

BEGIN ~TAMORA2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~Раньше мне никогда не приходилось быть сиделкой, хотя мне часто говорили, что я прекрасно умею ухаживать с лежачими!~
  IF ~  GlobalGT("LuceJob","GLOBAL",1)~ THEN GOTO 1
  IF ~  GlobalLT("LuceJob","GLOBAL",2)~ THEN GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Наверное, не стоит шутить, когда вокруг нас столько боли и страданий, но Люс, например, удалось найти свою маленькую сестренку, и у меня такое ощущение, что скоро все может наладиться.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Наверное, не стоит шутить, когда вокруг нас столько боли и страданий. Особенно учитывая, что маленькую сестренку Люс до сих пор не нашли. Бедняжка.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 3 // from:
  SAY ~Когда я смотрю на раненых, невольно проклинаю этих лусканских собак за все, что они сделали.~
  IF ~  GlobalGT("LuceJob","GLOBAL",1)~ THEN GOTO 4
  IF ~  GlobalLT("LuceJob","GLOBAL",2)~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Слава богам, что Люс удалось найти свою младшую сестренку. Подумать страшно, что могло бы произойти, если бы эти лусканские отбросы обнаружили малышку.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~А бедняжке Люс хуже всего. У нее пропала младшая сестренка. Я каждый день молюсь, чтобы эти лусканские отбросы не нашли малышку.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Gender(LastTalkedToBy,MALE)~ THEN BEGIN 6 // from:
  SAY ~Ну ты и симпатяжка! Возвращайся сюда, когда все это закончится, и получишь ночь такого удовольствия, которое забыть удастся нескоро... и по очень разумной цене! Просто спроси Тамору.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~А сейчас мне нужно ухаживать за ранеными. Может быть, Офала сможет тебе помочь. Она владелица "Маски Лунного Камня".~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 8 // from:
  SAY ~Мне некогда сейчас разговаривать. Мне нужно сменить повязки всем этим солдатам. Если вам что-нибудь нужно, поговорите с Офалой. Она владелица "Маски Лунного Камня".~
  IF ~~ THEN EXIT
END

