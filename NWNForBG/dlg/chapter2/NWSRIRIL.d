// Алтарь - портал в мир духа в лесу Невервинтер

BEGIN ~NWSRIRIL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SriritPortal","GLOBAL",0)PartyHasItem("NWRITDA2")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @8
  IF ~~ DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
   IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  NumInParty(1)~ THEN REPLY @4 GOTO 4
  IF ~  !NumInParty(1)~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY @11
  IF ~~ THEN DO ~TakePartyItem("NWRITDA2")SetGlobal("SriritPortal","GLOBAL",1)ClearAllActions()StartCutSceneMode()StartCutScene("NWTOSRIT")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY @12
  IF ~~ THEN DO ~PlaySound("EFF_M89")DestroySelf()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("SriritPortal","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY @13
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SriritPortal","GLOBAL",0)!PartyHasItem("NWRITDA2")~ THEN BEGIN 0 // from:
  SAY @14
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END
