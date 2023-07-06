// Холодный лес  Делвар Ванатар Delvar Vanatar  Этот эльфийский следопыт расслаблен, но внимателен. Судя по всему, он сейчас чувствует себя как рыба в воде.      строка -    Мне нужно поговорить с вами. 89933

BEGIN ~DELVAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~  Global("Robbed ","LOCALS",0)~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @23
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @29 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @30
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY @31
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @35
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @36
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 10.1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Robbed ","LOCALS",1)GiveGoldForce(300)ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 18
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY @40
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2
  SAY @41
  IF ~~ THEN REPLY @33 GOTO 17
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 4
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!IsGabber(Player1)~ THEN BEGIN 20 // from:
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 1
  IF ~~ THEN REPLY @44 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed ","LOCALS",0)~ THEN BEGIN 21 // from:
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 1
  IF ~~ THEN REPLY @47 GOTO 5
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~  Global("Robbed ","LOCALS",0)~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 4
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Robbed ","LOCALS",0)~ THEN BEGIN 22 // from:
  SAY @48
  IF ~~ THEN EXIT
END

