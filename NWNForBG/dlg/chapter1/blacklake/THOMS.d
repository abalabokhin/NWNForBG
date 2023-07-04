// Чернозерье Поместье Рамботтома Томс Рамботтом   Этот аристократ, похоже, обладает весьма буйным нравом и привык всегда добиваться своего.

// DisplayStringHead(Myself,000000) Кто ты, мерзкое создание?! Говори! Или я позову стражников, чтобы они вышвырнули тебя!

BEGIN ~THOMS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~По какому праву ты врываешься в мой дом! Это Офала тебя надоумила?! Я требую ответа!~
  IF ~~ THEN REPLY ~Как вы узнали про Офалу?~ GOTO 1
  IF ~~ THEN REPLY ~Угомонись, жалкое создание, а не то пожалеешь!~ GOTO 2
  IF ~~ THEN REPLY ~Не волнуйтесь. Я ухожу.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Ах, а кто же еще мог вас на это подбить? Что ж, если ей нужен этот портрет, пусть присылает тех, кто в состоянии побороться за него!~
  IF ~~ THEN REPLY ~Угомонись, жалкое создание, а не то пожалеешь!~ GOTO 2
  IF ~~ THEN REPLY ~Не волнуйтесь. Я ухожу.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Э... Н-ну не надо, не нужно так разговаривать. Я не собирался угрожать вам... Я лишь хотел призвать вас к порядку... а? Да... Да, Офала знала, что делает... Мощного воина прислала... Берите, что хотите... Я уже не тот боец, что раньше...~
  IF ~~ THEN REPLY ~Не нужно было грубить, за это ты умрешь.~ GOTO 4
  IF ~~ THEN REPLY ~Правильно. Так и поступайте, и никто не пострадает.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
    SAY ~Волноваться? Чего мне бояться?! Ты просто трусливая пакость! Стража! Убейте этого червя!~
  IF ~~ THEN DO ~ChangeClass(Myself,FIGHTER)SetGlobal("ThomsAttack","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~Что? Только пес станет добивать побежденного! Стража! Помогите!~
  IF ~~ THEN DO ~SetGlobal("ThomsAttack","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~*Вздыхает* Не то, что в былые времена... Т-только не трогайте меня...~
  IF ~~ THEN EXIT
END

// -------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Берите, что хотите... Что может сделать вам старик... Проклятая Офала...~
  IF ~~ THEN EXIT
END

