// Порт-Лласт Дом Эйзенфельдта    Отец Урта 

BEGIN ~NWEISNM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("NWURTRIG")Global("UrtIsSaved","GLOBAL",0)!Dead("NWURT")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Dead("NWURT")Global("UrtGold","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)PartyHasItem("NWURTRIG")Global("UrtIsSaved","GLOBAL",1)!Dead("NWURT")Global("UrtGold","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @4 GOTO 4
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",1)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @7
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",1)GiveGoldForce(700)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY @10
  IF ~~ THEN DO ~SetGlobal("UrtGold","GLOBAL",2)GiveGoldForce(1000)ReputationInc(-1)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("UrtGold","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EXT01 // from: NWEISNF 0.1
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EXT02 // from: NWEISNF 1.1
  SAY @13
  IF ~~ THEN DO ~SetGlobal("Stairs","MYAREA",2)~ EXIT
END






