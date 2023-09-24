// Форт Илкард Руины Расы Созидателей - в прошлом Рабочий раб, Человек  По железному воротнику на шее этого человека можно с уверенностью сказать, что он - раб.

BEGIN ~NWLIZSL2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))Global("PlayerTalk","LOCALS",0)~ THEN BEGIN 2 // from:
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @9
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY @10
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @16
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @17
  IF ~  Global("PlayerTalk","LOCALS",0)~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @22
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @25
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY @26
  IF ~  Global("PlayerTalk","LOCALS",0)~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~  PartyHasItem("NWLOKARG")~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @31
  IF ~  Global("PlayerTalk","LOCALS",0)~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @32
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @33 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 16
  IF ~  PartyHasItem("NWLOKARG")~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @33 GOTO 18
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @33 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 15
  IF ~  PartyHasItem("NWLOKARG")~ THEN REPLY @30 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @35
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @36
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.2
  SAY @37
  IF ~  PartyHasItem("NWLOKARG")~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~~ THEN REPLY @40 GOTO 22
  IF ~~ THEN REPLY @41 GOTO 23
  IF ~~ THEN REPLY @42 GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.3
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.4
  SAY @43
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",1)SetGlobal("PlayerTalk","LOCALS",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Fire","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @47 GOTO 28
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Cold","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~~ THEN REPLY @46 GOTO 31
  IF ~~ THEN REPLY @47 GOTO 32
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",0)SetGlobal("Golem2_Afraid1_of_Crushing","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",0)SetGlobal("Golem2_Afraid1_of_Slashing","GLOBAL",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Crushing","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @51
  IF ~~ THEN REPLY @50 GOTO 34
  IF ~~ THEN REPLY @45 GOTO 35
  IF ~~ THEN REPLY @47 GOTO 36
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",1)~ EXIT
END

// -------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("NWTRANST",LastTalkedToBy(Myself))Global("Golem2_Afraid_of_Slashing","GLOBAL",1)~ THEN BEGIN 37 // from:
  SAY @52
  IF ~~ THEN REPLY @50 GOTO 38
  IF ~~ THEN REPLY @45 GOTO 39
  IF ~~ THEN REPLY @46 GOTO 40
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Fire","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Cold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.3
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Golem2_Afraid_of_Slashing","GLOBAL",0)SetGlobal("Golem2_Afraid_of_Crushing","GLOBAL",1)~ EXIT
END

