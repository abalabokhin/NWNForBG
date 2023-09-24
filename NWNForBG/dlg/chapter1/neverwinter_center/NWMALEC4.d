// Центр Невервинтера  Дом   Простолюдин человек   Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.

BEGIN ~NWMALEC4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY @12 DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY @12 DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY @12 DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 14
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @20
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @22
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 3.3 3.4
  SAY @23
  IF ~  RandomNum(2,1)~ THEN REPLY @24 GOTO 15
  IF ~  RandomNum(2,2)~ THEN REPLY @24 GOTO 16
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @32 GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @35 GOTO 37
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY @36
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @37
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 10.1
  SAY @38
  IF ~~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @26 GOTO 18
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY @39
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 17 // from: 10.3
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @42 GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 10.4
  SAY @43
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY @44
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY @45
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY @46
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY @47
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 11.5
  SAY @48
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN GOTO 32
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY @49
  IF ~~ THEN DO ~GiveGoldForce(163)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY @50
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 26 // from: 20.1
  SAY @51
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY @52
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY @53
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY @54
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY @55
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 22.2
  SAY @56
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY @57
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 23.2
  SAY @58
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 22
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 36 // from: 12.1
  SAY @59
  IF ~~ THEN REPLY @35 GOTO 37
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 12.2
  SAY @60
  IF ~~ THEN REPLY @34 GOTO 36
  IF ~~ THEN REPLY @35 GOTO 37
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY @61
  IF ~~ THEN DO ~GiveGoldForce(100)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 34 // from:
  SAY @62
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~  RandomNum(2,1)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY @12 DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 9
  IF ~  RandomNum(2,2)
!Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY @12 DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)
Global("Robbed","MYAREA",0)~ THEN REPLY @12 DO ~SetGlobal("Robbed","MYAREA",1)~ GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY @63
  IF ~~ THEN EXIT
END

