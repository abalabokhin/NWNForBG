BEGIN ~NWDAELAP~

IF WEIGHT #0 /* Triggers after states #: 35 even though they appear after this state */
~HappinessLT(Myself,-299)~ THEN BEGIN 5 // from:
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// -----------------------------------

IF WEIGHT #1 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",0)Global("NWDaelanEscape","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("NWNChapter","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW1012","NWDAELAN",[806.360])~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @6 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("NW2020","NWDAELAN",[439.313])~ EXIT
  IF ~  !Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
  IF ~  Global("NWNChapter","GLOBAL",2)~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",1)SetGlobal("NWDaelanOut","GLOBAL",1)~ EXIT
END

// -----------------------------------

IF WEIGHT #2 /* Triggers after states #: 35 even though they appear after this state */
~Global("KickedOut","LOCALS",1)Global("NWDaelanEscape","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 3
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @11
  IF ~~ THEN DO ~SetGlobal("NWDaelanOut","GLOBAL",0)SetGlobal("KickedOut","LOCALS",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @12
  IF ~~ THEN EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("NWDaelanReleased","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 23
  IF ~~ THEN REPLY @15 GOTO 24
  IF ~~ THEN REPLY @16 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @17
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @18
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 27
  IF ~~ THEN REPLY @16 GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 28
  IF ~~ THEN REPLY @25 GOTO 29
  IF ~~ THEN REPLY @26 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 31
  IF ~~ THEN REPLY @29 GOTO 31
  IF ~~ THEN REPLY @16 GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY @30
  IF ~~ THEN DO ~SetGlobal("NWDaelanReleased","GLOBAL",2)SetGlobal("NWDaelanEscape","GLOBAL",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY @31
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @32
  IF ~~ THEN REPLY @25 GOTO 29
  IF ~~ THEN REPLY @26 GOTO 30
END

// --------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("NWDaelanReleased","GLOBAL",1)~ THEN BEGIN 32 // from:
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 33
  IF ~~ THEN REPLY @35 GOTO 28
  IF ~~ THEN REPLY @36 GOTO 34
  IF ~~ THEN REPLY @16 GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @37
  IF ~~ THEN REPLY @35 GOTO 28
  IF ~~ THEN REPLY @36 GOTO 34
  IF ~~ THEN REPLY @16 GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.3
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 35
  IF ~~ THEN REPLY @16 GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @40
  IF ~~ THEN DO ~SetGlobal("NWDaelanReleased","GLOBAL",2)SetGlobal("NWDaelanEscape","GLOBAL",0)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY @41
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END



