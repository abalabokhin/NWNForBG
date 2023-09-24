// Колодец Беорунна\Улица Дальсия   Хотя эта молодая женщина и не носит традиционную племенную одежду Утгардта, сразу видно, что она долгое время прожила в пустошах и лесах на северной границе.

BEGIN ~NWDALCIA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  OR(2)Class(LastTalkedToBy(Myself),DRUID_ALL)Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN REPLY @1 GOTO 1
  IF ~  !Class(LastTalkedToBy(Myself),DRUID_ALL)!Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN REPLY @1 GOTO 2
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @11
  IF ~~ THEN GOTO 4
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY @12
  IF ~  OR(2)Class(LastTalkedToBy(Myself),DRUID_ALL)Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN REPLY @1 GOTO 8
  IF ~  !Class(LastTalkedToBy(Myself),DRUID_ALL)!Class(LastTalkedToBy(Myself),RANGER_ALL)~ THEN REPLY @1 GOTO 9
  IF ~~ THEN REPLY @13 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @4
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @5
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY @14
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY @15
  IF ~~ THEN EXIT
END

