// Форт Илкард логово орков, Гузуд Орк Этот бандит-орк на вид очень крупный и агрессивный, как, впрочем, ему и положено. -  Голова Гузуда 1340 зол

BEGIN ~NWGUZUD~

IF ~  Global("Attack","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  !Dead("NWVAATH")~ THEN REPLY @6 GOTO 5
  IF ~  Dead("NWVAATH")~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1  С головой
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~  !Dead("NWVAATH")~ THEN REPLY @6 GOTO 9
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.2 С золотом
  SAY @12
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 12
  IF ~  !Dead("NWVAATH")~ THEN REPLY @6 GOTO 13
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @13
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @14
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @15
  IF ~~ THEN DO ~GiveItemCreate("NWGUZUD2",LastTalkedToBy,0,0,0)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 с головой и с золотом
  SAY @12
  IF ~~ THEN REPLY @10 GOTO 14
  IF ~  !Dead("NWVAATH")~ THEN REPLY @6 GOTO 15
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.3  С головой
  SAY @13
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 3.4
  SAY @16
  IF ~~ THEN DO ~Enemy()AttackOneRound(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @15
  IF ~~ THEN DO ~GivePartyGold("1340")EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2 С с головой и с золотом
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 14
  IF ~  !Dead("NWVAATH")~ THEN REPLY @6 GOTO 15
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 4.3 С золотом
  SAY @13
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  GlobalGT("RolkidQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 12
  IF ~~ THEN REPLY @11 GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @15
  IF ~~ THEN DO ~GiveItemCreate("NWGUZUD2",LastTalkedToBy,0,0,0)GivePartyGold("1340")EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 С с головой и с золотом
  SAY @13
  IF ~~ THEN REPLY @10 GOTO 14
  IF ~~ THEN REPLY @11 GOTO 10
END

