// Подземелье замка Невер Тюремщик, Судя по его строгой, непоколебимой позе, этот карлик очень серьезно относится к своим обязанностям стражника.

BEGIN ~NWJAILGR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN DO ~Unlock("Door01")OpenDoor("Door01")~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @5
  IF ~~ THEN DO ~Unlock("Door01")OpenDoor("Door01")~ EXIT
END

// ---------------------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 4 // from:
  SAY @6
  IF ~~ THEN EXIT
END

