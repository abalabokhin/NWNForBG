//  Астральный карман  Хэдралин   Человекоящер  NWHAEDRI

BEGIN ~NWHAEDR3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @7
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("NW_Final_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @18
  IF ~  Alignment(Player1,MASK_EVIL)~ THEN GOTO 11
  IF ~  Alignment(Player1,MASK_GOOD)~ THEN GOTO 12
  IF ~  Alignment(Player1,MASK_GENEUTRAL)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY @19
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @20
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @21
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY @22
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @23
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY @24
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @25
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @28
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY @29
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY @30
  IF ~~ THEN DO ~SetGlobal("NW_Final_Quest","GLOBAL",1)~ EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 21 // from:
  SAY @31
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~  Alignment(Player1,MASK_EVIL)~ THEN REPLY @32 GOTO 11
  IF ~  Alignment(Player1,MASK_GOOD)~ THEN REPLY @32 GOTO 12
  IF ~  Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @32 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 2
END

