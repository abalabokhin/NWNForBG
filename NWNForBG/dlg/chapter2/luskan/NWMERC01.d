// Лускан Магазин Торговец не сводит глаз со своих товаров, эту паранойю здесь, в Лускане, порождают инстинкты самосохранения.  9432

//   IF ~~ THEN REPLY ~Пойдет.~ DO ~StartStore("Innkeep1",LastTalkedToBy(Myself))~ EXIT

BEGIN ~NWMERC01~

IF ~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN DO ~StartStore("Nwmerc01",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY @19
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 1.3
  SAY @20
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

