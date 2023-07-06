// Чернозкрье  Дом Раздраженная женщина  Эта женщина отвечает вам холодным взглядом, полностью отторгая ваше присутствие. Она явно не намерена с вами разговаривать.  HasItem("Misc07",Myself)   GivePartyGold(243)

BEGIN ~NWNOBW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),11,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @1 GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @2 GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY @8 DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @2 GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 11
  IF ~~ THEN REPLY @13 GOTO 34
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY @14
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @19
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @20 GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @20 GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 22
  IF ~~ THEN REPLY @30 GOTO 14
  IF ~~ THEN REPLY @31 GOTO 23
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.1
  SAY @33
  IF ~~ THEN DO ~GivePartyGold(243)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @36 GOTO 25
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY @37
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 14 // from: 6.3
  SAY @38
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~  Global("RobberyAttempt","LOCALS",0)~ THEN REPLY @8 DO ~SetGlobal("RobberyAttempt","LOCALS",1)~ GOTO 9
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY @39
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY @40
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @20 GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @20 GOTO 26
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 17 // from: 7.3
  SAY @41
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @20 GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @20 GOTO 26
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY @42
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 8.2
  SAY @43
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @26 GOTO 20
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 20 // from: 8.3
  SAY @44
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 21 // from: 1.5
  SAY @45
  IF ~~ THEN REPLY @5 GOTO 6
  IF ~~ THEN REPLY @6 GOTO 7
  IF ~~ THEN REPLY @7 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY @46
  IF ~~ THEN DO ~GivePartyGold(243)SetGlobal("Robbed","LOCALS",1)IncrementGlobal("EvilNW1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.3
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1
  SAY @48
  IF ~~ THEN REPLY @36 GOTO 25
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 25 // from: 12.2
  SAY @49
  IF ~~ THEN REPLY @35 GOTO 24
  IF ~~ THEN REPLY @17 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 26 // from: 7.2
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 28
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @52 GOTO 29
  IF ~  Gender(LastTalkedToBy(Myself),MALE)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @52 GOTO 30
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 27 // from: 7.4
  SAY @53
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @20 GOTO 15
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @20 GOTO 26
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY @54
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY @55
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY @56
  IF ~  OR(2)GlobalGT("FormosaQuest","GLOBAL",1)Dead("Formosa")~ THEN REPLY @21 GOTO 16
  IF ~  GlobalLT("FormosaQuest","GLOBAL",2)!Dead("Formosa")~ THEN REPLY @21 GOTO 27
  IF ~~ THEN REPLY @22 GOTO 17
  IF ~~ THEN REPLY @18 GOTO 14
  IF ~~ THEN REPLY @9 GOTO 10
END

IF ~~ THEN BEGIN 34 // from: 4.2
  SAY @57
  IF ~~ THEN DO ~SetGlobal("Robbed","LOCALS",1)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),12,CHR)Global("Robbed","LOCALS",0)~ THEN BEGIN 31 // from:
  SAY @58
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @1 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @1 GOTO 2
  IF ~  !Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @2 GOTO 3
  IF ~  Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 5
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("Robbed","LOCALS",0)~ THEN BEGIN 32 // from:
  SAY @59
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @60 GOTO 1
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @60 GOTO 2
  IF ~~ THEN REPLY @9 GOTO 10
END

// ----------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Robbed","LOCALS",0)~ THEN BEGIN 33 // from:
  SAY @61
  IF ~~ THEN EXIT
END

