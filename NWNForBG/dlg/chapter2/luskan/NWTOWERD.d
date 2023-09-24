// Лускан Страж моста Башни Хозяина   В поведении этого стражника угадываются паранойя и мрачная решимость.

BEGIN ~NWTOWERD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("TowerDoorOpened","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  PartyHasItem("NWPERMIO")~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @18
  IF ~~ THEN DO ~SetGlobal("TowerDoorOpened","MYAREA",1)Unlock("Door18")OpenDoor("Door18")~ EXIT
END

// ----------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TowerDoorOpened","MYAREA",0)IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY @19
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("TowerDoorOpened","MYAREA",0)!IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY @20
  IF ~~ THEN EXIT
END

