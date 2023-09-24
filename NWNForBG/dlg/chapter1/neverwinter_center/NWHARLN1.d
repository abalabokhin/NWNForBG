// Центр Невервинтера  Куртизанка - больна чумой. Эта едва одетая женщина бесстыдно встречает ваш взгляд. Она могла бы даже показаться симпатичной, если бы не очевидные следы развивающейся чумы.
BEGIN ~NWHARLN1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @11
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~  PartyGoldLT(10)~ THEN REPLY @16 GOTO 12
  IF ~  PartyGoldGT(1)~ THEN REPLY @17 DO ~TakePartyGold(1)SetGlobal("Alms","LOCALS",1)~ GOTO 13
  IF ~  PartyGoldGT(99)~ THEN REPLY @18 DO ~TakePartyGold(100)SetGlobal("Alms","LOCALS",1)ReputationInc(1)~ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 17
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 16
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY @31
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.1
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.5
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 22
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 6.1
  SAY @39
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 5.1
  SAY @40
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.3
  SAY @43
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 8.1
  SAY @44
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 8.2
  SAY @45
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 15.1
  SAY @46
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

// -----------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 23 // from:
  SAY @47
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

// -----------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 24 // from:
  SAY @48
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("Alms","LOCALS",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("Alms","LOCALS",1)~ THEN REPLY @4 GOTO 4
END

