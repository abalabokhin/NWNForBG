// Центр Невервинтера Ярмарка Мечей   Транкар  Человек   Это один из многих храбрых солдат Невервинтера, которые до сих пор сражаются с лусканской ордой.

BEGIN ~NWTRANKR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @5
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @12
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @13
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 10
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @17
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @18
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY @19
  IF ~~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @24
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @25
  IF ~~ THEN REPLY @26 DO ~SetGlobal("NWTrankarQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @107304 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 16 // from: 14.2
  SAY @35
  IF ~~ THEN REPLY @26 DO ~SetGlobal("NWTrankarQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @107304 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @5
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY @36
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 22
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY @41
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @42
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY @43
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @44
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

// --------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)!IsGabber(Player1)~ THEN BEGIN 25 // from:
  SAY @45
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

// --------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWTrankarQuest","GLOBAL",0)~ THEN BEGIN 26 // from:
  SAY @46
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

// --------------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWTrankarQuest","GLOBAL",1)Global("NWTrankarCatapult","GLOBAL",0)Global("NWTrankarGolem","GLOBAL",0)~ THEN BEGIN 27 // from:
  SAY @47
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 18
  IF ~~ THEN REPLY @32 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
  IF ~~ THEN REPLY @4 GOTO 3
END

// --------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWTrankarQuest","GLOBAL",1)Global("NWTrankarCatapult","GLOBAL",1)Global("NWTrankarGolem","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY @48
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWTrankarQuest","GLOBAL",1)Global("NWTrankarCatapult","GLOBAL",0)Global("NWTrankarGolem","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY @49
  IF ~~ THEN EXIT
END

// --------------------------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("NWTrankarQuest","GLOBAL",0)Global("NWTrankarCatapult","GLOBAL",1)Global("NWTrankarGolem","GLOBAL",1)~ THEN BEGIN 30 // from:
  SAY @50
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 32
  IF ~~ THEN REPLY @53 GOTO 33
  IF ~~ THEN REPLY @54 GOTO 34
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @55
  IF ~~ THEN REPLY @54 GOTO 34
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 34
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 31.3
  SAY @58
  IF ~~ THEN REPLY @30 GOTO 36
  IF ~~ THEN REPLY @33 GOTO 37
  IF ~~ THEN REPLY @34 GOTO 38
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 31.4
  SAY @59
  IF ~  GlobalLT("NWTrankarQuest","GLOBAL",2)~ THEN DO
  ~SetGlobal("NWTrankarQuest","GLOBAL",2)AddexperienceParty(240000)EraseJournalEntry(@107304)~ SOLVED_JOURNAL @107359 EXIT
  IF ~  GlobalGT("NWTrankarQuest","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @5
  IF ~~ THEN REPLY @33 GOTO 37
  IF ~~ THEN REPLY @34 GOTO 38
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 39
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY @61
  IF ~~ THEN REPLY @30 GOTO 36
  IF ~~ THEN REPLY @33 GOTO 37
  IF ~~ THEN REPLY @4 GOTO 35
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @62
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @44
  IF ~~ THEN REPLY @30 GOTO 36
  IF ~~ THEN REPLY @34 GOTO 38
  IF ~~ THEN REPLY @4 GOTO 35
END

