BEGIN ~NWLINAP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("LinaEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","NWLINA",[603.220])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","NWLINA",[668.390])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("LinaOut","GLOBAL",1)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("LinaEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("LinaOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @12
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 39
  IF ~~ THEN REPLY @15 GOTO 40
  IF ~~ THEN REPLY @16 GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @17
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY @18
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 43
  IF ~~ THEN REPLY @22 GOTO 44
  IF ~~ THEN REPLY @16 GOTO 41
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 45
  IF ~~ THEN REPLY @25 GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY @26
  IF ~~ THEN DO ~SetGlobal("LinaEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("LinaReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 46
  IF ~~ THEN REPLY @29 GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 47
  IF ~~ THEN REPLY @32 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 48
  IF ~~ THEN REPLY @35 GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 49
  IF ~~ THEN REPLY @38 GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 51
  IF ~~ THEN REPLY @41 GOTO 52
  IF ~~ THEN REPLY @42 GOTO 41
END

IF ~~ THEN BEGIN 50 // from: 48.2
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 53
  IF ~~ THEN REPLY @46 GOTO 54
  IF ~~ THEN REPLY @41 GOTO 52
  IF ~~ THEN REPLY @42 GOTO 41
END

IF ~~ THEN BEGIN 52 // from: 49.2
  SAY @47
  IF ~~ THEN DO ~SetGlobal("LinaEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("LinaReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY @48
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 51.2
  SAY @49
  IF ~~ THEN REPLY @41 GOTO 52
  IF ~~ THEN REPLY @42 GOTO 41
END

IF ~~ THEN BEGIN 55 // from: 53.1
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 54
  IF ~~ THEN REPLY @52 GOTO 54
  IF ~~ THEN REPLY @16 GOTO 41
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("LinaReleased","GLOBAL",1)~ THEN BEGIN 59 // from:
  SAY @53
  IF ~~ THEN REPLY @45 GOTO 53
  IF ~~ THEN REPLY @46 GOTO 54
  IF ~~ THEN REPLY @41 GOTO 52
  IF ~~ THEN REPLY @42 GOTO 41
END

