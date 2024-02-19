// Порт-Лласт таверна Герб союза Чернослов Костолом    Этот гном сидит у стола и чешет свою ногу между глотками эля.

BEGIN ~NWDARKTG~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("KnowDarktong","LOCALS",0)Global("NWGoToLuskan","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @18
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("KnowDarktong","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY @22
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 12
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 13
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~  RandomNum(2,1)~ THEN REPLY @30 GOTO 15
  IF ~  RandomNum(2,2)~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("KnowDarktong","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY @33
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY @34
  IF ~~ THEN DO ~GiveGoldForce(100)SetGlobal("KnowDarktong","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY @35
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 17 // from: 12.4
  SAY @36
  IF ~~ THEN DO ~SetGlobal("KnowDarktong","LOCALS",1)GiveGoldForce(100)ReputationInc(-1)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowDarktong","LOCALS",0)!Global("KnowDarktong","LOCALS",66)Global("NWGoToLuskan","GLOBAL",0)~ THEN BEGIN 18 // from:
  SAY @37
  IF ~  GlobalGT("KnowDarktong","LOCALS",1)~ THEN REPLY @38 GOTO 19
  IF ~~ THEN REPLY @39 GOTO 20
  IF ~  GlobalGT("NWEvidence","GLOBAL",0)Global("Luscan","LOCALS",0)~ THEN REPLY @40 GOTO 21
  IF ~  Global("Caves","LOCALS",0)Global("NWGanonJournal","GLOBAL",1)~ THEN REPLY @41 GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @42
  IF ~~ THEN DO ~SetGlobal("KnowDarktong","LOCALS",66)AddXPObject(Player1,10000)EscapeAreaObject("Door2000")~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY @44
  IF ~~ THEN DO ~IncrementGlobal("KnowDarktong","LOCALS",1)SetGlobal("Luscan","LOCALS",1)AddXPObject(Player1,-5000)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.4
  SAY @45
  IF ~~ THEN DO ~IncrementGlobal("KnowDarktong","LOCALS",1)SetGlobal("Caves","LOCALS",1)AddXPObject(Player1,-5000)~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWGoToLuskan","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @46
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy)~ EXIT
END
