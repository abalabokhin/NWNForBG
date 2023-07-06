// Порт Двадцатка в Колчане Джерол   Этот торговец уверен в себе и спокоен, похоже, чума не отразилась на его торговле. Видимо, он работает с клиентами, которым просто некуда больше пойти.

BEGIN ~JEROL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 2

END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN DO ~StartStore("Jerol1",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~  Global("Coins","LOCALS",3)~ THEN GOTO 5
  IF ~  GlobalLT("Coins","LOCALS",3)~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @12 GOTO 3
  IF ~~ THEN REPLY @13 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.2
  SAY @14
  IF ~  Global("Coins","LOCALS",0)PartyGoldGT(1049)~ THEN REPLY @15 GOTO 7
  IF ~  GlobalLT("Coins","LOCALS",2)PartyGoldGT(699)~ THEN REPLY @16 GOTO 8
  IF ~  GlobalLT("Coins","LOCALS",3)PartyGoldGT(349)~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @7
  IF ~~ THEN DO ~SetGlobal("Coins","LOCALS",3)TakePartyGold("1050")DestroyGold(1050)GiveItemCreate("Nwmisc29",LastTalkedToBy,3,0,0)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY @7
  IF ~~ THEN DO ~IncrementGlobal("Coins","LOCALS",2)TakePartyGold("700")DestroyGold(700)GiveItemCreate("Nwmisc29",LastTalkedToBy,2,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.3
  SAY @7
  IF ~~ THEN DO ~IncrementGlobal("Coins","LOCALS",1)TakePartyGold("350")DestroyGold(350)GiveItemCreate("Nwmisc29",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.4
  SAY @20
  IF ~~ THEN EXIT
END

// ------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 11 // from:
  SAY @21
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 2
END

