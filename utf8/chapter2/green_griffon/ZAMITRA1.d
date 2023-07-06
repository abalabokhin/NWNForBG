// Северная дорога, таверна Зеленый грифон, уровень 1 Замитра, Владеет камнем. Эта женщина осматривает таверну, и нагло заглядывает в глаза мужчинам, которые смотрят в ее сторону.

BEGIN ~ZAMITRA1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PickPocket","LOCALS",1)~ THEN BEGIN 10 // from:
  SAY ~Держи свои руки при себе, <MALEFEMALE>...~ [ZAMIT061]
  IF ~~ THEN DO ~SetGlobal("PickPocket","LOCALS",0)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PickPocket","LOCALS",2)~ THEN BEGIN 11 // from:
  SAY ~Воры и грабители! Как вы смеете отнимать мои вещи!~ [ZAMIT062]
  IF ~~ THEN DO ~SetGlobal("PickPocket","LOCALS",3)SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialog","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY ~Прошлой ночью кто-то спер у меня оникс.~ [ZAMIT051]
  IF ~~ THEN EXTERN ~MUTAMIN2~ 19 // Я заверяю вас, мадам, у нас очень приличное заведение. [MUTAM050]
END

IF ~~ THEN BEGIN 1 // from: MUTAMIN2 50
  SAY ~Я выезжаю и завязываю с этим делом.~ [ZAMIT052]
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(Player1,MALE)IsGabber(Player1)GlobalGT("AelaithQuest","GLOBAL",0)Global("Pause","MYAREA",0)~ THEN BEGIN 2 // from:
  SAY ~Привет, лапочка... Тяжелый день?~ [ZAMIT059]
  IF ~~ THEN REPLY ~Ага, я только и делаю, что убиваю орков.~ GOTO 3
  IF ~~ THEN REPLY ~Ты что, пытаешься меня снять? Ужас какой!~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Как насчет тяжелой ночи?~
  IF ~~ THEN REPLY ~Ты имеешь в виду - с тобой?~ GOTO 6
  IF ~~ THEN REPLY ~Послушай, боюсь, что ты не в моем вкусе.~ GOTO 4
  IF ~~ THEN REPLY ~Возможно, мы поговорим попозже.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~Вы слышали это? Этот мужчина способен только болтать... Встань и врежь ему, женщина! Встань и врежь!~
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY ~Знаешь, что, детка? Твоя правда. Зачем тратить мое время?~
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("Pause","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~Если хочешь...~
  IF ~~ THEN REPLY ~Это было бы чудесно... В твоей комнате или в моей?~ GOTO 7
  IF ~~ THEN REPLY ~Послушай, боюсь, что ты не в моем вкусе.~ GOTO 4
  IF ~~ THEN REPLY ~Возможно, мы поговорим попозже.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~Тогда поднимайся в мою комнату и потрать там на меня немножко своей изобретательности. Я оставлю дверь незапертой.~
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("SexWithZamitra","GLOBAL",1)EscapeAreaObject("Stairs")~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)Gender(Player1,FEMALE)!IsGabber(Player1)Global("AelaithQuest","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~Я не в настроении сейчас разговаривать. Может, позже.~ [ZAMIT050]
  IF ~  Gender(Player1,MALE)~ THEN EXIT
  IF ~  Gender(Player1,FEMALE)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN REPLY ~Нет сейчас. Мне нужен твой драгоценный камень.~ GOTO 9
  IF ~  Gender(Player1,FEMALE)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN REPLY ~Хорошо. Я ухожу.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY ~Вы слышали это? Какая наглость! Ты поплатишься за это!~
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AelaithQuest","GLOBAL",0)IsGabber(Player1)Global("Pause","MYAREA",1)~ THEN BEGIN 12 // from:
  SAY ~Тяжелый день?~ [ZAMIT052]
  IF ~~ THEN REPLY ~Ага, я только и делаю, что убиваю орков.~ GOTO 3
  IF ~~ THEN REPLY ~Ты что, пытаешься меня снять? Ужас какой!~ GOTO 4
END
