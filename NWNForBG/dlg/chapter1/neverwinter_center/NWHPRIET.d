// Центр Невервинтера  Жрец Хельма Заданий нет. Облачение этого человека украшено гордым символом Хельма. Он с подозрением ловит ваш взгляд, но затем приветливо улыбается. BEGIN 32 BEGIN 33 BEGIN 34

BEGIN ~NWHPRIET~

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
  IF ~  RandomNum(2,1)Global("Robbed","LOCALS",0)~ THEN REPLY @7 GOTO 6
  IF ~  RandomNum(2,2)Global("Robbed","LOCALS",0)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 37
  IF ~~ THEN REPLY @11 GOTO 37
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @18
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @22
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY @29
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
  SAY @30
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_BLESS)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 38
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 38 // from: 11.1
  SAY @33
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 37 // from: 2.2
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 24
  IF ~~ THEN REPLY @37 DO ~SetGlobal("Robbed","LOCALS",1)~ GOTO 25
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 39
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 13.1
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 40
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 41
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @44
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @45
  IF ~  Global("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 14.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 42
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 14.2
  SAY @48
  IF ~~ THEN REPLY @47 GOTO 42
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 26.1
  SAY @49
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY @50
  IF ~  Global("NWNDocksDone","GLOBAL",0) ~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @51
  IF ~~ THEN REPLY @47 GOTO 42
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY @52
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 8.4
  SAY @53
  IF ~  Global("NWBlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("NWBlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 16.1
  SAY @54
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 31 // from: 16.2
  SAY @55
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @28 GOTO 35
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 8.5
  SAY @56
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 35 // from: 8.5
  SAY @57
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @17 GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 9.1
  SAY @58
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 9.2
  SAY @59
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY @60
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY @61
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 9.5
  SAY @62
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 23 // from: 9.6
  SAY @63
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY @64
  IF ~~ THEN DO ~GiveGoldForce(208)ReputationInc(-1)SetGlobal("Robbed","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY @65
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",2)~ THEN BEGIN 32 // from:
  SAY @66
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Robbed","LOCALS",1)~ THEN BEGIN 33 // from:
  SAY @67
  IF ~~ THEN EXIT
END


