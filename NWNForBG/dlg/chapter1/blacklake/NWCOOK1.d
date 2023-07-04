// Чернозерье: Поместье Ходжа Управляющий   Этот полурослик выглядит очень возбужденным, но сдерживается. Он явно не потерпит чужих у себя на кухне.

BEGIN ~NWCOOK1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY ~Гости Хозяина не приходят вот так! Ваша одежда выдает вас! Вы бандит?!~
  IF ~~ THEN REPLY ~Обо мне не беспокойся. Проваливай отсюда.~ GOTO 1
  IF ~~ THEN REPLY ~Закрой рот и сиди тихо, а не то я тебя убью!~ GOTO 2
  IF ~~ THEN REPLY ~Спокойно, я вас не трону.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~Приберегите ваши слова для других. От меня вы ничего не добьетесь. Если вы ищете Мастера Ходжа, его здесь нет. Похоже, подлец знал, что кто-то придет.~
  IF ~~ THEN REPLY ~Закрой рот и сиди тихо, а не то я тебя убью!~ GOTO 4
  IF ~~ THEN REPLY ~Спокойно, я вас не трону.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~Приберегите ваши слова для других. От меня вы ничего не добьетесь. Если вы ищете Мастера Ходжа, его здесь нет. Похоже, подлец знал, что кто-то придет.~
  IF ~~ THEN REPLY ~Проваливай отсюда.~ GOTO 4
  IF ~~ THEN REPLY ~Спокойно, я вас не трону.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~Приберегите ваши слова для других. От меня вы ничего не добьетесь. Если вы ищете Мастера Ходжа, его здесь нет. Похоже, подлец знал, что кто-то придет.~
  IF ~~ THEN REPLY ~Проваливай отсюда.~ GOTO 4
  IF ~~ THEN REPLY ~Закрой рот и сиди тихо, а не то я тебя убью!~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2 2.3
  SAY ~О, нет, я даже слушать ничего не хочу! Я предупреждал вас, но с меня хватит! СТРАЖА!~
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)CreateCreatureObject("Patrol07",Myself,0,0,0)CreateCreatureObject("Patrol07",Myself,0,0,0)CreateCreatureObject("Patrol06",Myself,0,0,0)CreateCreatureObject("Patrol06",Myself,0,0,0)~ EXIT
END

// ---------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 5 // from:
  SAY ~Грабитель в доме! Что за грязный пес подослал вас? Ммм? Бандит! Вор!~
  IF ~~ THEN REPLY ~Обо мне не беспокойся. Проваливай отсюда.~ GOTO 1
  IF ~~ THEN REPLY ~Закрой рот и сиди тихо, а не то я тебя убью!~ GOTO 2
  IF ~~ THEN REPLY ~Спокойно, я вас не трону.~ GOTO 3
END

// ---------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 5 // from:
  SAY ~Грабитель в доме! Что за грязный пес подослал вас? Ммм? Бандит! Вор!~
  IF ~~ THEN EXIT
END

