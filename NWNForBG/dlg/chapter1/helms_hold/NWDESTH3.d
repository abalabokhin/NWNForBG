// Крепость Хельма   Дестер  Дестер в совершенной ярости. Он отчаянно пытается завершить свой ритуал. Его планы рассыпаются как карточный домик, и это его совсем не радует.

// Я... я побежден. Нет смысла продолжать этот бой. Я... я все равно нужен тебе живым. [NWDES160]

// Вы пришли. Тогда сражайтесь, и мы посмотрим, кто теперь управляет судьбой! Я ЖДУ ВАС!! [NWDES145]

// Моя судьба в моих руках! А не в руках Маугрима! И не в ваших! И не в руках Древних! [NWDES146]

BEGIN ~NWDESTH3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Pause","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1  // from: NWFENTH2 
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // 0.1
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // 0.2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
END

IF ~~ THEN BEGIN 4 // 0.3
  SAY @11
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // 2.1
  SAY @12
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 6 // 2.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
END

IF ~~ THEN BEGIN 7 // 2.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @20 GOTO 13
END

IF ~~ THEN BEGIN 8 // 2.4
  SAY @21
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10

END

IF ~~ THEN BEGIN 9 // 2.5
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // 2.6
  SAY @23
  IF ~~ THEN DO ~SetGlobal("NWNChapter","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // 2.7
  SAY @24
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 12 // 2.8
  SAY @25
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 13 // 7.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 3
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 14 // from:
  SAY @28
  IF ~~ THEN REPLY @27 GOTO 3
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

