// Лускан Подмигни и ущипни, 2-й уровень Орет Этот молодой и красивый куртизан выглядит так, словно его что-то беспокоит.


//  Global("Bela_Rhaine","GLOBAL",1)
//  Global("Bela_Oreth","GLOBAL",1)

BEGIN ~ORETH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  Global("Bela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @7
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~  Global("Bela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 8
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~  Global("Bela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @14
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~  Global("Bela_Oreth","GLOBAL",1)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
  IF ~~ THEN REPLY @17 GOTO 2
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @19 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY @21
  IF ~  CheckStatGT(LastTalkedToBy,11,CHR)~ THEN REPLY @22 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy,12,CHR)~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @23 GOTO 12
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @24 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 0.2
  SAY @26
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @27 GOTO 7
  IF ~~ THEN REPLY @28 GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY @29
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 0.2
  SAY @30
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 0.2
  SAY @31
  IF ~  CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @23 GOTO 12
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @24 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 0.2
  SAY @32
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 0.2
  SAY @33
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 0.2
  SAY @34
  IF ~  CheckStatGT(LastTalkedToBy,11,CHR)~ THEN REPLY @22 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy,12,CHR)~ THEN REPLY @22 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @23 GOTO 12
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 16
  IF ~~ THEN REPLY @37 GOTO 17
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 0.2
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 20
  IF ~~ THEN REPLY @42 GOTO 21
  IF ~~ THEN REPLY @43 GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 0.2
  SAY @44
  IF ~~ THEN REPLY @36 GOTO 16
  IF ~~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 0.2
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 26
END

IF ~~ THEN BEGIN 19 // from: 0.2
  SAY @52
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.2
  SAY @53
  IF ~  Global("PlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 27
  IF ~  GlobalGT("PlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY @54
  IF ~  Global("PlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 29
  IF ~  GlobalGT("PlayerHasLuscanKey","GLOBAL",0)~ THEN GOTO 30
END

IF ~~ THEN BEGIN 22 // from: 0.2
  SAY @55
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 0.2
  SAY @56
  IF ~~ THEN REPLY @36 GOTO 16
  IF ~~ THEN REPLY @38 GOTO 18
  IF ~~ THEN REPLY @39 GOTO 19
END

IF ~~ THEN BEGIN 24 // from: 0.2
  SAY @57
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 25 // from: 0.2
  SAY @58
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 26 // from: 0.2
  SAY @59
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 0.2
  SAY @60
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 0.2
  SAY @61
  IF ~~ THEN REPLY @48 GOTO 21
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 29 // from: 0.2
  SAY @62
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~~ THEN REPLY @64 GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 0.2
  SAY @61
  IF ~~ THEN REPLY @47 GOTO 20
  IF ~~ THEN REPLY @49 GOTO 24
  IF ~~ THEN REPLY @50 GOTO 25
  IF ~~ THEN REPLY @51 GOTO 26
  IF ~~ THEN REPLY @6 GOTO 6
END

IF ~~ THEN BEGIN 31 // from: 0.2
  SAY @65
  IF ~~ THEN REPLY @63 GOTO 32
  IF ~~ THEN REPLY @64 GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 0.2
  SAY @66
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 0.2
  SAY @67
  IF ~~ THEN DO ~SetGlobal("PlayerHasLuscanKey","GLOBAL",1)
GiveItemCreate("Nwkey10",LastTalkedToBy,0,0,0)
GiveItemCreate("Nwkey11",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.2
  SAY @68
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Gender(LastTalkedToBy,FEMALE)Global("PlayerHasLuscanKey","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 35 // from:
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 18
  IF ~~ THEN REPLY @71 GOTO 36
  IF ~  Dead("Baram")Global("QuestDone","MYAREA",0)~ THEN REPLY @72 GOTO 37
  IF ~  Dead("Kurt")Global("QuestDone","MYAREA",0)~ THEN REPLY @73 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 0.2
  SAY @74
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 0.2
  SAY @75
  IF ~  Dead("Kurt")~ THEN REPLY @76 GOTO 39
  IF ~~ THEN REPLY @77 GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 0.2
  SAY @78
  IF ~  Dead("Kurt")~ THEN REPLY @76 GOTO 39
  IF ~~ THEN REPLY @77 GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 0.2
  SAY @79
  IF ~~ THEN DO ~SetGlobal("QuestDone","MYAREA",1)AddexperienceParty(75000)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 0.2
  SAY @80
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)
Gender(LastTalkedToBy,FEMALE)
Global("PlayerHasLuscanKey","GLOBAL",1)
IsGabber(Player1)
Global("QuestDone","MYAREA",0)~ THEN BEGIN 41 // from:
  SAY @81
  IF ~~ THEN REPLY @70 GOTO 18
  IF ~~ THEN REPLY @71 GOTO 36
  IF ~  Dead("Baram")Global("QuestDone","MYAREA",0)~ THEN REPLY @72 GOTO 37
  IF ~  Dead("Kurt")Global("QuestDone","MYAREA",0)~ THEN REPLY @73 GOTO 38
  IF ~~ THEN REPLY @25 GOTO 6
END

// -----------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy,MALE)Global("QuestDone","MYAREA",0)~ THEN BEGIN 42 // from:
  SAY @82
  IF ~~ THEN REPLY @1 GOTO 43
  IF ~~ THEN REPLY @83 GOTO 44
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 43 // from: 0.2
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 44
  IF ~~ THEN REPLY @83 GOTO 44
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 44 // from: 0.2
  SAY @86
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)Gender(LastTalkedToBy,FEMALE)Global("QuestDone","MYAREA",0)~ THEN BEGIN 45 // from:
  SAY @87
  IF ~~ THEN REPLY @1 GOTO 46
  IF ~~ THEN REPLY @83 GOTO 47
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 46 // from: 0.2
  SAY @84
  IF ~~ THEN REPLY @85 GOTO 47
  IF ~~ THEN REPLY @83 GOTO 47
  IF ~~ THEN REPLY @25 GOTO 6
END

IF ~~ THEN BEGIN 47 // from: 0.2
  SAY @88
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestDone","MYAREA",1)~ THEN BEGIN 48 // from:
  SAY @89
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

