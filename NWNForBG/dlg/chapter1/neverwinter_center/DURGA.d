// Центр Невервинтера Сияющие Оружие и Броня для Рыцарей   Дурга  Полуорк   Это один из многочисленных торговцев Невервинтера. Чума не пощадила торговлю, но они все равно пытаются сохранить широкий ассортимент.

BEGIN ~DURGA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  True()~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~  Global("ToMarrok","GLOBAL",1)~ THEN GOTO 6
  IF ~  Global("ToMarrok","GLOBAL",0)OR(3)Class(LastTalkedToBy,FIGHTER_ALL)Class(LastTalkedToBy,RANGER_ALL)Class(LastTalkedToBy,PALADIN)~ THEN GOTO 7
  IF ~  Global("ToMarrok","GLOBAL",0)!Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)PartyHasItem("Arena4")~ THEN GOTO 8
  IF ~  Global("ToMarrok","GLOBAL",0)!Class(LastTalkedToBy,FIGHTER_ALL)!Class(LastTalkedToBy,RANGER_ALL)!Class(LastTalkedToBy,PALADIN)!PartyHasItem("Arena4")~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @13
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY @14
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY @15
 IF ~  CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY @16 GOTO 10
 IF ~  CheckStatLT(LastTalkedToBy,16,STR)~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("ToMarrok","GLOBAL",1)GiveItemCreate("Dupermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @18
  IF ~~ THEN REPLY @2 DO ~  StartStore("Durga",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @3 GOTO 2
END

