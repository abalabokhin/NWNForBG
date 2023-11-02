// Форт Илкард Руины Расы Созидателей - в прошлом Локар, Человек  По железному воротнику на шее этого человека можно с уверенностью сказать, что он - раб.

BEGIN ~NWLOKAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))Global("NWLokarTalk","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.4
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @18
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~  Global("NWLokarTalk","GLOBAL",0)~ THEN REPLY @23 GOTO 14
  IF ~  Global("NWLokarTalk","GLOBAL",1)~ THEN REPLY @23 GOTO 15
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY @24
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @25
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @26
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~  Global("NWLokarTalk","GLOBAL",0)~ THEN REPLY @23 GOTO 14
  IF ~  Global("NWLokarTalk","GLOBAL",1)~ THEN REPLY @23 GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY @27
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~  Global("NWLokarTalk","GLOBAL",0)~ THEN REPLY @23 GOTO 14
  IF ~  Global("NWLokarTalk","GLOBAL",1)~ THEN REPLY @23 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 8.3
  SAY @27
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~  Global("NWLokarTalk","GLOBAL",0)~ THEN REPLY @23 GOTO 14
  IF ~  Global("NWLokarTalk","GLOBAL",1)~ THEN REPLY @23 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.4
  SAY @28
  IF ~~ THEN DO ~SetGlobal("NWLokarTalk","GLOBAL",1)GiveItem("NWLOKARG",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY @15
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))GlobalGT("NWLokarTalk","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @29
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 5
END

