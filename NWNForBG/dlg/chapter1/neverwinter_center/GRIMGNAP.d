BEGIN ~GRIMGNAP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("LinaEscape","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Grimgnaw",[1019.532])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Grimgnaw",[492.290])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @8 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @8 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("GrimgnawOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY @9
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Grimgnaw",[1019.532])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Grimgnaw",[492.290])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @8 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @8 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("GrimgnawOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY @10
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("GrimgnawEscape","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("GrimgnawOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY @15
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 18
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @20
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @21
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 21
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.2
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 22
  IF ~~ THEN REPLY @28 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 24
  IF ~~ THEN REPLY @32 GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("GrimgnawReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22
  SAY @34
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @35
  IF ~~ THEN REPLY @28 GOTO 23
  IF ~~ THEN REPLY @29 GOTO 19
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",1)~ THEN BEGIN 26 // from:
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 27
  IF ~~ THEN REPLY @38 GOTO 22
  IF ~~ THEN REPLY @39 GOTO 28
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @40
  IF ~~ THEN REPLY @38 GOTO 22
  IF ~~ THEN REPLY @39 GOTO 28
  IF ~~ THEN REPLY @19 GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 26.3
  SAY @41
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 19
END

