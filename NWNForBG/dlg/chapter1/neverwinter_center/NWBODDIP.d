BEGIN ~NWBODDIP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("BoddinokEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 200
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","NWBODDIK",[806.360])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","NWBODDIK",[484.525])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("BoddinokOut","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 0.2
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("BoddinokEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 3
  IF ~~ THEN REPLY @11 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @12
  IF ~~ THEN DO ~SetGlobal("BoddinokOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @13
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("BoddinokReleased","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 24
  IF ~~ THEN REPLY @16 GOTO 25
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @18
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY @19
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 25.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 28
  IF ~~ THEN REPLY @23 GOTO 28
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 29
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 30
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 31
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @30
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 33
  IF ~~ THEN REPLY @33 GOTO 34
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @35
  IF ~~ THEN REPLY @33 GOTO 34
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY @36
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @37
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @38 GOTO 26
END

IF ~~ THEN BEGIN 36 // from: 32.3
  SAY @39
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("BoddinokEscape","GLOBAL",0)SetGlobal("BoddinokReleased","GLOBAL",2)JoinParty()~ EXIT
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("BoddinokReleased","GLOBAL",1)~ THEN BEGIN 37 // from:
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 38
  IF ~~ THEN REPLY @25 GOTO 29
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @17 GOTO 26
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @42
  IF ~~ THEN REPLY @25 GOTO 29
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @17 GOTO 26
END

