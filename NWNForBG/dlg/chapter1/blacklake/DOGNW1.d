// Чернозерье Орреан   Этот вольнонаемный охранник-эльф холодно смотрит на вас. Похоже, он вполне способен постоять за себя, если возникнет необходимость.

BEGIN ~DOGNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NyatarQuest","GLOBAL",0)OR(3)Class(LastTalkedToBy(Myself),DRUID_ALL)Class(LastTalkedToBy(Myself),RANGER_ALL)HasItemEquiped("NyatAmul",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy(Myself),60)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @16
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @17
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY @18
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NyatarQuest","GLOBAL",0)!Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN BEGIN 10 // from:
  SAY @19
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NyatarQuest","GLOBAL",0)Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN BEGIN 11 // from:
  SAY @20
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NyatarQuest","GLOBAL",0)!Class(LastTalkedToBy(Myself),DRUID_ALL)!Class(LastTalkedToBy(Myself),RANGER_ALL)!HasItemEquiped("NyatAmul",LastTalkedToBy(Myself))~ THEN BEGIN 12 // from:
  SAY @19
  IF ~~ THEN EXIT
END

