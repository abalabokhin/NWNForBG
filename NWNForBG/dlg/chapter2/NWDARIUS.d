// Восточная дорога, Пещеры троллей, Дариус - человек, пленник.  Этот напуганный человек выглядит слабым и изможденным. Его одежда порвана в клочья, а на теле заметны несколько ран.

BEGIN ~NWDARIUS~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @9
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @20
  IF ~~ THEN REPLY @18 GOTO 8
  IF ~~ THEN REPLY @19 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY @24
  IF ~~ THEN REPLY @22 GOTO 10
  IF ~~ THEN REPLY @23 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 12
  IF ~~ THEN REPLY @27 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.2
  SAY @28
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10
  SAY @29
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
