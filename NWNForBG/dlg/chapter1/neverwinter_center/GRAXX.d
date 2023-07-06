// Центр Невервинтера Ярмарка Мечей   Гракс  Дварф   Наемники обычно держатся довольно холодно и отстраненно, и этот гном - не исключение. Похоже, он участвовал во многих битвах по разным поводам.

BEGIN ~GRAXX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("MyPermit","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY @4 GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 5
  IF ~  !Class(Player1,FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~  PartyGoldGT(249)~ THEN REPLY @10 GOTO 9
  IF ~  PartyGoldLT(250)~ THEN REPLY @11 GOTO 2
  IF ~~ THEN REPLY @12 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @18
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY @4 GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 5
  IF ~  !Class(Player1,FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY @19
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY @4 GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 5
  IF ~  !Class(Player1,FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY @4 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @20
  IF ~~ THEN DO ~TakePartyGold(250)SetGlobal("MyPermit","LOCALS",1)GiveItemCreate("Grpermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @21
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY @21
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 6.4
  SAY @22
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MyPermit","LOCALS",1)~ THEN BEGIN 14 // from:
  SAY @23
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("MyPermit","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY @24
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

