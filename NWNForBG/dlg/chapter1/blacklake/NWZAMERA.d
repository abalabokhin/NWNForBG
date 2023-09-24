// Чернозерье Зоопарк Леди Земерия   Усталая аристократка явно не рада, что находится в этом месте.

// DysplayString

// Биллиам -  Вот прекрасное животное! Такого так просто не убьешь. Посмотри хорошенько, сынок!

// Сын1 - Я не хочу. Ему плохо.

// Биллиам -  Когда-нибудь я возьму тебя на охоту, сынок. Тебе понравится! Лицом к лицу с самыми ужасными зверями!

// Земерия - Дорогой, ты пугаешь детей.

// Сын2 - Можно я убью его, пап?

// Биллиам -  Вот что значит смелость, но ее лучше сохранить до прогулки на следующей неделе. Мы добудем несколько настоящих трофеев.

// Сын2 - Видели! Думает, что ты это еда! Давай! Протяни руку!

// Сын1 - Замолчи! Хватит! Ему плохо... Я знаю... Чувствую...


// Пора идти. Этот Монтгомери не постесняется натравить на людей стражу. Этот человек знает, как защитить свой дом!

// Ааа, я не хочу уходить! Хочу посмотреть, как стражники убьют кого-то за то, что он здесь так поздно!

BEGIN ~NWZAMERA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @17
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END





