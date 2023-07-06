// Центр Невервинтера   Мулланд   Администратор у ворот замка Невер   Этот эльф стоит перед воротами Замка Невер. Его официальный вид должен убеждать всех, что даже в эти опасные времена закон и порядок должны соблюдаться.

BEGIN ~MULLAND~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("WtDeepCreature","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~  OR(4)PartyHasItem("Crewtd1")PartyHasItem("Crewtd2")PartyHasItem("Crewtd3")PartyHasItem("Crewtd4")~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY @6
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("WtDeepCreature","GLOBAL",0)GlobalLT("WtDeepCreature","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @13
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("WtDeepCreature","GLOBAL",3)~ THEN BEGIN 7 // from:
  SAY @14
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("WtDeepCreature","GLOBAL",3)GlobalLT("NWNChapter","GLOBAL",2)~ THEN BEGIN 8 // from:
  SAY @15
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @22
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNChapter","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @23
  IF ~~ THEN EXIT
END