// creator  : weidu (version 24600)
// argument : NWPICKP.DLG
// game     : .
// source   : ./DATA/TB#GEN12.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~NWPICKP~

IF ~  Global("RR#STLN","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("RR#STLN","LOCALS",0)
CheckStatGT(LastTrigger,11,INT)
~ THEN REPLY @1 GOTO 3
  IF ~  Global("RR#STLN","LOCALS",0)
CheckStatGT(LastTrigger,11,WIS)
~ THEN REPLY @2 GOTO 3
  IF ~  Global("RR#STLN","LOCALS",0)
CheckStatGT(LastTrigger,11,CHR)
~ THEN REPLY @3 GOTO 3
  IF ~  Global("RR#STLN","LOCALS",0)
CheckStatGT(LastTrigger,19,LORE)
~ THEN REPLY @4 GOTO 3
  IF ~  Global("RR#STLN","LOCALS",0)
ReputationGT(LastTrigger,13)
~ THEN REPLY @5 GOTO 3
  IF ~  Global("RR#STLN","LOCALS",0)
ReputationLT(LastTrigger,8)
~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~  Global("RR#STLN","LOCALS",1)
~ THEN BEGIN 1 // from:
  SAY @8
  IF ~  Global("RR#STLN","LOCALS",1)
CheckStatGT(LastTrigger,14,INT)
~ THEN REPLY @1 GOTO 5
  IF ~  Global("RR#STLN","LOCALS",1)
CheckStatGT(LastTrigger,14,WIS)
~ THEN REPLY @2 GOTO 5
  IF ~  Global("RR#STLN","LOCALS",1)
CheckStatGT(LastTrigger,14,CHR)
~ THEN REPLY @3 GOTO 5
  IF ~  Global("RR#STLN","LOCALS",1)
CheckStatGT(LastTrigger,34,LORE)
~ THEN REPLY @4 GOTO 5
  IF ~  Global("RR#STLN","LOCALS",1)
ReputationGT(LastTrigger,16)
~ THEN REPLY @5 GOTO 5
  IF ~  Global("RR#STLN","LOCALS",1)
ReputationLT(LastTrigger,6)
~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~  Global("RR#STLN","LOCALS",2)
~ THEN BEGIN 2 // from:
  SAY @9
  IF ~  Global("RR#STLN","LOCALS",2)
CheckStatGT(LastTrigger,17,INT)
~ THEN REPLY @1 GOTO 6
  IF ~  Global("RR#STLN","LOCALS",2)
CheckStatGT(LastTrigger,17,WIS)
~ THEN REPLY @2 GOTO 6
  IF ~  Global("RR#STLN","LOCALS",2)
CheckStatGT(LastTrigger,17,CHR)
~ THEN REPLY @3 GOTO 6
  IF ~  Global("RR#STLN","LOCALS",2)
CheckStatGT(LastTrigger,49,LORE)
~ THEN REPLY @4 GOTO 6
  IF ~  Global("RR#STLN","LOCALS",2)
ReputationGT(LastTrigger,19)
~ THEN REPLY @5 GOTO 6
  IF ~  Global("RR#STLN","LOCALS",2)
ReputationLT(LastTrigger,2)
~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.5 0.4 0.3 0.2 0.1 0.0
  SAY @10
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN DO ~IncrementGlobal("RR#STLN","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5 1.4 1.3 1.2 1.1 1.0
  SAY @12
  IF ~~ THEN DO ~IncrementGlobal("RR#STLN","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.5 2.4 2.3 2.2 2.1 2.0
  SAY @13
  IF ~~ THEN DO ~IncrementGlobal("RR#STLN","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 1.6 0.6
  SAY @14
  IF ~~ THEN DO ~ReputationInc(-2)
SetGlobal("RR#STLN","LOCALS",10)
SetDialogue("NWPPF0")
~ EXIT
END

IF ~  GlobalGT("RR#STLN","LOCALS",2)
GlobalLT("RR#STLN","LOCALS",10)
~ THEN BEGIN 8 // from:
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @16
  IF ~~ THEN DO ~ReputationInc(-2)
SetGlobal("RR#STLN","LOCALS",10)
SetDialogue("NWPPF0")
~ EXIT
END

IF ~  Global("RR#STLN","LOCALS",10)
~ THEN BEGIN 10 // from:
  SAY @17
  IF ~~ THEN DO ~ReputationInc(-2)
~ EXIT
END
