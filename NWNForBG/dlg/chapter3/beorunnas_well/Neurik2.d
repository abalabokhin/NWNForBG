// Колодец Беорунна: храм Тира Священник Ньюрик       m3q01a01igla - диалог прокурора  Игланд Быстрый Меч. Я прокурор

BEGIN ~NEURIK2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN DO ~StartStore("Neurik",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @17
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @23
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @26
  IF ~~ THEN DO ~SetGlobal("RolgansTrial","GLOBAL",1)GiveItemCreate("Nwbook53",LastTalkedToBy,0,0,0) ~ UNSOLVED_JOURNAL @105132 EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("RolgansTrial","GLOBAL",0)~ THEN BEGIN 16 // from:
  SAY @28
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",1)!PartyHasItem("Nwbook53")~ THEN BEGIN 17 // from:
  SAY @29
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @32
  IF ~~ THEN DO ~GiveItemCreate("Nwbook53",LastTalkedToBy,0,0,0)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",1)PartyHasItem("Nwbook53")~ THEN BEGIN 20 // from:
  SAY @33
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @34
  IF ~  Global("RolgansTrial","GLOBAL",5)~ THEN REPLY @35 DO ~SetGlobal("RolgansTrial","GLOBAL",6)~ GOTO 23
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY @36
  IF ~  GlobalGT("MemberDied","GLOBAL",0)~ THEN REPLY @37 GOTO 24
  IF ~  Global("MemberDied","GLOBAL",0)~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @38 GOTO 26
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY @39
  IF ~  GlobalGT("RolganConvicted","GLOBAL",0)~ THEN GOTO 27
  IF ~  GlobalGT("RolganAcquitted","GLOBAL",0)~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY @40
  IF ~~ THEN DO ~SetGlobal("RolgansTrial","GLOBAL",7)EraseJournalEntry(@105132)~ SOLVED_JOURNAL @105170 GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 30
  IF ~~ THEN REPLY @44 GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY @45
  IF ~  GlobalGT("MemberDied","GLOBAL",0)~ THEN REPLY @37 GOTO 24
  IF ~  Global("MemberDied","GLOBAL",0)~ THEN REPLY @37 GOTO 25
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY @46
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 28 // from: 23.2
  SAY @47
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 29 // from: 24.1
  SAY @48
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 30 // from: 25.1
  SAY @49
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY @50
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @51
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 35
  IF ~~ THEN REPLY @54 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY @55
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY @56
  IF ~~ THEN DO ~SetGlobal("RolgansTrial","GLOBAL",2)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("RolgansTrial","GLOBAL",5)~ THEN BEGIN 36 // from:
  SAY @33
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 37 // from: IGLAND2 1.1
  SAY @57
  IF ~~ THEN EXTERN ~IGLAND2~ 2
END

IF ~~ THEN BEGIN 38 // from: IGLAND2 5.1
  SAY @58
  IF ~~ THEN EXTERN ~IGLAND2~ 6
END

IF ~~ THEN BEGIN 39 // from: IGLAND2 5.1
  SAY @59
  IF ~~ THEN REPLY @60 EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 40 // from: IGLAND3 6
  SAY @61
  IF ~~ THEN REPLY @62 EXTERN ~IGLAND3~ 7
END

IF ~~ THEN BEGIN 41 // from: IGLAND3 7
  SAY @63
  IF ~~ THEN REPLY @64 EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @65 EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @66 EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY @67 EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY @68 EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY @69 GOTO 47
END

IF ~~ THEN BEGIN 42 // from: IGLAND3 9
  SAY @70
  IF ~~ THEN REPLY @71 EXTERN ~IGLAND3~ 8
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @65 EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @66 EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY @67 EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY @68 EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY @69 GOTO 47
END

IF ~~ THEN BEGIN 43 // from: IGLAND3 10
  SAY @72
  IF ~~ THEN REPLY @71 EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY @64 EXTERN ~IGLAND3~ 9
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @66 EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY @67 EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY @68 EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY @69 GOTO 47
END

IF ~~ THEN BEGIN 44 // from: IGLAND3 11
  SAY @73
  IF ~~ THEN REPLY @71 EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY @64 EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @65 EXTERN ~IGLAND3~ 10
  IF ~~ THEN REPLY @67 EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY @68 EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY @69 GOTO 47
END

IF ~~ THEN BEGIN 45 // from: IGLAND3 12
  SAY @74
  IF ~~ THEN REPLY @71 EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY @64 EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @65 EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @66 EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY @68 EXTERN ~IGLAND3~ 13
  IF ~~ THEN REPLY @69 GOTO 47
END

IF ~~ THEN BEGIN 46 // from: IGLAND3 13
  SAY @75
  IF ~~ THEN REPLY @71 EXTERN ~IGLAND3~ 8
  IF ~~ THEN REPLY @64 EXTERN ~IGLAND3~ 9
  IF ~  OR(2)Global("LodarTalk","GLOBAL",2)GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @65 EXTERN ~IGLAND3~ 10
  IF ~GlobalGT("ZedTalk","GLOBAL",0)~ THEN REPLY @66 EXTERN ~IGLAND3~ 11
  IF ~~ THEN REPLY @67 EXTERN ~IGLAND3~ 12
  IF ~~ THEN REPLY @69 GOTO 47
END

IF ~~ THEN BEGIN 47 // from: IGLAND3 7.7
  SAY @76
  IF ~  GlobalGT("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",2)~ THEN GOTO 49
  IF ~  GlobalGT("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",1)~ THEN GOTO 50
  IF ~  Global("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",2)~ THEN GOTO 50
  IF ~  Global("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",1)~ THEN GOTO 52
  IF ~  GlobalGT("Justification","GLOBAL",2)Global("ToAcquitted","GLOBAL",0)~ THEN GOTO 52
  IF ~  Global("Justification","GLOBAL",1)Global("ToAcquitted","GLOBAL",2)~ THEN GOTO 52
  IF ~  Global("ToAcquitted","GLOBAL",2)GlobalLT("Justification","GLOBAL",1)~ THEN GOTO 54
  IF ~  Global("ToAcquitted","GLOBAL",1)GlobalLT("Justification","GLOBAL",2)~ THEN GOTO 54
  IF ~  Global("ToAcquitted","GLOBAL",0)GlobalLT("Justification","GLOBAL",3)~ THEN GOTO 54
END

IF ~~ THEN BEGIN 48 // from: VAND 18
  SAY @77
  IF ~  Global("VandJob","GLOBAL",2)Global("WandaAnswers","LOCALS",0)~ THEN REPLY @78 DO ~SetGlobal("WandaAnswers","LOCALS",1)~ EXTERN ~VAND~ 16
  IF ~  GlobalGT("VandJob","GLOBAL",0)~ THEN REPLY @79 DO ~SetGlobal("WandaAnswers","LOCALS",1)~ EXTERN ~VAND~ 17
  IF ~~ THEN REPLY @60 EXTERN ~IGLAND2~ 8
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY @80
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",5)SetGlobal("RolganAcquitted","GLOBAL",1)AddexperienceParty(160000)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 47.3
  SAY @81
  IF ~~ THEN EXTERN ~IGLAND3~ 14
END

IF ~~ THEN BEGIN 51 // from: IGLAND3 14
  SAY @82 
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",5)SetGlobal("RolganAcquitted","GLOBAL",1)AddexperienceParty(130000)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 47.4
  SAY @83
  IF ~~ THEN EXTERN ~IGLAND3~ 15
END

IF ~~ THEN BEGIN 53 // from: IGLAND3 15
  SAY @82
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",5)SetGlobal("RolganAcquitted","GLOBAL",1)AddexperienceParty(100000)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.5
  SAY @84
  IF ~~ THEN EXTERN ~IGLAND3~ 16
END

IF ~~ THEN BEGIN 55 // from: IGLAND3 16
  SAY @82
  IF ~~ THEN DO ~SetGlobal("IslandDialogue","GLOBAL",5)SetGlobal("RolgansTrial","GLOBAL",5)SetGlobal("VandJob","GLOBAL",7)SetGlobal("RolganConvicted","GLOBAL",1)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("RolgansTrial","GLOBAL",5)~ THEN BEGIN 56 // from:
  SAY @33
  IF ~~ THEN GOTO 21
END

