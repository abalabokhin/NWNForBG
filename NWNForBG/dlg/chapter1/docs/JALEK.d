// Доки Таверна Сиди Джалек  Полуорк  Веселый полуорк в форме Кровавого Моряка. Он внимательно присматривает за человеком рядом с ним... и героически потребляет эль в жутких объемах.
BEGIN ~JALEK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)RandomNum(2,1)!HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CON)~ THEN REPLY @5 GOTO 4
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CON)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CON)~ THEN REPLY @10 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CON)~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @11
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(Myself),PlayDead(30))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @12
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CON)~ THEN REPLY @13 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CON)~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @14
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy(Myself),PlayDead(30))~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY @15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CON)~ THEN REPLY @16 GOTO 9
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CON)~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY @17
  IF ~  CheckStatGT(LastTalkedToBy(Myself),16,CON)~ THEN REPLY @18 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),17,CON)~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @6 GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),17,CON)~ THEN REPLY @20 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,CON)~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @6 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @21
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.3
  SAY @22
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(24000)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @23
  IF ~  CheckStatGT(LastTalkedToBy(Myself),18,CON)~ THEN REPLY @24 GOTO 15
  IF ~  CheckStatLT(LastTalkedToBy(Myself),19,CON)~ THEN REPLY @24 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(24000)ActionOverride(LastTalkedToBy(Myself),PlayDead(12))~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @27
  IF ~  CheckStatGT(LastTalkedToBy(Myself),19,CON)~ THEN REPLY @28 GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),20,CON)~ THEN REPLY @28 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @29
  IF ~  CheckStatGT(LastTalkedToBy(Myself),20,CON)~ THEN REPLY @30 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),21,CON)~ THEN REPLY @30 GOTO 35
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @32
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(36000)PlayDead(12)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.2
  SAY @33
  IF ~~ THEN DO ~SetGlobal("Overdrink","MYAREA",1)AddexperienceParty(24000)ActionOverride(LastTalkedToBy(Myself),PlayDead(12))~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.3
  SAY @34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),20,CON)~ THEN REPLY @30 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),21,CON)~ THEN REPLY @30 GOTO 11
  IF ~~ THEN REPLY @25 GOTO 12
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)RandomNum(2,2)!HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN BEGIN 19 // from:
  SAY @35
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)HasItemEquiped("Uniform",LastTalkedToBy(Myself))~ THEN BEGIN 20 // from:
  SAY @36
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @37 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @37 GOTO 22
  IF ~~ THEN REPLY @38 GOTO 23
  IF ~~ THEN REPLY @39 GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @40
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @41
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 23 // from: 20.3
  SAY @42
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 24 // from: 20.4
  SAY @43
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Overdrink","MYAREA",0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 25 // from:
  SAY @44
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @46 GOTO 27
  IF ~~ THEN REPLY @47 GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @47 GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 25.2
  SAY @52
  IF ~~ THEN REPLY @45 GOTO 26
  IF ~~ THEN REPLY @47 GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY @54
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~~ THEN REPLY @51 GOTO 31
  IF ~~ THEN REPLY @47 GOTO 28
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 32
  IF ~~ THEN REPLY @57 GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY @58
  IF ~~ THEN REPLY @49 GOTO 29
  IF ~~ THEN REPLY @50 GOTO 30
  IF ~~ THEN REPLY @47 GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @47 GOTO 28
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @61
  IF ~~ THEN REPLY @47 GOTO 28
END

// ----------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 34 // from:
  SAY @62
  IF ~~ THEN EXIT
END









