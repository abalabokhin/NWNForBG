// Чернозерье Панкин   Эта девочка выглядит вполне счастливой. Похоже, ее оберегали от ужасов чумы.

BEGIN ~NWPUNKIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @9 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @2 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @12
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @13
  IF ~~ THEN DO ~SetGlobal("PankinSecret","GLOBAL",1)SetGlobal("Buka","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @14
  IF ~~ THEN REPLY @3 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY @7
  IF ~~ THEN DO ~SetGlobal("PankinSecret","GLOBAL",1)~ EXIT
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 11 // from:
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",1)~ THEN BEGIN 12 // from:
  SAY @16
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @17
  IF ~~ THEN EXIT
END

