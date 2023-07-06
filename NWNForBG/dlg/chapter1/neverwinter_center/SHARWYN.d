// Центр Невервинтера Ярмарка Мечей   Шервин  Человек   Бард   Высокомерный взгляд и вызывающая поза этой очаровательной юной бардессы просто не позволяют не заметить ее.

BEGIN ~SHARWYN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("SharwynReleased","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 6
  IF ~  !Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 7
  IF ~  Gender(Player1,MALE)OR(3)Race(Player1,HUMAN)Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN REPLY @8 GOTO 8
  IF ~ Gender(Player1,FEMALE)OR(3)Race(Player1,HUMAN)Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN REPLY @8 GOTO 9
  IF ~ !Race(Player1,HUMAN)!Race(Player1,ELF)!Race(Player1,HALF_ELF)~ THEN REPLY @8 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 1
  IF ~~ THEN REPLY @12 GOTO 11
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @13
  IF ~  IsGabber(Player1)~ THEN REPLY @14 GOTO 1
  IF ~~ THEN REPLY @15 GOTO 11
  IF ~~ THEN REPLY @16 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @18
  IF ~  Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 6
  IF ~  !Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 7
  IF ~  Gender(Player1,MALE)OR(3)Race(Player1,HUMAN)Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN REPLY @8 GOTO 8
  IF ~ Gender(Player1,FEMALE)~ THEN REPLY @8 GOTO 9
  IF ~ !Race(Player1,HUMAN)!Race(Player1,ELF)!Race(Player1,HALF_ELF)~ THEN REPLY @8 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 1.3 6
  SAY @20
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @21
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 6
  IF ~  !Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY @22
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 6
  IF ~  !Class(LastTalkedToBy(Myself),BARD)~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 1.7
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY @27
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.3
  SAY @28
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY @32
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY @33
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 18
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @38 GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY @39
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @40
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY @41
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 17
  IF ~~ THEN REPLY @44 GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 20 21
  SAY @45
  IF ~  PartyGoldGT(749)~ THEN REPLY @46 GOTO 23
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @47 GOTO 24
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @47 GOTO 25
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @44 GOTO 4
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @49
  IF ~~ THEN DO ~TakePartyGold(750)DestroyGold(750)SetGlobal("SharwynReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @50
  IF ~~ THEN DO ~TakePartyGold(600)DestroyGold(600)SetGlobal("SharwynReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @51
  IF ~  PartyGoldGT(749)~ THEN REPLY @46 GOTO 23
  IF ~~ THEN REPLY @48 GOTO 26
  IF ~~ THEN REPLY @44 GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 22.4
  SAY @52
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("SharwynReleased","GLOBAL",0)~ THEN BEGIN 27 // from:
  SAY @53
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 27.3
  SAY @55
  IF ~~ THEN REPLY @30 GOTO 16
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @31 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 4
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 29 // from:
  SAY @56
  IF ~~ THEN REPLY @57 GOTO 30
  IF ~~ THEN REPLY @58 GOTO 31
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @60
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 29.2
  SAY @61
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.3
  SAY @62
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30 31
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 34
  IF ~~ THEN REPLY @65 GOTO 34
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.1 33.2
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 35
  IF ~~ THEN REPLY @68 GOTO 36
  IF ~~ THEN REPLY @69 GOTO 32
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @70
  IF ~~ THEN REPLY @71 GOTO 37
  IF ~~ THEN REPLY @68 GOTO 36
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY @72
  IF ~~ THEN DO ~SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY @73
  IF ~~ THEN REPLY @68 GOTO 36
  IF ~~ THEN REPLY @59 GOTO 32
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 39
  IF ~~ THEN REPLY @76 GOTO 35
  IF ~~ THEN REPLY @77 GOTO 40
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY @78
  IF ~~ THEN REPLY @76 GOTO 35
  IF ~~ THEN REPLY @77 GOTO 40
  IF ~~ THEN REPLY @59 GOTO 32
END

IF ~~ THEN BEGIN 40 // from: 38.3
  SAY @79
  IF ~~ THEN REPLY @80 GOTO 41
  IF ~~ THEN REPLY @81 GOTO 32
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @82
  IF ~~ THEN DO ~SetGlobal("SharwynReleased","GLOBAL",2)JoinParty()~ EXIT
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",0)~ THEN BEGIN 42 // from:
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 43
  IF ~~ THEN REPLY @85 GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY @86
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 42.2
  SAY @87
  IF ~~ THEN REPLY @75 GOTO 39
  IF ~~ THEN REPLY @59 GOTO 32
END

// --------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("SharwynReleased","GLOBAL",0)~ THEN BEGIN 45 // from:
  SAY @74
  IF ~~ THEN REPLY @75 GOTO 39
  IF ~~ THEN REPLY @76 GOTO 35
  IF ~~ THEN REPLY @77 GOTO 40
  IF ~~ THEN REPLY @59 GOTO 32
END

