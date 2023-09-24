// Центр Невервинтера Ярмарка Мечей   Даэлан Красный Тигр  Полуорк   Варвар   Этот внушительный полуорк-варвар одет в цвета утгардтского племени Красного Тигра. В его взгляде есть что-то благородное, что выгодно отличает его от остальных представителей этой расы.

BEGIN ~NWDAELAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  !Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY @5 GOTO 4
  IF ~  Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9
  IF ~  !Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY @5 GOTO 4
  IF ~  Kit(LastTalkedToBy(Myself),BARBARIAN)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 8
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @17
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY @19
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 17
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY @22
  IF ~  PartyGoldGT(849)~ THEN REPLY @23 GOTO 13
  IF ~  PartyGoldGT(599)CheckStatGT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY @24 GOTO 14
  IF ~  PartyGoldGT(599)CheckStatLT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @27
  IF ~~ THEN DO ~TakePartyGold(850)DestroyGold(850)SetGlobal("DaelanReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @28
  IF ~~ THEN DO ~TakePartyGold(600)DestroyGold(600)SetGlobal("DaelanReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3
  SAY @29
  IF ~  PartyGoldGT(849)~ THEN REPLY @23 GOTO 13
  IF ~~ THEN REPLY @25 GOTO 16
  IF ~~ THEN REPLY @26 GOTO 2
END

IF ~~ THEN BEGIN 16 // from: 12.4
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.1
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 18
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY @33
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY @34
  IF ~~ THEN REPLY @35 GOTO 7
  IF ~~ THEN REPLY @36 GOTO 2
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 20 // from:
  SAY @37
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @38 GOTO 21
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY @39
  IF ~~ THEN REPLY @21 GOTO 17
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 22 // from:
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 23
  IF ~~ THEN REPLY @42 GOTO 24
  IF ~~ THEN REPLY @26 GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @43
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @44
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY @45
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 27
  IF ~~ THEN REPLY @48 GOTO 27
  IF ~~ THEN REPLY @26 GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 28
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @52 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY @53
  IF ~~ THEN REPLY @54 GOTO 31
  IF ~~ THEN REPLY @55 GOTO 31
  IF ~~ THEN REPLY @26 GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 27.2
  SAY @56
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.3
  SAY @57
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2
  SAY @58
  IF ~~ THEN REPLY @51 GOTO 29
  IF ~~ THEN REPLY @52 GOTO 30
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",1)~ THEN BEGIN 32 // from:
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @61 GOTO 28
  IF ~~ THEN REPLY @62 GOTO 34
  IF ~~ THEN REPLY @26 GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY @63
  IF ~~ THEN REPLY @61 GOTO 28
  IF ~~ THEN REPLY @62 GOTO 34
  IF ~~ THEN REPLY @26 GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.3
  SAY @64
  IF ~~ THEN REPLY @65 GOTO 35
  IF ~~ THEN REPLY @26 GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY @66
  IF ~~ THEN DO ~SetGlobal("DaelanReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2
  SAY @67
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

// --------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 37 // from:
  SAY @68
  IF ~~ THEN REPLY @69 GOTO 38
  IF ~~ THEN REPLY @70 GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @71
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.2
  SAY @72
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @26 GOTO 30
END

// --------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("DaelanReleased","GLOBAL",0)~ THEN BEGIN 40 // from:
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @61 GOTO 28
  IF ~~ THEN REPLY @62 GOTO 34
  IF ~~ THEN REPLY @26 GOTO 30
END

