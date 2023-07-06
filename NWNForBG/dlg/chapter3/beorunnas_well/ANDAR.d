// Колодец Беорунна Улица Эндар Большое Сердце   Орнаменты на одеянии этого человека говорят о том, что он - вождь племени Черных Львов Утгардта.

BEGIN ~ANDAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Promise","LOCALS",0)Global("Broken","LOCALS",0)GlobalLT("RolgansTrial","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN REPLY @1 GOTO 2
  IF ~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)Global("Talked","LOCALS",0)~ THEN REPLY @5 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)Global("Talked","LOCALS",0)~ THEN REPLY @5 GOTO 9
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 11
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @9 GOTO 12
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN REPLY @2 GOTO 4
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN GOTO 13
  IF ~  OR(2)GlobalGT("RolganConvicted","GLOBAL",0)GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 15
  IF ~~ THEN REPLY @16 GOTO 16
END

IF ~~ THEN BEGIN 8 // from: 1.8
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 17
  IF ~~ THEN REPLY @19 GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 1.9
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 19
  IF ~~ THEN REPLY @19 GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 1.10
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1
  SAY @23
  IF ~~ THEN REPLY @24 DO ~SetGlobal("Promise","LOCALS",1)~ GOTO 20
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 1.2
  SAY @26
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 4.1
  SAY @27
  IF ~~ THEN REPLY @8 GOTO 11
  IF ~  Global("RolgansTrial","GLOBAL",1)~ THEN REPLY @9 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 21
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 4.2
  SAY @28
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @29
  IF ~~ THEN REPLY @16 GOTO 16
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN REPLY @30 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY @31
  IF ~~ THEN REPLY @15 GOTO 15
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~  Global("RolganConvicted","GLOBAL",0)Global("RolganAcquitted","GLOBAL",0)~ THEN REPLY @30 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY @32
  IF ~~ THEN DO ~GiveGoldForce(400)SetGlobal("Broken","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1
  SAY @32
  IF ~~ THEN DO ~GiveGoldForce(400)SetGlobal("Broken","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1
  SAY @34
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 11.2
  SAY @35
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

// --------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Broken","LOCALS",0)GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN BEGIN 22 // from:
  SAY @36
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

// --------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolganConvicted","GLOBAL",0)Global("Broken","LOCALS",0)~ THEN BEGIN 23 // from:
  SAY @37
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @38
  IF ~~ THEN EXIT
END

// --------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Promise","LOCALS",1)Global("Broken","LOCALS",0)Global("RolgansTrial","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @39
  IF ~  GlobalGT("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("ILCARD_Free","GLOBAL",0)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 10
END

// --------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Broken","LOCALS",1)~ THEN BEGIN 25 // from:
  SAY @40
  IF ~~ THEN EXIT
END

