// Порт-Лласт Жена фермера 2 Заданий нет

BEGIN ~NWFARMW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY @12
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1.6.2
  SAY @13
  IF ~~ THEN DO ~GiveGoldForce(50)
SetGlobal("Fraud","LOCALS",1)
ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @14
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @21
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @5 EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 4
  IF ~~ THEN REPLY @26 EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @27
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 4
  IF ~~ THEN REPLY @26 EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY @28
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 4
  IF ~~ THEN REPLY @26 EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY @29
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @5 EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Fraud","LOCALS",1)~ THEN BEGIN 14 // from:
  SAY @30
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Fraud","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY @31
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @5 EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWImpossible","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWImpossible","GLOBAL",1)~ THEN BEGIN 17 // from:
  SAY @33
  IF ~~ THEN EXIT
END
