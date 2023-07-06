// Доки Таверна Сиди Кристов  человек  Этот человек держится особняком, но в то же время внимательно осматривает комнату. За ним тщательно следит сидящий рядом полуорк.  положить в инвентарь Nwkey01 - ключ от подвала

BEGIN ~CRISTOV~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)Global("Talked","LOCALS",0)~ THEN BEGIN 2 // from:
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
  IF ~~ THEN REPLY @19 GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY @20
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)GiveItem("Nwkey01",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @21
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY @22
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY @23
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @24
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY @25
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 5.2
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @30
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @19 GOTO 13
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @31
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~  GlobalGT("Talked","LOCALS",0)~ THEN REPLY @9 GOTO 17
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)GlobalGT("Talked","LOCALS",0)~ THEN BEGIN 16 // from:
  SAY @32
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY @33
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @34
  IF ~~ THEN EXIT
END

