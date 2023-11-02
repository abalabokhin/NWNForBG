// Центр Невервинтера  Галион  Лицо этого стражника выражает усталость и напряжение после долгих часов борьбы с последствиями чумы.

BEGIN ~NWGALION~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @15
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY @22
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

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @23
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 10
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @26
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @27
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @28
  IF ~  Global("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 26
  IF ~  GlobalGT("NWBeggarsNestDone","GLOBAL",0)~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 14.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 26.1
  SAY @31
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 14.2
  SAY @32
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY @33
  IF ~  Global("NWNDocksDone","GLOBAL",0)~ THEN GOTO 28
  IF ~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @34
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY @35
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 8.4
  SAY @36
  IF ~  Global("NWBlackLakeDone","GLOBAL",0)~ THEN GOTO 30
  IF ~  GlobalGT("NWBlackLakeDone","GLOBAL",0)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 16.1
  SAY @37
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 31 // from: 16.2
  SAY @38
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~  Global("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 17
  IF ~  GlobalGT("NWPeninsulaDone","GLOBAL",0)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 8.5
  SAY @39
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 8.5
  SAY @40
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @19 GOTO 15
  IF ~~ THEN REPLY @20 GOTO 16
  IF ~~ THEN REPLY @14 GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 9.1
  SAY @41
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 19 // from: 9.2
  SAY @42
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY @43
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY @44
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 9.5
  SAY @45
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 23 // from: 9.6
  SAY @46
  IF ~~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 24 // from:
  SAY @47
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,3)~ THEN BEGIN 25 // from:
  SAY @48
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END


