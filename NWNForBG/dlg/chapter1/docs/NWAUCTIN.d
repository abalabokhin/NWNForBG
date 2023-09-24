// Доки Таверна Сиди Аукционист  человек  Этот говорливый аукционер выглядит очень расстроенным тем, что сегодняшние торги явно не идут так, как задумывались.

BEGIN ~NWAUCTIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY @2 GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @5
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @6 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @6 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @6 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @6 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @6 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @6 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @6 GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @7 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @7 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @7 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @7 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @7 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @7 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @7 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @8 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @8 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @8 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY @9
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY @10
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY @2 GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @12
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @13 GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY @14 GOTO 23
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @15 GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @18
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY @14 GOTO 23
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @15 GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @19
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @13 GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @15 GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @20
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @13 GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY @14 GOTO 23
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY @21
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @13 GOTO 22
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY @22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY @14 GOTO 23
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 1.7
  SAY @12
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @15 GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 1.8
  SAY @23
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @24 GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY @25 GOTO 26
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @26 GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 1.9
  SAY @28
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY @25 GOTO 26
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @26 GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 1.10
  SAY @29
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @24 GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @26 GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 1.11
  SAY @30
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @24 GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY @25 GOTO 26
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 1.12
  SAY @31
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY @24 GOTO 25
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 1.13
  SAY @32
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY @25 GOTO 26
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 1.14
  SAY @33
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY @26 GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 19
  IF ~  HasItem("NWCLCKAC",Myself)!HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 20
  IF ~  !HasItem("NWCLCKAC",Myself)HasItem("NWBELTAC",Myself)~ THEN REPLY @17 GOTO 21
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 1.15
  SAY @34
  IF ~  NumItemsPartyGT("Nwmisc29",13)~ THEN REPLY @35 GOTO 28
  IF ~  NumItemsPartyGT("Nwmisc29",5)~ THEN REPLY @36 GOTO 29
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 1.16
  SAY @37
  IF ~  NumItemsPartyGT("Nwmisc29",13)~ THEN REPLY @35 GOTO 28
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 1.17
  SAY @38
  IF ~  NumItemsPartyGT("Nwmisc29",5)~ THEN REPLY @36 GOTO 29
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY @27 GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)!HasItem("NWSWORDC",Myself)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("NWAXEAUC",Myself)HasItem("NWSWORDC",Myself)!HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWAXEAUC",Myself)~ THEN REPLY @27 GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWSWORDC",Myself)~ THEN REPLY @27 GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("NWBLUNAC",Myself)~ THEN REPLY @27 GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY @16 GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)!HasItem("NWSHLDAC",Myself)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("NWPLATAC",Myself)HasItem("NWSHLDAC",Myself)!HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("NWPLATAC",Myself)~ THEN REPLY @16 GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("NWSHLDAC",Myself)~ THEN REPLY @16 GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("NWLEATAC",Myself)~ THEN REPLY @16 GOTO 18
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 5.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",15)DestroyItem("Nwmisc29")
GiveItem("NWAXEAUC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",10)DestroyItem("Nwmisc29")
GiveItem("NWSWORDC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",5)DestroyItem("Nwmisc29")
GiveItem("NWBLUNAC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",15)DestroyItem("Nwmisc29")
GiveItem("NWPLATAC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.2
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",9)DestroyItem("Nwmisc29")
GiveItem("NWSHLDAC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.3
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",5)DestroyItem("Nwmisc29")
GiveItem("NWLEATAC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.1
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)TakePartyItemNum("Nwmisc29",14)DestroyItem("Nwmisc29")GiveItem("NWCLCKAC",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.2
  SAY @39
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)TakePartyItemNum("Nwmisc29",6)DestroyItem("Nwmisc29")GiveItem("NWBELTAC",LastTalkedToBy)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY @40
  IF ~~ THEN REPLY @1 DO ~StartStore("NWAUCTIN",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY @2 GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
END

