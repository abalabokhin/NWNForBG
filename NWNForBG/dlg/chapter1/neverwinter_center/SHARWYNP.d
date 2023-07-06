BEGIN ~SHARWYNP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("SharwynEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","Sharwyn",[1141.652])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","Sharwyn",[945.348])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("SharwynOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("SharwynEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("SharwynOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @13
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 30
  IF ~~ THEN REPLY @16 GOTO 31
  IF ~~ THEN REPLY @17 GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @18
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @19
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30 31
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 34
  IF ~~ THEN REPLY @23 GOTO 34
  IF ~~ THEN REPLY @17 GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.1 33.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 35
  IF ~~ THEN REPLY @26 GOTO 36
  IF ~~ THEN REPLY @27 GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 37
  IF ~~ THEN REPLY @26 GOTO 36
  IF ~~ THEN REPLY @17 GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("SharwynEscape","GLOBAL",0)SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY @31
  IF ~~ THEN REPLY @26 GOTO 36
  IF ~~ THEN REPLY @17 GOTO 32
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 39
  IF ~~ THEN REPLY @34 GOTO 35
  IF ~~ THEN REPLY @35 GOTO 40
  IF ~~ THEN REPLY @17 GOTO 32
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @36
  IF ~~ THEN REPLY @34 GOTO 35
  IF ~~ THEN REPLY @35 GOTO 40
  IF ~~ THEN REPLY @17 GOTO 32
END

IF ~~ THEN BEGIN 40 // from: 38.3
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 41
  IF ~~ THEN REPLY @39 GOTO 32
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @40
  IF ~~ THEN DO ~SetGlobal("SharwynEscape","GLOBAL",0)SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

