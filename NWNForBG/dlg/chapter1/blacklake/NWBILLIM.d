// Чернозерье Зоопарк Биллиам   Громогласный аристократ, которого радует сам факт того, что животных заключили в клетки для его развлечения.

// DysplayString

// Биллиам -  Вот прекрасное животное! Такого так просто не убьешь. Посмотри хорошенько, сынок!

// Биллиам -  Когда-нибудь я возьму тебя на охоту, сынок. Тебе понравится! Лицом к лицу с самыми ужасными зверями!

// Дочь - Я не хочу. Ему плохо.

// Жена - Дорогой, ты пугаешь детей.

// Сын - Можно я убью его, пап?

// Биллиам -  Вот что значит смелость, но ее лучше сохранить до прогулки на следующей неделе. Мы добудем несколько настоящих трофеев.

// Сын - Видели! Думает, что ты это еда! Давай! Протяни руку!

// Дочь - Замолчи! Хватит! Ему плохо... Я знаю... Чувствую...


// Пора идти. Этот Монтгомери не постесняется натравить на людей стражу. Этот человек знает, как защитить свой дом!

// Ааа, я не хочу уходить! Хочу посмотреть, как стражники убьют кого-то за то, что он здесь так поздно!

BEGIN ~NWBILLIM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 1
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @21
  IF ~~ THEN GOTO 7
END

