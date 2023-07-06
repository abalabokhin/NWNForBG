// Центр Невервинтера  Эррол Заданий нет. Обычный житель Невервинтера, одетый в простую одежду. На его лице написан страх, как и у всех, кто живет в тени чумы.

BEGIN ~ERROL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  OR(2)CheckStatGT(LastTalkedToBy(Myself),17,INT)Class(LastTalkedToBy(Myself),THIEF_ALL)Global("Robbed","LOCALS",0)~ THEN REPLY @7 GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),18,INT)!Class(LastTalkedToBy(Myself),THIEF_ALL)Global("Robbed","LOCALS",0)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 10
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 38
  IF ~~ THEN REPLY @19 GOTO 12
  IF ~~ THEN REPLY @20 GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @21
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @28
  IF ~  Class(Player1,THIEF)~ THEN GOTO 18
  IF ~  OR(2)Class(Player1,DRUID)Class(Player1,RANGER)~ THEN GOTO 19
  IF ~  OR(3)Class(Player1,CLERIC)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN GOTO 20
  IF ~  OR(2)Class(Player1,MAGE)Class(Player1,SORCERER)~ THEN GOTO 21
  IF ~  Class(Player1,FIGHTER)~ THEN GOTO 22
  IF ~  !Class(Player1,THIEF)
!Class(Player1,DRUID)
!Class(Player1,RANGER)
!Class(Player1,CLERIC)!Class(Player1,PALADIN)!Class(Player1,MONK)!Class(Player1,MAGE)!Class(Player1,FIGHTER)!Class(Player1,SORCERER)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 4.1
  SAY @29
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY @30
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 24
  IF ~~ THEN REPLY @33 DO ~SetGlobal("Robbed","LOCALS",1)~ GOTO 25
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @34
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @35
  IF ~  Global("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 14.1
  SAY @36
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 14.2
  SAY @37
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY @38
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @39
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY @40
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 8.4
  SAY @41
  IF ~  Global("BlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("BlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 16.1
  SAY @42
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY @43 GOTO 32
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @43 GOTO 33
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 31 // from: 16.2
  SAY @44
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @45
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY @46
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~  Global("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 17
  IF ~  GlobalGT("PeninsulaDone","GLOBAL",0)~ THEN REPLY @27 GOTO 35
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 8.5
  SAY @47
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 35 // from: 8.5
  SAY @48
  IF ~~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 15
  IF ~~ THEN REPLY @26 GOTO 16
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 9.1
  SAY @49
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 9.2
  SAY @50
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY @51
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY @52
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 9.5
  SAY @53
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 23 // from: 9.6
  SAY @54
  IF ~~ THEN REPLY @12 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY @55
  IF ~~ THEN DO ~GiveGoldForce(52)ReputationInc(-1)SetGlobal("Robbed","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY @56
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 38 // from: 6.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 34
  IF ~~ THEN REPLY @59 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 38.1
  SAY @60
  IF ~~ THEN DO ~GiveGoldForce(52)ReputationInc(-1)SetGlobal("Robbed","LOCALS",2)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",2)~ THEN BEGIN 36 // from:
  SAY @61
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 37 // from:
  SAY @62
  IF ~~ THEN EXIT
END


