// Северная дорога, шахты Порт-Лласта Шалдрисса Доч мэра Эта молодая девушка выглядит несчастной и напуганной.

BEGIN ~NWSHALD2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  IsGabber(Player1)~ THEN REPLY @1 GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN DO ~SetGlobal("NWKendrackQuest","GLOBAL",4)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @14
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 5
  IF ~  Global("ShaldrissLiar","MYAREA",1)~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @18
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 5
END

// ----------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("NWKendrackQuest","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY @21
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 2
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWKendrackQuest","GLOBAL",3)AreaCheck("NW2020")~ THEN BEGIN 11 // from:
  SAY @22
  IF ~~ THEN DO ~EscapeArea()SetGlobal("NWShaldrissMove","GLOBAL",1)~ EXIT
END

// ----------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWKendrackQuest","GLOBAL",3)AreaCheck("NW2002")~ THEN BEGIN 12 // from:
  SAY @23
  IF ~~ THEN EXIT
END
