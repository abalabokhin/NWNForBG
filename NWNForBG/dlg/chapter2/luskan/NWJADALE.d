// Лускан Поместье Джедейла Леди Джадейл Эта благородная женщина держится с чувством собственного превосходства, но все портит тревожное выражение на ее лице.   !HasItem("NWPLATAC",Myself)  45 - свободно

BEGIN ~NWJADALE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)Global("Ring_Is_Stolen","LOCALS",0)CheckStatGT(LastTalkedToBy,9,CHR)CheckStatLT(LastTalkedToBy,15,CHR)~ THEN BEGIN 0 // 
  SAY @0
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @13
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY @16
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @18
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @19 GOTO 28
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 9 // from: 0.3
  SAY @23
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 0.3
  SAY @24
  IF ~  PartyGoldGT(999)~ THEN REPLY @25 GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @26 GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @26 GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 21
  IF ~~ THEN REPLY @28 GOTO 22
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 11 // from: 0.3
  SAY @30
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @31 GOTO 24
  IF ~  Global("Talked","LOCALS",1)~ THEN REPLY @31 GOTO 38
  IF ~  CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY @32 GOTO 25
  IF ~  CheckStatLT(LastTalkedToBy,16,STR)~ THEN REPLY @32 GOTO 26
  IF ~~ THEN REPLY @33 GOTO 27
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 0.3
  SAY @34
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 1.2
  SAY @35
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @15 GOTO 14
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 1.2
  SAY @36
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @14 GOTO 13
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 0.3
  SAY @37
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @19 GOTO 28
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 16 // from: 0.3
  SAY @38
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @39 GOTO 29
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @39 GOTO 30
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @40 GOTO 28
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 0.3
  SAY @41
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 31 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 32 // за 1000
END

IF ~~ THEN BEGIN 18 // from: 0.3
  SAY @42
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 48 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 33 // за 250
END

