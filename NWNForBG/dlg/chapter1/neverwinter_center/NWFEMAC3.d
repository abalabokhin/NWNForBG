// Центр Невервинтера  Дом   Простолюдин человек   Эта женщина принадлежит к бедной части среднего класса жителей Невервинтера. Она одета просто, но опрятно. Она выглядит очень подавленной всем, что происходит вокруг.

BEGIN ~NWFEMAC3~

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
  IF ~~ THEN REPLY @1 GOTO 1
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
  IF ~~ THEN REPLY @24 GOTO 17
  IF ~~ THEN REPLY @25 GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @31 GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 15
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 5.3
  SAY @34
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @35
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @38
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @9 GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY @39
  IF ~~ THEN DO ~GiveGoldForce(100)ReputationInc(-1)SetGlobal("Robbed","MYAREA",2)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY @40
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 11.2
  SAY @41
  IF ~  Global("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 21 // from: 11.3
  SAY @42
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22 // from: 11.4
  SAY @43
  IF ~  Global("NWBlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("NWBlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 11.5
  SAY @44
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN GOTO 32
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN GOTO 33
END

IF ~~ THEN BEGIN 26 // from: 20.1
  SAY @45
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY @46
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY @47
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 21.2
  SAY @48
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 22.1
  SAY @49
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 22.2
  SAY @50
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @31 GOTO 23
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY @51
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @17 GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 23.2
  SAY @52
  IF ~~ THEN REPLY @27 GOTO 19
  IF ~~ THEN REPLY @28 GOTO 20
  IF ~~ THEN REPLY @29 GOTO 21
  IF ~~ THEN REPLY @30 GOTO 22
  IF ~~ THEN REPLY @17 GOTO 13
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)!Global("Robbed","MYAREA",2)~ THEN BEGIN 34 // from:
  SAY @53
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
  IF ~~ THEN REPLY @9 GOTO 8
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY @54
  IF ~~ THEN EXIT
END

