// Центр Невервинтера Ярмарка Мечей   Боддинок Глинкл Гном  Этот карлик-чародей все время морщит лоб, как будто с предельным вниманием изучает окружающий мир осторожным глубокомысленным взором.

BEGIN ~NWBODDIK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("BoddinokReleased","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN REPLY @5 GOTO 4
  IF ~  !Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~  Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN REPLY @5 GOTO 4
  IF ~  !Class(LastTalkedToBy(Myself),MAGE_ALL)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @12
  IF ~~ THEN REPLY @6 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 3.4
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
  IF ~~ THEN REPLY @15 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @16
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @17
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @18
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @21
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 15
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @24
  IF ~  PartyGoldGT(749)~ THEN REPLY @25 GOTO 17
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @26 GOTO 18
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @26 GOTO 19
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY @29
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 7
  IF ~~ THEN REPLY @32 GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY @33
  IF ~~ THEN DO ~TakePartyGold(750)DestroyGold(750)SetGlobal("BoddinokReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY @34
  IF ~~ THEN DO ~TakePartyGold(600)DestroyGold(600)SetGlobal("BoddinokReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY @35
  IF ~  PartyGoldGT(749)~ THEN REPLY @25 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 20
  IF ~~ THEN REPLY @28 GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 14.4
  SAY @36
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("BoddinokReleased","GLOBAL",0)~ THEN BEGIN 21 // from:
  SAY @37
  IF ~~ THEN REPLY @38 GOTO 1
  IF ~~ THEN REPLY @39 GOTO 22
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @40
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @38 GOTO 1
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("BoddinokReleased","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @43 GOTO 25
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @44
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.2
  SAY @45
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 23.3
  SAY @46
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 25.1
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 28
  IF ~~ THEN REPLY @49 GOTO 28
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY @50
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 30
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 31
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @56
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 33
  IF ~~ THEN REPLY @59 GOTO 34
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @61
  IF ~~ THEN REPLY @59 GOTO 34
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY @62
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @63
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @64 GOTO 26
END

IF ~~ THEN BEGIN 36 // from: 32.3
  SAY @65
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("BoddinokReleased","GLOBAL",2)JoinParty()~ EXIT
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("BoddinokReleased","GLOBAL",1)~ THEN BEGIN 37 // from:
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 38
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @68
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @28 GOTO 26
END

// -----------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("BoddinokReleased","GLOBAL",0)~ THEN BEGIN 39 // from:
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 40
  IF ~~ THEN REPLY @71 GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY @72
  IF ~~ THEN REPLY @73 GOTO 42
  IF ~~ THEN REPLY @74 GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY @75
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY @76
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 40.2
  SAY @77
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 42.1 43.1
  SAY @78
  IF ~~ THEN REPLY @67 GOTO 45
  IF ~~ THEN REPLY @28 GOTO 26
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY @79
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @28 GOTO 26
END

// --------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("BoddinokReleased","GLOBAL",0)~ THEN BEGIN 46 // from:
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 38
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @60 GOTO 36
  IF ~~ THEN REPLY @28 GOTO 26
END