IF ~~ THEN BEGIN 19 // from: 0.3
  SAY @43
  IF ~  PartyGoldGT(399)~ THEN REPLY @44 GOTO 34
  IF ~~ THEN REPLY @45 GOTO 35
  IF ~  PartyGoldGT(249)ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @46 GOTO 18
  IF ~~ THEN REPLY @28 GOTO 22
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 0.3
  SAY @47
  IF ~  PartyGoldGT(999)~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 21
  IF ~~ THEN REPLY @28 GOTO 22
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 0.3
  SAY @48
  IF ~  PartyGoldGT(999)~ THEN REPLY @25 GOTO 17
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @26 GOTO 18
  IF ~  PartyGoldGT(249)CheckStatGT(LastTalkedToBy,13,CHR)CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @26 GOTO 19
  IF ~  PartyGoldGT(249)CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 22
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 0.3
  SAY @49
  IF ~  PartyGoldGT(249)~ THEN REPLY @50 GOTO 36
  IF ~~ THEN REPLY @27 GOTO 37
  IF ~~ THEN REPLY @51 GOTO 11
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 0.3
  SAY @52
  IF ~~ THEN DO ~SetGlobal("Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 0.3
  SAY @53
  IF ~~ THEN REPLY @8 GOTO 8
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 25 // from: 0.3
  SAY @54
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 26 // from: 0.3
  SAY @55
  IF ~  Global("Talked","LOCALS",0)~ THEN REPLY @31 GOTO 24
  IF ~  Global("Talked","LOCALS",1)~ THEN REPLY @31 GOTO 38
  IF ~~ THEN REPLY @33 GOTO 27
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 27 // from: 0.3
  SAY @56
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 0.3
  SAY @57
  IF ~  Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY @58 GOTO 40
  IF ~  !Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY @58 GOTO 41
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @59 GOTO 42
  IF ~  ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @59 GOTO 41
  IF ~  Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @60 GOTO 40
  IF ~  !Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @60 GOTO 43
  IF ~~ THEN REPLY @61 GOTO 44
  IF ~~ THEN REPLY @51 GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY @62
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @40 GOTO 28
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 30 // from: 0.3
  SAY @63
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY @64 GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY @64 GOTO 47
  IF ~  CheckStatGT(LastTalkedToBy,14,INT)~ THEN REPLY @40 GOTO 28
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 31 // за 1000
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 50
  IF ~~ THEN REPLY @67 GOTO 50
  IF ~~ THEN REPLY @68 GOTO 50
  IF ~~ THEN REPLY @69 GOTO 50
END

IF ~~ THEN BEGIN 32 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(250)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.3
  SAY @71
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 51 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 52 // за 400
END

IF ~~ THEN BEGIN 35 // from: 0.3
  SAY @72
  IF ~  PartyGoldGT(399)~ THEN REPLY @44 GOTO 34
  IF ~~ THEN REPLY @28 GOTO 22
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 36 // from: 0.3
  SAY @71
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 48 // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 33 // за 250
END

IF ~~ THEN BEGIN 37 // from: 0.3
  SAY @73
  IF ~  PartyGoldGT(249)~ THEN REPLY @50 GOTO 36
  IF ~~ THEN REPLY @51 GOTO 11
  IF ~~ THEN REPLY @29 GOTO 23
END

IF ~~ THEN BEGIN 38 // from: 0.3
  SAY @74
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 39 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 0.3
  SAY @75
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 41 // from: 0.3
  SAY @76
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 42 // from: 0.3
  SAY @77
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @78 GOTO 53
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @78 GOTO 54
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @79 GOTO 55
  IF ~  ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @79 GOTO 56
  IF ~  Class(LastTalkedToBy,FIGHTER_ALL)~ THEN REPLY @80 GOTO 57
  IF ~~ THEN REPLY @81 GOTO 58
  IF ~~ THEN REPLY @82 GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 0.3
  SAY @83
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 44 // from: 0.3
  SAY @84
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @21 GOTO 16
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 45 // from: 0.3
  SAY @85
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 0.3
  SAY @86
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 47 // from: 0.3
  SAY @87
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END
  
IF ~~ THEN BEGIN 48 // за 250
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 45
  IF ~~ THEN REPLY @67 GOTO 45
  IF ~~ THEN REPLY @68 GOTO 45
  IF ~~ THEN REPLY @69 GOTO 45
END

IF ~~ THEN BEGIN 49 // from: 0.3
  SAY @88
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)SetGlobal("Ring_Is_Stolen","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // за 1000
  SAY @89
  IF ~~ THEN REPLY @90 GOTO 60
  IF ~~ THEN REPLY @91 GOTO 61
  IF ~~ THEN REPLY @92 GOTO 62
END

IF ~~ THEN BEGIN 51 // from: 0.3
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 63
  IF ~~ THEN REPLY @67 GOTO 63
  IF ~~ THEN REPLY @68 GOTO 63
  IF ~~ THEN REPLY @69 GOTO 63
END

IF ~~ THEN BEGIN 52 // from: 0.3
  SAY @70
  IF ~~ THEN DO ~SetGlobal("Give","LOCALS",1)SetGlobal("Talked","LOCALS",1)GiveItem("Nwmisc61",LastTalkedToBy)TakePartyGold(400)~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 0.3
  SAY @93
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 54 // from: 0.3
  SAY @83
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 55 // from: 0.3
  SAY @94
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 56 // from: 0.3
  SAY @83
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 57 // from: 0.3
  SAY @75
  IF ~  !HasItem("Nwmisc61",Myself)~ THEN GOTO 49  // нет кольца
  IF ~  HasItem("Nwmisc61",Myself)~ THEN GOTO 39 // кольцо бесплатно
END

IF ~~ THEN BEGIN 58 // from: 0.3
  SAY @95
  IF ~  CheckStatGT(LastTalkedToBy,10,INT)~ THEN REPLY @64 GOTO 46
  IF ~  CheckStatLT(LastTalkedToBy,11,INT)~ THEN REPLY @64 GOTO 47
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 59 // from: 0.3
  SAY @96
  IF ~~ THEN REPLY @20 GOTO 15
  IF ~~ THEN REPLY @10 GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @9 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Talked","LOCALS",1)~ GOTO 12
  IF ~~ THEN REPLY @4 GOTO 23
END

IF ~~ THEN BEGIN 60 // за 1000
  SAY @97
  IF ~~ THEN REPLY @91 GOTO 61
  IF ~~ THEN REPLY @92 GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 0.3
  SAY @98
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)TakePartyGold(1000)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 62 // за 1000
  SAY @99
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Talked","LOCALS",1)TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 63 // за 400
  SAY @89
  IF ~~ THEN REPLY @90 GOTO 64
  IF ~~ THEN REPLY @91 GOTO 65
  IF ~~ THEN REPLY @92 GOTO 66
END

IF ~~ THEN BEGIN 64 // за 1000
  SAY @97
  IF ~~ THEN REPLY @91 GOTO 65
  IF ~~ THEN REPLY @92 GOTO 66
END

IF ~~ THEN BEGIN 65 // from: 0.3
  SAY @98
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Hostile","MYAREA",1)TakePartyGold(400)Enemy()RunAwayFrom(LastTalkedToBy(Myself),40)~ EXIT
END

IF ~~ THEN BEGIN 66 // за 400
  SAY @99
  IF ~~ THEN DO ~SetGlobal("Ring_Is_Stolen","LOCALS",1)SetGlobal("Talked","LOCALS",1)TakePartyGold(400)~ EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)CheckStatGT(LastTalkedToBy,14,CHR)Global("Ring_Is_Stolen","LOCALS",0)~ THEN BEGIN 67 // from:
  SAY @100
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Give","LOCALS",0)Global("Ring_Is_Stolen","LOCALS",0)CheckStatLT(LastTalkedToBy,10,CHR)~ THEN BEGIN 68 // from:
  SAY @101
  IF ~  Global("ErbQuest","GLOBAL",2)
!HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("ErbQuest","GLOBAL",2)
Global("Give","LOCALS",1)~ THEN REPLY @1 GOTO 2
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",0)~ THEN REPLY @1 GOTO 3
  IF ~  Global("ErbQuest","GLOBAL",2)
HasItem("Nwmisc61",Myself)
Global("Give","LOCALS",0)
Global("Talked","LOCALS",1)~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 5
  IF ~~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
END

// -------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("Ring_Is_Stolen","LOCALS",1)Global("Give","LOCALS",1)~ THEN BEGIN 69 // from:
  SAY @102
  IF ~~ THEN EXIT
END

