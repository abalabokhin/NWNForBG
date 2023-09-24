// Центр Невервинтера  Мано - Стражник у входа в гнездо нищих. Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~NWMANO~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PeninsulaDone","GLOBAL",0)Global("BeggarsNestDone","GLOBAL",0)Global("NWNDocksDone","GLOBAL",0)Global("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @6
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @8
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @17
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~  GlobalGT("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~  Global("WtDeepCreature","GLOBAL",0)~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BeggarsNestDone","GLOBAL",0)
OR(3)
GlobalGT("PeninsulaDone","GLOBAL",0)
GlobalGT("NWNDocksDone","GLOBAL",0)
GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @18
  IF ~~ THEN GOTO 1
END

// ------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 12 // from:
  SAY @19
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)!IsGabber(Player1)~ THEN BEGIN 13 // from:
  SAY @20
  IF ~~ THEN EXIT
END

