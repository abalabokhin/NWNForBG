// Маска лунного камня 3 этаж Танит   Куртизан   Этот мужчина безразлично осматривает комнату и терпеливо ждет своего следующего клиента.

BEGIN ~TANIT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",0)Global("TanitTired","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY @7 GOTO 47
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @9
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY @7 GOTO 47
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @10
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY @6 GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY @7 GOTO 47
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
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY @16 GOTO 48
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 47 // from: 1.1
  SAY @19
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY @16 GOTO 48
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
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 39
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 39 // from: 8.6
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 23
  IF ~  RandomNum(2,1)~ THEN REPLY @34 GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY @34 GOTO 25
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 40
  IF ~~ THEN REPLY @37 GOTO 41
  IF ~~ THEN REPLY @38 GOTO 42
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 48 // from: 5.4
  SAY @39
  IF ~~ THEN REPLY @36 GOTO 40
  IF ~~ THEN REPLY @37 GOTO 41
  IF ~~ THEN REPLY @38 GOTO 42
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 40 // from: 10.1
  SAY @40
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",3)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 10.2
  SAY @41
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 10.3
  SAY @42
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TanitTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY @43
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY @44
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 26
  IF ~~ THEN REPLY @47 GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY @50
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
  SAY @51
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY @16 GOTO 48
  IF ~  RandomNum(2,2)~ THEN REPLY @16 GOTO 11
  IF ~~ THEN REPLY @17 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY @52
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 39
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY @53
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY @54
  IF ~~ THEN REPLY @29 GOTO 20
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 GOTO 18
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 39
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY @55
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 GOTO 18
  IF ~~ THEN REPLY @28 GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @30 GOTO 21
  IF ~  CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @30 GOTO 39
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 33
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY @58
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 38
  IF ~  RandomNum(2,1)~ THEN REPLY @34 GOTO 24
  IF ~  RandomNum(2,2)~ THEN REPLY @34 GOTO 25
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY @61
  IF ~~ THEN REPLY @33 GOTO 23
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 9.3
  SAY @53
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)SetGlobalTimer("Angry","LOCALS",2400)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY @62
  IF ~~ THEN REPLY @13 GOTO 7
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY @16 GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY @16 GOTO 48
  IF ~  RandomNum(2,2)~ THEN REPLY @63 GOTO 11
  IF ~~ THEN REPLY @64 GOTO 12
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY @65
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.1
  SAY @66
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY @67
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 30 // from: 15.3
  SAY @68
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY @69
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 32 // from: 15.5
  SAY @70
  IF ~~ THEN REPLY @22 GOTO 14
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY @71
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("GotAngry","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.1
  SAY @72
  IF ~~ THEN REPLY @34 GOTO 24
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @18 GOTO 13
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)~ THEN BEGIN 34 // from:
  SAY @73
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",1)~ THEN BEGIN 34 // from:
  SAY @74
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)Global("GotAngry","LOCALS",0)GlobalGT("TanitTired","MYAREA",0)~ THEN BEGIN 35 // from:
  SAY @75
  IF ~  IsGabber(Player1)~ THEN GOTO 43
  IF ~  !IsGabber(Player1)~ THEN GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY @76
  IF ~~ THEN REPLY @77 GOTO 44
  IF ~~ THEN REPLY @78 GOTO 45
  IF ~~ THEN REPLY @79 GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY @80
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.2
  SAY @81
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY @82
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from: 35.1
  SAY @83
  IF ~  IsGabber(Player1)~ THEN REPLY @77 GOTO 44
  IF ~  !IsGabber(Player1)~ THEN REPLY @77 GOTO 50
  IF ~~ THEN REPLY @78 GOTO 45
  IF ~~ THEN REPLY @79 GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 43.1
  SAY @84
  IF ~~ THEN EXIT
END

