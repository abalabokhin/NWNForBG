// Доки канализация Венгаул  Человек Это старый жилистый задира, разодетый в яркое платье. Он явно любитель лихо подкрутить ус во время дуэли с достойным противником.

BEGIN ~NWVENGAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWCALLIK")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @18
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @20
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @21
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)EscapeAreaDestroy(60)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY @22
  IF ~~ THEN DO ~EscapeAreaDestroy(60)~ EXIT
END

