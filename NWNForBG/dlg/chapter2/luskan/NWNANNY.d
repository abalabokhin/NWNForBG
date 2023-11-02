// Лускан Логово Барама  Мириам  - няня детей Лонды запутана в паутине 

BEGIN ~NWNANNY~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  GlobalGT("NWLondaQuest","GLOBAL",0)~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  GlobalGT("NWLondaQuest","GLOBAL",0)~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  GlobalGT("NWLondaQuest","GLOBAL",0)~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @15
  IF ~~ THEN DO ~SetGlobal("NWLondaQuest","GLOBAL",2)GiveItem("Nwmisc59",LastTalkedToBy)EscapeAreaObject("Trap2")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY @16
  IF ~~ THEN DO ~EscapeAreaObject("Trap2")~ EXIT
END

