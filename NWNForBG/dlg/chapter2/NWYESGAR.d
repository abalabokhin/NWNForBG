// Северная дорога, шахты Порт-Лласта, Езгар полуорк Бандит похитивший дочь мэра Шалдриссу Этот полуорк ведет себя более цивилизованно и разумно, чем его родственники в этих землях. Он явно управляет ими.

BEGIN ~NWYESGAR~

IF ~  Global("Attack","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("ShaldrissLiar","MYAREA",1)~ GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @17
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5
  SAY @18
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWYESGAR","GLOBAL",1)GiveItem("NWEARBAD",LastTalkedToBy(Myself))GiveItem("NWYESGAK",LastTalkedToBy)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 3.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 9
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY @22
  IF ~~ THEN REPLY @7 GOTO 10
  IF ~~ THEN REPLY @8 GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @23
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),13,INT)CheckStatGT(LastTalkedToBy(Myself),13,WIS)~ THEN REPLY @24 GOTO 12
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,INT)CheckStatLT(LastTalkedToBy(Myself),14,WIS)~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @17
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @9
  IF ~~ THEN DO ~GiveItem("NWYESGAK",LastTalkedToBy)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY @27
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 10
  SAY @18
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADNWYESGAR","GLOBAL",1)GiveItem("NWYESGAK",LastTalkedToBy)GiveItem("NWEARBAD",LastTalkedToBy)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @28
  IF ~~ THEN REPLY @21 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 2
END
