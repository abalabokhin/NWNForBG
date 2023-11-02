// Лускан Подмигни и ущипни, 2-й уровень Рэйн Эта прекрасная молодая куртизанка выглядит так, словно ее что-то беспокоит.


//  Global("NWBela_Rhaine","GLOBAL",1)
//  Global("NWBela_Oreth","GLOBAL",1)

BEGIN ~NWRHAINE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  Global("NWBela_Rhaine","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~  Global("NWBela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("NWBela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @15
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~  Global("NWBela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @19 GOTO 2
  IF ~~ THEN REPLY @20 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @21
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @22
  IF ~  CheckStatGT(LastTalkedToBy,11,CHR)~ THEN REPLY @23 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy,12,CHR)~ THEN REPLY @23 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @24 GOTO 12
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @25 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 0.2
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 49
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @29 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY @30
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 0.2
  SAY @31
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 0.2
  SAY @32
  IF ~  CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @24 GOTO 12
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @25 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 0.2
  SAY @33
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY @34
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 0.2
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 16
  IF ~~ THEN REPLY @38 GOTO 17
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~~ THEN REPLY @41 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 0.2
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 20
  IF ~~ THEN REPLY @44 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @46
  IF ~~ THEN REPLY @37 GOTO 16
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~~ THEN REPLY @41 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 0.2
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 20
  IF ~~ THEN REPLY @50 GOTO 21
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 25
  IF ~~ THEN REPLY @53 GOTO 26
END

IF ~~ THEN BEGIN 19 // from: 0.2
  SAY @54
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.2
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.2
  SAY @56
  IF ~  Global("NWPlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 27
  IF ~  GlobalGT("NWPlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @57
  IF ~  Global("NWPlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 29
  IF ~  GlobalGT("NWPlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 30
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY @58
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 0.2
  SAY @59
  IF ~~ THEN REPLY @37 GOTO 16
  IF ~~ THEN REPLY @40 GOTO 18
  IF ~~ THEN REPLY @41 GOTO 19
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @60
  IF ~~ THEN REPLY @49 GOTO 20
  IF ~~ THEN REPLY @50 GOTO 21
  IF ~~ THEN REPLY @52 GOTO 25
  IF ~~ THEN REPLY @53 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY @61
  IF ~~ THEN REPLY @49 GOTO 20
  IF ~~ THEN REPLY @50 GOTO 21
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @53 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY @62
  IF ~~ THEN REPLY @49 GOTO 20
  IF ~~ THEN REPLY @50 GOTO 21
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 25
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @63
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY @64
  IF ~~ THEN REPLY @50 GOTO 21
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 25
  IF ~~ THEN REPLY @53 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY @65
  IF ~~ THEN REPLY @66 GOTO 32
  IF ~~ THEN REPLY @67 GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 0.2
  SAY @64
  IF ~~ THEN REPLY @49 GOTO 20
  IF ~~ THEN REPLY @51 GOTO 24
  IF ~~ THEN REPLY @52 GOTO 25
  IF ~~ THEN REPLY @53 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 31 // from: 0.2
  SAY @68
  IF ~~ THEN REPLY @66 GOTO 32
  IF ~~ THEN REPLY @67 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 0.2
  SAY @69
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 0.2
  SAY @70
  IF ~~ THEN DO ~SetGlobal("NWPlayerHasLuscanKey","GLOBAL",1)
GiveItemCreate("Nwkey10",LastTalkedToBy,0,0,0)
GiveItemCreate("Nwkey11",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.2
  SAY @71
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Gender(LastTalkedToBy,MALE)Global("NWPlayerHasLuscanKey","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 35 // from:
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 18
  IF ~~ THEN REPLY @74 GOTO 36
  IF ~  Dead("NWBARAM")Global("QuestDone","MYAREA",0)~ THEN REPLY @75 GOTO 37
  IF ~  Dead("NWKURT")Global("QuestDone","MYAREA",0)~ THEN REPLY @76 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 0.2
  SAY @77
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 0.2
  SAY @78
  IF ~  Dead("NWKURT")~ THEN REPLY @79 GOTO 39
  IF ~~ THEN REPLY @80 GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 0.2
  SAY @81
  IF ~  Dead("NWKURT")~ THEN REPLY @79 GOTO 39
  IF ~~ THEN REPLY @80 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 0.2
  SAY @82
  IF ~~ THEN DO ~SetGlobal("QuestDone","MYAREA",1)AddexperienceParty(75000)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 0.2
  SAY @83
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)
Gender(LastTalkedToBy,MALE)
Global("NWPlayerHasLuscanKey","GLOBAL",1)
IsGabber(Player1)
Global("QuestDone","MYAREA",0)~ THEN BEGIN 41 // from:
  SAY @84
  IF ~~ THEN REPLY @73 GOTO 18
  IF ~~ THEN REPLY @74 GOTO 36
  IF ~  Dead("NWBARAM")Global("QuestDone","MYAREA",0)~ THEN REPLY @75 GOTO 37
  IF ~  Dead("NWKURT")Global("QuestDone","MYAREA",0)~ THEN REPLY @76 GOTO 38
  IF ~~ THEN REPLY @26 GOTO 6
END

// -----------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy,FEMALE)Global("QuestDone","MYAREA",0)~ THEN BEGIN 42 // from:
  SAY @85
  IF ~~ THEN REPLY @1 GOTO 43
  IF ~~ THEN REPLY @86 GOTO 44
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 43 // from: 0.2
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 44
  IF ~~ THEN REPLY @86 GOTO 44
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 44 // from: 0.2
  SAY @89
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)Gender(LastTalkedToBy,MALE)Global("QuestDone","MYAREA",0)~ THEN BEGIN 45 // from:
  SAY @90
  IF ~~ THEN REPLY @1 GOTO 46
  IF ~~ THEN REPLY @86 GOTO 47
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 46 // from: 0.2
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 47
  IF ~~ THEN REPLY @86 GOTO 47
  IF ~~ THEN REPLY @26 GOTO 6
END

IF ~~ THEN BEGIN 47 // from: 0.2
  SAY @91
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestDone","MYAREA",1)~ THEN BEGIN 48 // from:
  SAY @92
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

