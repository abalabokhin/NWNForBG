// Холодный Лес Подземелье волшебника Элементаль воды

// Кто зовет меня, и для какой цели я призван в этот план?

BEGIN ~NWWATER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNaxJob","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~  Global("NWNaxJob","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~  Global("NWNaxJob","GLOBAL",1)~ THEN REPLY @8 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNaxJob","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @15
  IF ~  Global("NWNaxJob","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @16
  IF ~~ THEN DO ~GiveItemCreate("WAND12",LastTalkedToBy,18,0,0)PlayDead(45)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @17
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWNaxJob","GLOBAL",1)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY @18
  IF ~~ THEN DO ~PlayDead(45)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY @19
  IF ~~ THEN DO ~SetGlobal("ToNax","MYAREA",1)~ EXIT
END

