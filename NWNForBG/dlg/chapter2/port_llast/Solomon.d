// Порт-Лласт Таверна Герб союза Соломон полурослик дает кольцо (член культа)   Исправить триггеры AreaCheck

BEGIN ~SOLOMON~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW2009")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @16 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @17
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @18
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 6
  IF ~~ THEN REPLY @21 GOTO 9
  IF ~~ THEN REPLY @22 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY @23
  IF ~~ THEN DO ~GiveItem("SolRing",Player1)SetGlobal("SolomonRing","GLOBAL",1)GivePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.3
  SAY @24
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW2009")~ THEN BEGIN 11 // from:
  SAY @25
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  AreaCheck("NW2300")GlobalLT("SolomonRing","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY @26
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @27 GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @30 GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY @30 GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @31 GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY @31 GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY @34
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @27 GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @30 GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY @30 GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @31 GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY @31 GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 12.4
  SAY @35
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @27 GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~    OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @30 GOTO 13
  IF ~    Global("SolomonRing","GLOBAL",0)~ THEN REPLY @30 GOTO 17
  IF ~  OR(2)Global("SolomonRing","GLOBAL",1)Global("SolomonRing","GLOBAL",2)~ THEN REPLY @31 GOTO 13
  IF ~  Global("SolomonRing","GLOBAL",0)~ THEN REPLY @31 GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY @36
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.6
  SAY @37
  IF ~~ THEN DO ~SetGlobal("SolomonRing","GLOBAL",3)EscapeArea()~ EXIT
END

// -------------------------------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SolomonRing","GLOBAL",3)AreaCheck("NW2400")~ THEN BEGIN 19 // from:
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CultHostile","MYAREA",1)Shout(HELP101)Shout(HELP79)Shout(HELP83)Shout(HELP_ME_GROUP151)Enemy()~ EXIT
END
