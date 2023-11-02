BEGIN ~NWTOMIP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("NWTomiEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","NWTOMI",[1086.582])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","NWTOMI",[275.477])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("NWTomiOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("NWTomiEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("NWTomiOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @13
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("NWTomiReleased","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 34
  IF ~~ THEN REPLY @16 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 37
  IF ~~ THEN REPLY @20 GOTO 37
  IF ~~ THEN REPLY @17 GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY @21
  IF ~~ THEN REPLY @19 GOTO 37
  IF ~~ THEN REPLY @20 GOTO 37
  IF ~~ THEN REPLY @17 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 33.3
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 39
  IF ~~ THEN REPLY @25 GOTO 40
  IF ~~ THEN REPLY @26 GOTO 41
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY @27
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 42
  IF ~~ THEN REPLY @25 GOTO 40
  IF ~~ THEN REPLY @26 GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("NWTomiEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("NWTomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.3
  SAY @31
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY @32
  IF ~~ THEN REPLY @25 GOTO 40
  IF ~~ THEN REPLY @26 GOTO 41
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("NWTomiReleased","GLOBAL",1)~ THEN BEGIN 43 // from:
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 44
  IF ~~ THEN REPLY @35 GOTO 39
  IF ~~ THEN REPLY @36 GOTO 45
  IF ~~ THEN REPLY @17 GOTO 36
END

IF ~~ THEN BEGIN 44 // from: 33.1
  SAY @37
  IF ~~ THEN REPLY @35 GOTO 39
  IF ~~ THEN REPLY @36 GOTO 45
  IF ~~ THEN REPLY @17 GOTO 36
END

IF ~~ THEN BEGIN 45 // from: 33.3
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 46
  IF ~~ THEN REPLY @40 GOTO 36
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @41
  IF ~~ THEN DO ~SetGlobal("NWTomiEscape","GLOBAL",0)SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("NWTomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

