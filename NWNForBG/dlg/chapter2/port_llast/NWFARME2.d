// Порт-Лласт Фермер2 Заданий нет

BEGIN ~NWFARME2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  Global("FarmerGaveMoney","LOCALS",0)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @15
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY @16
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  Global("FarmerGaveMoney","LOCALS",0)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @21
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  Global("FarmerGaveMoney","LOCALS",0)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @22
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  Global("FarmerGaveMoney","LOCALS",0)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @23
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  Global("FarmerGaveMoney","LOCALS",0)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @24
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~  Global("FarmerGaveMoney","LOCALS",0)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,INT)~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY @29
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("FarmerGaveMoney","LOCALS",1)GiveGoldForce(110)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY @31
  IF ~~ THEN DO ~SetGlobal("FarmerGaveMoney","LOCALS",1)GiveGoldForce(110)ReputationInc(-1)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN EXIT
END
