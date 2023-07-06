// Хенна - человек-друид женщина стоит в лагере

BEGIN ~HENNA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 2
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @19
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 11
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @26
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY @27
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 14
  IF ~~ THEN REPLY @30 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY @31
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY @32
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @25 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY @33
  IF ~~ THEN REPLY @25 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY @34
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 16
  IF ~~ THEN REPLY @37 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @38
  IF ~~ THEN DO ~SetGlobal("HennaQuest","LOCALS",1)~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY @39
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 19
  IF ~~ THEN REPLY @42 GOTO 2
  IF ~~ THEN REPLY @43 GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @44
  IF ~~ THEN REPLY @42 GOTO 2
  IF ~~ THEN REPLY @43 GOTO 9
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @45
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AavillQuest","GLOBAL",0)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 21 // from:
  SAY @46
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)Global("HennaQuest","LOCALS",0)~ THEN BEGIN 22 // from:
  SAY @47
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)Global("HennaQuest","LOCALS",1)~ THEN BEGIN 23 // from:
  SAY @48
  IF ~~ THEN DO ~SetGlobal("HennaQuest","LOCALS",0)AddXPObject(Player1,7777)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 24 // from:
  SAY @49
  IF ~~ THEN EXIT
END
