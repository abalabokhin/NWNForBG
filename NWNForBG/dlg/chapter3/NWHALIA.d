// ‘орт-»лкард: дом Ёкел€  √али€  ƒварф Ёта женщина-карлик одета, как проста€ фермерша, но что-то подсказывает, что с ней шутки плохи.

BEGIN ~NWHALIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  PartyHasItem("NWECKLET")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @9 GOTO 7
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @9 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @11
  IF ~  PartyHasItem("NWECKLET")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~  PartyHasItem("NWECKLET")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @15
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("NWECKLET")DestroyItem("NWECKLET")GiveGoldForce(400)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @16
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("NWECKLET")DestroyItem("NWECKLET")GiveItemCreate("scrl07",LastTalkedToBy,1,1,0)GiveGoldForce(400)AddexperienceParty(10000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @17
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("NWECKLET")DestroyItem("NWECKLET")GiveGoldForce(400)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY @18
  IF ~~ THEN DO ~SetGlobal("EckelJob","GLOBAL",2)TakePartyItem("NWECKLET")DestroyItem("NWECKLET")GiveGoldForce(400)AddexperienceParty(10000)~ EXIT
END

// ----------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 10 // from:
  SAY @19
  IF ~  PartyHasItem("NWECKLET")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

