// Восточная дорога, Руины рас созидателей уровень 2, Голем.

BEGIN ~GOLEM2~

IF ~  NumTimesTalkedTo(0)!PartyHasItem("CreatorS")~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @11
  IF ~~ THEN EXIT
END

IF ~  !Global("Door2Opened","MYAREA",1)OR(2)!NumTimesTalkedTo(0)PartyHasItem("CreatorS")~ THEN BEGIN 6 // from:
  SAY @12
  IF ~  PartyHasItem("CreatorS")~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @14
  IF ~~ THEN DO ~TakePartyItem("CreatorS")SetGlobal("Door2Opened","MYAREA",1)Unlock("Door2")OpenDoor("Door2")~ EXIT
END

IF ~  Global("Door2Opened","MYAREA",1)~ THEN BEGIN 8 // from:
  SAY @15
  IF ~~ THEN EXIT
END
