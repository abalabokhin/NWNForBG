// Центр Невервинтера Ярмарка Мечей   Томи (Висельник) Оскал Полурослик  Этот полурослик осматривается с таким озорным видом, что совершенно ясно: будь у него время и возможность, он бы точно наделал дел.

BEGIN ~NWTOMI~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("NWTomiReleased","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 7
  IF ~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @12
  IF ~~ THEN REPLY @11 GOTO 10
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY @14
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 7
  IF ~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~  Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 7
  IF ~  !Class(LastTalkedToBy(Myself),THIEF_ALL)~ THEN REPLY @8 GOTO 8
  IF ~~ THEN REPLY @9 GOTO 9
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY @17
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 1.5 5.5 7 8
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 11
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1
  SAY @21
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @22
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY @23
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 13.2
  SAY @31
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @34 GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @38
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY @39
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 16.2
  SAY @40
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @41
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @42 GOTO 16
  IF ~~ THEN REPLY @43 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 21 22
  SAY @45
  IF ~  PartyGoldGT(799)~ THEN REPLY @46 GOTO 25
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @47 GOTO 26
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @47 GOTO 27
  IF ~~ THEN REPLY @48 GOTO 28
  IF ~~ THEN REPLY @49 GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @50
  IF ~~ THEN DO ~TakePartyGold(800)DestroyGold(800)SetGlobal("NWTomiReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.2
  SAY @51
  IF ~~ THEN DO ~TakePartyGold(600)DestroyGold(600)SetGlobal("NWTomiReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY @52
  IF ~  PartyGoldGT(799)~ THEN REPLY @46 GOTO 25
  IF ~~ THEN REPLY @48 GOTO 28
  IF ~~ THEN REPLY @49 GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 24.4
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.5
  SAY @54
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("NWTomiReleased","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY @55
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @56 GOTO 31
   IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY @58
  IF ~~ THEN REPLY @1 GOTO 1
   IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @57 GOTO 32
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 30.4
  SAY @59
  IF ~~ THEN REPLY @26 GOTO 15
  IF ~~ THEN REPLY @7 GOTO 6
  IF ~~ THEN REPLY @27 GOTO 16
  IF ~~ THEN REPLY @4 GOTO 4
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("NWTomiReleased","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 34
  IF ~~ THEN REPLY @62 GOTO 35
  IF ~~ THEN REPLY @49 GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY @63
  IF ~~ THEN REPLY @64 GOTO 37
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @49 GOTO 38
END

IF ~~ THEN BEGIN 35 // from: 33.2
  SAY @66
  IF ~~ THEN REPLY @64 GOTO 37
  IF ~~ THEN REPLY @65 GOTO 37
  IF ~~ THEN REPLY @49 GOTO 38
END

IF ~~ THEN BEGIN 36 // from: 33.3
  SAY @67
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.1
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 39
  IF ~~ THEN REPLY @70 GOTO 40
  IF ~~ THEN REPLY @71 GOTO 41
END

IF ~~ THEN BEGIN 38 // from: 34.3
  SAY @72
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @73
  IF ~~ THEN REPLY @74 GOTO 42
  IF ~~ THEN REPLY @70 GOTO 40
  IF ~~ THEN REPLY @71 GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY @75
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("NWTomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.3
  SAY @76
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY @77
  IF ~~ THEN REPLY @70 GOTO 40
  IF ~~ THEN REPLY @71 GOTO 41
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("NWTomiReleased","GLOBAL",1)~ THEN BEGIN 43 // from:
  SAY @78
  IF ~~ THEN REPLY @79 GOTO 44
  IF ~~ THEN REPLY @80 GOTO 39
  IF ~~ THEN REPLY @81 GOTO 45
  IF ~~ THEN REPLY @49 GOTO 36
END

IF ~~ THEN BEGIN 44 // from: 33.1
  SAY @82
  IF ~~ THEN REPLY @80 GOTO 39
  IF ~~ THEN REPLY @81 GOTO 45
  IF ~~ THEN REPLY @49 GOTO 36
END

IF ~~ THEN BEGIN 45 // from: 33.3
  SAY @83
  IF ~~ THEN REPLY @84 GOTO 46
  IF ~~ THEN REPLY @85 GOTO 36
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @86
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("NWTomiReleased","GLOBAL",2)JoinParty()~ EXIT
END

// -----------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("NWTomiReleased","GLOBAL",0)~ THEN BEGIN 47 // from:
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 48
  IF ~~ THEN REPLY @89 GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY @90
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 47.2 48.1
  SAY @91
  IF ~~ THEN REPLY @79 GOTO 44
  IF ~~ THEN REPLY @49 GOTO 36
END

// --------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("NWTomiReleased","GLOBAL",0)~ THEN BEGIN 50 // from:
  SAY @78
  IF ~~ THEN REPLY @79 GOTO 44
  IF ~~ THEN REPLY @80 GOTO 39
  IF ~~ THEN REPLY @81 GOTO 45
  IF ~~ THEN REPLY @49 GOTO 36
END

