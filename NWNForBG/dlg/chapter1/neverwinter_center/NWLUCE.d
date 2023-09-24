// Маска лунного камня 3 этаж Люс   Куртизанка     Эта женщина бесстыдно смотрит на вас обнадеживающим взглядом. У нее честное лицо.

BEGIN ~NWLUCE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",0)Global("LuceTired","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 39
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 39
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~  PartyHasItem("NWOPPERT")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("NWOPPERT")!IsGabber(Player1)~ THEN REPLY @7 GOTO 39
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)IsGabber(Player1)~ THEN REPLY @16 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY @16 GOTO 40
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 39 // from: 1.1
  SAY @19
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)IsGabber(Player1)~ THEN REPLY @16 GOTO 11
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY @16 GOTO 40
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY @26
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 GOTO 18
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~  RandomNum(2,1)~ THEN REPLY @33 GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY @33 GOTO 25
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @34
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("LuceTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.4
  SAY @35
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("LuceTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY @36
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY @37
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 26
  IF ~~ THEN REPLY @40 GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @43
  IF ~  Class(Player1,THIEF)~ THEN GOTO 28
  IF ~  OR(2)Class(Player1,DRUID)Class(Player1,RANGER)~ THEN GOTO 29
  IF ~  OR(3)Class(Player1,CLERIC)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN GOTO 30
  IF ~  OR(2)Class(Player1,MAGE)Class(Player1,BARD)~ THEN GOTO 31
  IF ~  Class(Player1,FIGHTER)~ THEN GOTO 32
  IF ~  !Class(Player1,THIEF)
!Class(Player1,DRUID)
!Class(Player1,RANGER)
!Class(Player1,CLERIC)!Class(Player1,PALADIN)!Class(Player1,MONK)!Class(Player1,MAGE)!Class(Player1,BARD)!Class(Player1,FIGHTER)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 7.4
  SAY @44
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  RandomNum(2,2)IsGabber(Player1)~ THEN REPLY @16 GOTO 11
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY @16 GOTO 40
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY @45
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY @46
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY @47
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 GOTO 18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY @48
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 GOTO 18
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 18
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 33
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY @51
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY @52
  IF ~  IsGabber(Player1)~ THEN REPLY @53 GOTO 38
  IF ~  !IsGabber(Player1)~ THEN REPLY @53 GOTO 41
  IF ~  RandomNum(2,1)~ THEN REPLY @33 GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY @33 GOTO 25
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY @54
  IF ~~ THEN REPLY @32 GOTO 23
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 9.3
  SAY @46
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY @55
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  RandomNum(2,2)IsGabber(Player1)~ THEN REPLY @16 GOTO 11
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY @16 GOTO 40
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY @56
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @57
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY @58
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 15.3
  SAY @59
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY @60
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 15.5
  SAY @61
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY @62
  IF ~~ THEN DO ~TakePartyItem("NWOPPERT")DestroyItem("NWOPPERT")SetGlobal("GotAngry","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.1
  SAY @63
  IF ~~ THEN REPLY @33 GOTO 24
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 41 // from: 23.1
  SAY @64
  IF ~~ THEN REPLY @33 GOTO 24
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 34 // from:
  SAY @65
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",1)~ THEN BEGIN 34 // from:
  SAY @66
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",0)Global("LuceTired","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 36
  IF ~~ THEN REPLY @69 GOTO 37
  IF ~~ THEN REPLY @70 GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @71
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY @72
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)Gender(LastTalkedToBy(Myself),MALE)Global("GotAngry","LOCALS",0)Global("LuceTired","MYAREA",2)~ THEN BEGIN 35 // from:
  SAY @73
  IF ~~ THEN REPLY @68 GOTO 42
  IF ~~ THEN REPLY @69 GOTO 37
  IF ~~ THEN REPLY @70 GOTO 18
END

IF ~~ THEN BEGIN 42 // from: 35.1
  SAY @74
  IF ~~ THEN EXIT
END


