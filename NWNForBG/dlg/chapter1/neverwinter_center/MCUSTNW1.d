// Центр Невервинтера   Маска Лунного Камня  Завсегдатай Гном, мужчина  Этот человек выглядит вполне довольным, несмотря на суматоху снаружи. Похоже, Маска Лунного Камня и вправду место, где неприятности забываются.

BEGIN ~MCUSTNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)!Global("Robbed","LOCALS",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,INT)Global("Robbed","LOCALS",0)~ THEN REPLY @11 DO ~SetGlobal("Robbed","LOCALS",1)~ GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,INT)Global("Robbed","LOCALS",0)~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @14 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @14 GOTO 11
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @15 GOTO 12
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @17
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @19
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @20
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @24
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY @25
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY @15 GOTO 12
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,STR)~ THEN REPLY @16 GOTO 13
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.3
  SAY @26
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 4.4
  SAY @27
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY @28
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @29
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",2)GiveGoldForce(235)~ EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)!Global("Robbed","LOCALS",2)~ THEN BEGIN 16 // from:
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @2 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @33
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @35
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",2)~ THEN BEGIN 20 // from:
  SAY @36
  IF ~~ THEN EXIT
END

