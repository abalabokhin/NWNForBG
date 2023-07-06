// Доки Золотое яблоко Гильда  человек  в инвентаре монета контрабандистов   Гильда - немолодая, дружелюбная служанка, которая пытается обхаживать посетителей в "Золотом Яблоке", несмотря на суматоху в городе.

BEGIN ~GILDA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~  HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 12
  IF ~  !HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @22
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @24
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.1
  SAY @25
  IF ~~ THEN REPLY @26 GOTO 17
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @27
  IF ~~ THEN REPLY @20 GOTO 13
  IF ~  HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 12
  IF ~  !HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 7.2 11.2
  SAY @28
  IF ~~ THEN DO ~GiveItem("Nwmisc29",LastTalkedToBy)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.4
  SAY @29
  IF ~  HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 12
  IF ~  !HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 7.5
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 11
  IF ~  HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 12
  IF ~  !HasItem("Nwmisc29",Myself)~ THEN REPLY @19 GOTO 16
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY @32
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 7.3 11.3
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @34
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 18 // from:
  SAY @35
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 19 // from:
  SAY @36
  IF ~~ THEN EXIT
END

