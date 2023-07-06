// Северная дорога, таверна Зеленый грифон, уровень 2 Замитра, Владеет камнем. Эта женщина осматривает таверну, и нагло заглядывает в глаза мужчинам, которые смотрят в ее сторону.

BEGIN ~ZAMITRA2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)IsGabber(Player1)!Global("Attack","LOCALS",3)~ THEN BEGIN 0 // from:
  SAY ~Теперь мы одни, так что не теряйся. Просто выполняй мои приказы и утром будешь счастливым мужчиной!~ [ZAMIT065]
  IF ~~ THEN REPLY ~Я думаю, нет. Я здесь, чтобы забрать у тебя драгоценный камень. Дай его сюда.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Что! Это был просто трюк, чтобы я осталась без охраны! Поверить не могу, что я нахожусь во власти мужчины!~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1
  SAY ~Воры и грабители! Как вы смеете отнимать мои вещи!~ [ZAMIT062]
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",1)Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",2)~ THEN BEGIN 3 // from:
  SAY ~Довольно! Я сдаюсь!~ [ZAMIT067]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~Мне стыдно признавать это, но я побеждена.~ [ZAMIT068]
  IF ~  RandomNum(2,1)~ THEN REPLY ~Мне нужен магический драгоценный камень, который сейчас у вас.~ GOTO 5
  IF ~  RandomNum(2,2)~ THEN REPLY ~Мне нужен магический драгоценный камень, который сейчас у вас.~ GOTO 6
  IF ~~ THEN REPLY ~Твое поражение меня не устраивает. Мне нужна твоя жизнь!~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY ~Драгоценный камень? У меня нет никаких камней! О чем вы говорите?~
  IF ~~ THEN REPLY ~Я знаю, что у вас есть драгоценный камень. У меня был крайне надежный источник.~ GOTO 8
  IF ~~ THEN REPLY ~Вы можете идти. Я найду то, что ищу, в вашей комнате.~ GOTO 9
  IF ~~ THEN REPLY ~Тогда почему вас так тщательно охраняли, и что лежит в этом кованом сундуке?~ GOTO 10
  IF ~~ THEN REPLY ~Хватит! Умри!~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY ~Вы забираете драгоценность!? Позор! Я побеждена и обманута каким-то жалким искателем приключений! Как я теперь посмотрю в глаза моим женщинам? Позор слишком велик! Забирайте камень! Он в этом сундуке!~
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",3)SetGlobal("ZamitraGem","MYAREA",1)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY ~Я умру с мечом в руке!~
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",4)Enemy()Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY ~Ваш источник лгал! Я простая женщина, и у меня нет никаких сокровищ, не говоря уж о драгоценных камнях.~
  IF ~~ THEN REPLY ~Хватит лгать. Просто скажите мне, где драгоценный камень.~ GOTO 10
  IF ~~ THEN REPLY ~Без драгоценного камня вы для меня бесполезны. Мне придется убить вас!~ GOTO 11
  IF ~~ THEN REPLY ~Тогда почему вас так тщательно охраняли, и что лежит в этом кованом сундуке?~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY ~Вы забираете драгоценность!? Позор! Я побеждена и обманута каким-то жалким искателем приключений! Как я теперь посмотрю в глаза моим женщинам? Позор слишком велик!~
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY ~Отлично! Забирайте камень! Он в этом сундуке! Позор! Я побеждена и обманута каким-то жалким искателем приключений! Как я теперь посмотрю в глаза моим женщинам? Позор слишком велик!~
  IF ~~ THEN DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY ~Не убивайте меня!! Просто заберите драгоценный камень! Он вон в том сундуке! Пожалуйста, отпустите меня! Все равно позор поражения  разрушит мою репутацию в глазах моих девочек! Со мной покончено!~
  IF ~~ THEN REPLY ~Вы можете идти.~ DO ~SetGlobal("ZamitraGem","MYAREA",1)SetGlobal("Attack","LOCALS",3)ForceSpellRES("ZAMITRA",Myself)~ EXIT
  IF ~~ THEN REPLY ~Хватит! Умри!~ GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Attack","LOCALS",3)~ THEN BEGIN 12 // from:
  SAY ~Я выезжаю и завязываю с этим делом.~ [ZAMIT052]
  IF ~~ THEN DO ~SetGlobal("Attack","LOCALS",4)EscapeArea()~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 13 // from:
  SAY ~Я не в настроении сейчас разговаривать. Может, позже.~ [ZAMIT050]
  IF ~~ THEN EXIT
END
