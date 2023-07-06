// Центр Невервинтера Ярмарка Мечей Гримгнау Дварф священник  Есть что-то тревожное в этом дварфе-священнике. Его глаза холодны и пусты, а его мертвенная неподвижность почти неестественна.

BEGIN ~GRIMGNAW~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @5 GOTO 4
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @8
  IF ~  Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @5 GOTO 4
  IF ~  !Class(LastTalkedToBy(Myself),CLERIC_ALL)~ THEN REPLY @5 GOTO 5
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY @10
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY @19
  IF ~  PartyGoldGT(849)~ THEN REPLY @20 GOTO 10
  IF ~  PartyGoldGT(649)Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @21 GOTO 11
  IF ~  PartyGoldGT(649)!Alignment(LastTalkedToBy(Myself),MASK_EVIL)~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @23
  IF ~~ THEN DO ~TakePartyGold(850)DestroyGold(850)SetGlobal("GrimgnawReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY @24
  IF ~~ THEN DO ~TakePartyGold(650)DestroyGold(650)SetGlobal("GrimgnawReleased","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @25
  IF ~  PartyGoldGT(849)~ THEN REPLY @20 GOTO 10
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @26
  IF ~~ THEN EXIT
END

// -----------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)AreaCheck("NW1012")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 1
  IF ~~ THEN REPLY @29 GOTO 15
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY @30
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @15 GOTO 7
  IF ~~ THEN REPLY @2 GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",1)~ THEN BEGIN 16 // from:
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 17
  IF ~~ THEN REPLY @33 GOTO 18
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY @36
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 16.3
  SAY @37
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 21
  IF ~~ THEN REPLY @40 GOTO 21
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.2
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 22
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY @48
  IF ~~ THEN DO ~SetGlobal("Nw2020Talked","LOCALS",1)SetGlobal("GrimgnawReleased","GLOBAL",2)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22
  SAY @49
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY @50
  IF ~~ THEN REPLY @43 GOTO 23
  IF ~~ THEN REPLY @44 GOTO 19
END

// --------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",1)~ THEN BEGIN 26 // from:
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @53 GOTO 22
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY @55
  IF ~~ THEN REPLY @53 GOTO 22
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @34 GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 26.3
  SAY @56
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @57
  IF ~~ THEN REPLY @58 GOTO 23
  IF ~~ THEN REPLY @59 GOTO 19
END

// -----------------------------------------------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",0)AreaCheck("NW2020")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY @60
  IF ~~ THEN REPLY @61 GOTO 31
  IF ~~ THEN REPLY @62 GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY @63
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 30.2 31.1
  SAY @64
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @34 GOTO 19
END

// --------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Nw2020Talked","LOCALS",1)AreaCheck("NW2020")!InParty(Myself)Global("GrimgnawReleased","GLOBAL",0)~ THEN BEGIN 26 // from:
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 27
  IF ~~ THEN REPLY @53 GOTO 22
  IF ~~ THEN REPLY @54 GOTO 28
  IF ~~ THEN REPLY @34 GOTO 19
END

