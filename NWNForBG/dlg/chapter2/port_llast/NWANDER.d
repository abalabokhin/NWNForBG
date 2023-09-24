// Порт-Лласт Таверна "Герб союза" Эндер Квест с оборотнями

BEGIN ~NWANDER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NeurikQuest","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 1
  IF ~  !NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 2
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @2 GOTO 3
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)Global("TalkAboutWerewolw","LOCALS",1)~ THEN REPLY @2 GOTO 26
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)Global("TalkAboutWerewolw","LOCALS",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 26 // from: 0.4
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 20
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 0.6
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.7
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @12
  IF ~  InMyArea("Alhelor1")!StateCheck("Alhelor1",CD_STATE_NOTVALID)~ THEN EXTERN ~NWALHELR~ WER01
  IF ~  OR(2)!InMyArea("Alhelor1")StateCheck("Alhelor1",CD_STATE_NOTVALID)~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 1.2
  SAY @13
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @14 GOTO 8
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @15
  IF ~  ~ THEN REPLY @16 GOTO 4
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @2 GOTO 3
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @21
  IF ~~ THEN DO ~SetGlobal("TalkAboutWerewolw","LOCALS",1)EraseJournalEntry(@96006)~ UNSOLVED_JOURNAL @96025 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @25
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @26
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @27 GOTO 9
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @27 GOTO 8
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @2 GOTO 3
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @3 GOTO 5
  IF ~  Global("NeurikQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 6
  IF ~  GlobalGT("NeurikQuest","GLOBAL",0)~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 9
  IF ~~ THEN REPLY @30 GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY @31
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY @32
  IF ~~ THEN REPLY @18 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @7 GOTO 20
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 16 // from: 14.5
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 16.1
  SAY @38
  IF ~~ THEN REPLY @34 GOTO 18
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @7 GOTO 20
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 14.1
  SAY @39
  IF ~~ THEN REPLY @35 GOTO 19
  IF ~~ THEN REPLY @7 GOTO 20
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 19 // from: 14.2
  SAY @40
  IF ~~ THEN REPLY @7 GOTO 20
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 20 // from: 14.3
  SAY @41
  IF ~~ THEN REPLY @24 GOTO 14
  IF ~~ THEN REPLY @8 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 14.4
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY @47
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 22 // from: 15.2
  SAY @48
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 23 // from: 15.3
  SAY @49
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 24 // from: 15.4
  SAY @50
  IF ~~ THEN REPLY @43 GOTO 21
  IF ~~ THEN REPLY @44 GOTO 22
  IF ~~ THEN REPLY @45 GOTO 23
  IF ~~ THEN REPLY @4 GOTO 7
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NeurikQuest","GLOBAL",3)GlobalLT("NeurikQuest","GLOBAL",7)~ THEN BEGIN 27 // from:
  SAY @51
  IF ~  GlobalLT("NeurikQuest","GLOBAL",6)~ THEN REPLY @52 GOTO 48
  IF ~  !InMyArea("Alhelor1")~ THEN REPLY @53 GOTO 49
  IF ~  !InMyArea("Alhelor1")~ THEN REPLY @54 GOTO 47
  IF ~~ THEN REPLY @4 GOTO 7
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NeurikQuest","GLOBAL",6)GlobalLT("NeurikQuest","GLOBAL",10)!Dead("NWALHELR")!Dead("Alhelor1")Global("TalkAboutAlhelor","LOCALS",0)~ THEN BEGIN 28 // from:
  SAY @55
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 29
  IF ~~ THEN REPLY @56 GOTO 31
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @59 GOTO 47
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @60
  IF ~~ THEN REPLY @56 GOTO 31
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY @15
  IF ~~ THEN REPLY @56 GOTO 31
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY @61
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 29
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 33 // from: 28.5
  SAY @62
  IF ~  NumTimesTalkedTo(0)~ THEN REPLY @1 GOTO 29
  IF ~~ THEN REPLY @56 GOTO 31
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 32 // from: 28.4
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 34
  IF ~~ THEN REPLY @65 GOTO 34
  IF ~~ THEN REPLY @66 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 32
  SAY @67
  IF ~~ THEN DO ~SetGlobal("TalkAboutAlhelor","LOCALS",1)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NeurikQuest","GLOBAL",6)GlobalLT("NeurikQuest","GLOBAL",10)!Dead("NWALHELR")!Dead("Alhelor1")Global("TalkAboutAlhelor","LOCALS",1)~ THEN BEGIN 35 // from:
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 47
  IF ~~ THEN REPLY @70 EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NeurikQuest","GLOBAL",6)Dead("NWALHELR")~ THEN BEGIN 36 // from:
  SAY @71
  IF ~~ THEN REPLY @72 GOTO 37
  IF ~~ THEN REPLY @73 GOTO 38
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY @74
  IF ~~ THEN REPLY @73 GOTO 38
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY @75
  IF ~~ THEN REPLY @76 GOTO 39
  IF ~~ THEN REPLY @77 GOTO 40
  IF ~~ THEN REPLY @78 GOTO 41
  IF ~~ THEN REPLY @79 GOTO 42
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @80
  IF ~~ THEN REPLY @81 GOTO 43
  IF ~~ THEN REPLY @82 GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY @83
  IF ~~ THEN REPLY @81 GOTO 43
  IF ~~ THEN REPLY @82 GOTO 44
  IF ~~ THEN REPLY @84 GOTO 42
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY @85
  IF ~~ THEN REPLY @76 GOTO 39
  IF ~~ THEN REPLY @77 GOTO 40
  IF ~~ THEN REPLY @86 GOTO 45
  IF ~~ THEN REPLY @79 GOTO 42
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY @87
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.1
  SAY @88
  IF ~~ THEN DO ~SetGlobal("AnderIsMerchant","GLOBAL",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 39.2
  SAY @89
  IF ~~ THEN DO ~SetGlobal("AnderIsMerchant","GLOBAL",2)TakePartyGold(300)ReputationInc(1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.3
  SAY @90
  IF ~~ THEN DO ~GiveGoldForce(300)ReputationInc(-1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 28.1
  SAY @91
  IF ~~ THEN DO ~StartStore("NWALHELR",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 27.1
  SAY @41
  IF ~  !InMyArea("Alhelor1")~ THEN REPLY @53 GOTO 49
  IF ~  !InMyArea("Alhelor1")~ THEN REPLY @54 GOTO 47
  IF ~~ THEN REPLY @4 GOTO 7
END

IF ~~ THEN BEGIN 49 // from: 27.2
  SAY @92
  IF ~  GlobalLT("NeurikQuest","GLOBAL",6)~ THEN REPLY @52 GOTO 48
  IF ~  !InMyArea("Alhelor1")~ THEN REPLY @54 GOTO 47
  IF ~~ THEN REPLY @4 GOTO 7
END
