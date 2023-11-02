// Джаэр - полуэльф-друид женщина стоит в лагере распорядитель поединков

BEGIN ~NWJAER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWSpiritSaved","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~  Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWSpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~  Global("NWSpiritSaved","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~  Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWSpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.4
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY @21
  IF ~  Global("NWSpiritSaved","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~  Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWSpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.4
  SAY @23
  IF ~  Global("NWSpiritSaved","GLOBAL",1)~ THEN REPLY @5 GOTO 4
  IF ~  Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 5
  IF ~  Global("NWSpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY @24
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWAavillQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY @25
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWAavillQuest","GLOBAL",0)Global("NWSpiritSaved","GLOBAL",0)!Dead("NWSPIRIO")~ THEN BEGIN 14 // from:
  SAY @26
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWSpiritSaved","GLOBAL",1)~ THEN BEGIN 15 // from:
  SAY @27
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("NWSPIRIO")~ THEN BEGIN 16 // from:
  SAY @28
  IF ~~ THEN EXIT
END
