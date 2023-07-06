// Гнездо нищих Храм Хельма Бертран   Ищет брата Этот человек сильно взволнован. Он все время оглядывает улицу, очевидно, кого-то ищет.

BEGIN ~BERTRAN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("QuestBroken","LOCALS",0)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY @15
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY @16
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @6 GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY @21
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY @22
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY @23
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @24
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @25
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @26 GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY @26 GOTO 15
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY @31
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @26 GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),16,CHR)~ THEN REPLY @26 GOTO 15
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY @32
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY @33 GOTO 21
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @30 GOTO 20
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY @35
  IF ~  PartyHasItem("MarcusJ")CheckStatGT(LastTalkedToBy(Myself),12,CHR)~ THEN REPLY @27 DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ GOTO 16
  IF ~  PartyHasItem("MarcusJ")CheckStatLT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY @27 GOTO 17
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY @36
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @37 GOTO 18
  IF ~~ THEN REPLY @38 GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 12.4
  SAY @39
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @28 GOTO 18
  IF ~~ THEN REPLY @29 GOTO 19
  IF ~~ THEN REPLY @30 GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 12.5
  SAY @40
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @42 GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 12.6
  SAY @43
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.7
  SAY @44
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.1
  SAY @45
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @37 GOTO 18
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY @46 GOTO 28
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 14.2
  SAY @48
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY @49 GOTO 28
  IF ~  PartyHasItem("MarcusJ")~ THEN REPLY @50 GOTO 27
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @51 GOTO 25
  IF ~  PartyHasItem("MarcusS")~ THEN REPLY @52 GOTO 24
  IF ~~ THEN REPLY @47 GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 16.1
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 22.4
  SAY @54
  IF ~~ THEN REPLY @55 GOTO 29
  IF ~~ THEN REPLY @56 GOTO 30
END

IF ~~ THEN BEGIN 25 // from: 18.2 22.3
  SAY @57
  IF ~~ THEN DO ~TakePartyItem("MarcusS")DestroyItem("MarcusS")AddexperienceParty(50000)SetGlobal("Staff","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY @58
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 31
  IF ~~ THEN REPLY @61 GOTO 32
END

IF ~~ THEN BEGIN 28 // from: 21.1
  SAY @62
  IF ~~ THEN DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")AddexperienceParty(20000)SetGlobal("Journal","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.1
  SAY @63
  IF ~~ THEN DO ~TakePartyItem("MarcusS")DestroyItem("MarcusS")GiveGoldForce(600)AddexperienceParty(20000)SetGlobal("Staff","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.2
  SAY @64
  IF ~~ THEN REPLY @55 GOTO 29
  IF ~~ THEN REPLY @65 GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 27.1
  SAY @63
  IF ~~ THEN DO ~TakePartyItem("MarcusJ")DestroyItem("MarcusJ")GiveGoldForce(400)SetGlobal("Journal","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY @66
  IF ~~ THEN REPLY @60 GOTO 31
  IF ~~ THEN REPLY @65 GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY @67
  IF ~~ THEN DO ~SetGlobal("QuestBroken","LOCALS",1)~ EXIT
END

// -------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)~ THEN BEGIN 34 // from:
  SAY @68
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @19 GOTO 12
  IF ~  Global("KnowMarcus","GLOBAL",1)~ THEN REPLY @20 GOTO 13
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)OR(2)Global("Journal","LOCALS",0)Global("Staff","LOCALS",0)OR(2)!Global("Journal","LOCALS",0)!Global("Staff","LOCALS",0)~ THEN BEGIN 35 // from:
  SAY @69
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY @33 GOTO 21
  IF ~  OR(2)PartyHasItem("MarcusJ")PartyHasItem("MarcusS")~ THEN REPLY @34 GOTO 22
  IF ~~ THEN REPLY @3 GOTO 3
END

// -------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",0)!Global("Journal","LOCALS",0)!Global("Staff","LOCALS",0)~ THEN BEGIN 36 // from:
  SAY @70
  IF ~~ THEN EXIT
END

// -------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("QuestBroken","LOCALS",1)~ THEN BEGIN 37 // from:
  SAY @71
  IF ~~ THEN EXIT
END

