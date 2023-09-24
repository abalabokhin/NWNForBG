// Лускан Таверна Тесак Официантка Эта служанка совсем забегалась, обслуживая большую толпу, которая собралась тут.

BEGIN ~NWWAITRU~

IF ~  Global("Drink","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~  Gender(LastTalkedToBy,MALE)~ THEN REPLY @12 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Drink","LOCALS",1)SetGlobalTimer("Player1Drink","LOCALS",24)~ EXIT
  IF ~~ THEN REPLY @15 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @17
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @18
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY @22
  IF ~~ THEN EXIT
END

// -----------------------------

IF ~  Global("Drink","LOCALS",1)GlobalTimerExpired("Player1Drink","LOCALS")~ THEN BEGIN 0 // from:
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Drink","LOCALS",0)TakePartyGold(5)~ EXIT
END

// -----------------------------

IF ~  Global("Drink","LOCALS",1)GlobalTimerNotExpired("Player1Drink","LOCALS")~ THEN BEGIN 0 // from:
  SAY @24
  IF ~~ THEN EXIT
END

