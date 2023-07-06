// Южная дорога - тролль Лерк охраняет дорогу к замку Вэйнива

BEGIN ~LERK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   !Global("BridgeIsOpen","MYAREA",1)!Global("Permission","LOCALS",1)PartyHasItem("WanevstH")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("BridgeIsOpen","MYAREA",1)SetGlobal("Permission","LOCALS",1)MoveToPointNoInterrupt([3388.2144])Face(10)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
   IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @8
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
   IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !PartyHasItem("WanevstH")Global("BridgeIsOpen","MYAREA",0)~ THEN BEGIN 6 // from:
  SAY @11
   IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
   IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.3
  SAY @9
   IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @15
   IF ~~ THEN REPLY @16 GOTO 4
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,INT)~ THEN REPLY @17 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY @19
  IF ~~ THEN DO ~SetGlobal("BridgeIsOpen","MYAREA",1)SetGlobal("Permission","LOCALS",1)MoveToPointNoInterrupt([3388.2144])Face(10)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY @20
   IF ~~ THEN REPLY @16 GOTO 4
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4
  SAY @21
   IF ~~ THEN REPLY @16 GOTO 4
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,INT)~ THEN REPLY @17 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,INT)~ THEN REPLY @17 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @12 EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)OR(2)Global("BridgeIsOpen","MYAREA",1)Global("Permission","LOCALS",1)~ THEN BEGIN 13 // from:
  SAY @22
   IF ~~ THEN REPLY @3 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @12 EXIT
END
