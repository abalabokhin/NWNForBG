// Доки дом Житель порта   Дварф Эта женщина принадлежит к бедной части среднего класса жителей Невервинтера. Она одета просто, но опрятно. Она выглядит очень подавленной всем, что происходит вокруг.
// дать в инвентарь 17 золотых

BEGIN ~NWCITIZ1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 27
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @21
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 13
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 18
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @30
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY @34
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)GivePartyGold(17)ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 10.2
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY @44
  IF ~~ THEN REPLY @33 GOTO 21
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY @45
  IF ~~ THEN REPLY @32 GOTO 20
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @46
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 24
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @49
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 25 // from:
  SAY @50
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 26 // from:
  SAY @51
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 7.1
  SAY @52
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 4
END

