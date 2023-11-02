// Восточная дорога, Руины рас созидателей уровень 1, Голем.

BEGIN ~NWGOLEM7~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
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
  IF ~  PartyHasItem("NWCREATR")~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY @10
  IF ~  PartyHasItem("NWCREATR")~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY @12
  IF ~  PartyHasItem("NWCREATR")~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 6
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY @14
  IF ~~ THEN EXIT
END

IF ~  !Global("Door1Opened","MYAREA",1)!NumTimesTalkedTo(0)~ THEN BEGIN 7 // from:
  SAY @15
  IF ~  PartyHasItem("NWCREATR")~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @16
  IF ~~ THEN DO ~TakePartyItem("NWCREATR")SetGlobal("Door1Opened","MYAREA",1)Unlock("DoorX1")OpenDoor("DoorX1")~ EXIT
END

IF ~  Global("Door1Opened","MYAREA",1)~ THEN BEGIN 9 // from:
  SAY @17
  IF ~~ THEN EXIT
END
